# -*- coding: utf-8 -*-
"""Results of the article. Writes article2_results.json.

Effective dose rate of every passenger (Fig. 4; Tables S8-S9), H*(10) at the seats in air and in the empty coach
and H*(10)/E (Fig. S1; Tables S10-S13), trip doses and collective doses (Table 1; Figs. 5 and S2; Tables S14-S15).
The response matrices, the effective dose and the biokinetic model are in postproc_core.py."""
import os, sys, json, numpy as np
from pathlib import Path
_HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(_HERE))
from postproc_core import *
OUTJ=str(_HERE/'article2_results.json')
LAM={n:np.log(2)/D.NUCLIDE_DATA[n]['thalf_h'] for n in NUCS}
def target_organs_s(run,key):
    out=target_organs(run,key)
    T=tallies(run); lab=META[run]['tally_index']['F906']
    sex='AM' if 'AM' in key else 'AF'
    mk='AM_M' if sex=='AM' else 'AM_F'; tk='TM50_M' if sex=='AM' else 'TM50_F'
    V,E=arr(T[906]); org=MASS[key]['organs']; acc={}
    for i,l in enumerate(lab):
        tg,s=l.split(':'); s=int(s); m=org[str(s)]['mass_g']; f=MeV/(m*1e-3)*1e12
        d=V[i]*f; e=V[i]*E[i]*f
        for name,kk in (('RBMs',mk),('BSEs',tk)):
            w=D.SKEL_MASS[s][kk] if s in D.SKEL_MASS else 0.0
            a=acc.setdefault((tg,name),[0,0,0.0]); a[0]=a[0]+w*d; a[1]=a[1]+(w*e)**2; a[2]+=w
    for (tg,name),(a,s2,ws) in acc.items(): out[tg][name]=(a/ws,np.sqrt(s2)/ws)
    return out
def resp(V,S,nuc): a=AN[nuc]; return V@a, np.sqrt((S**2)@(a**2))
w4=weights_from_model(lu_model(4,0.0)); w4n=w4/w4.sum()
R={'E':{},'H':{},'meta':{}}
RESP={}
for ps,(ra,rf) in {'RW':('B04_F_AM_janela','B05_F_AF_janela'),'RA':('B06_F_AM_corredor','B07_F_AF_corredor')}.items():
    am=target_organs_s(ra,'TAMseat'); af=target_organs_s(rf,'TAFseat')
    for tg in am:
        tf=tg.replace('TAM','TAF'); seat=tg.split('_r')[1]
        for meth in ('s','d'):
            dm=dict(am[tg]); df=dict(af[tf])
            if meth=='s':
                for d_ in (dm,df): d_['RBM']=d_['RBMs']; d_['BSE']=d_['BSEs']
            Ev,Es=effective_parts(dm,df)
            for n in NUCS: RESP[(f'E{meth}',ps,seat,n)]=resp(Ev,Es,n)
        for n in NUCS:
            Rs,Ss=RESP[('Es',ps,seat,n)]; v=w4n@Rs*GBQH; s=np.sqrt((w4n**2)@(Ss**2))*GBQH; vd=w4n@RESP[('Ed',ps,seat,n)][0]*GBQH
            R['E'][f'{ps}_{seat}_{n}']=dict(v=v,rel=s/v,drf=vd)
# detectors
for run,cfg in (('B01_DAIR_janela','air_RW'),('B02_D_janela','bus_RW'),('B03_D_corredor','bus_RA')):
    T=tallies(run); lab=META[run]['tally_index']['F304']; V,E=arr(T[304])
    for i,l in enumerate(lab):
        for n in NUCS:
            RESP[('H',cfg,l,n)]=resp(V[i],V[i]*E[i],n)
            v=w4n@RESP[('H',cfg,l,n)][0]*GBQH; s=np.sqrt((w4n**2)@(RESP[('H',cfg,l,n)][1]**2))*GBQH
            R['H'][f'{cfg}_{l}_{n}']=dict(v=v,rel=s/v)
# ---------- print seat tables
def seats(ps): return sorted({k.split('_')[1] for k in R['E'] if k.startswith(ps+'_')}, key=lambda s:-R['E'][f'{ps}_{s}_Lu177']['v'])
for ps in ('RW','RA'):
    print(f'\nPatient seat 3{ps}: E (uSv/h per GBq in body, spongiosa) [DRF/spong for Lu]; H*(10) empty coach seat-mean (h15,h40,h75); H*/E; coach/air (RW only)')
    for s in seats(ps):
        row=''.join(f'{R["E"][f"{ps}_{s}_{n}"]["v"]:8.3f}({R["E"][f"{ps}_{s}_{n}"]["rel"]*100:3.1f}%)' for n in NUCS)
        hb=np.mean([R['H'][f'bus_{ps}_r{s}_h{h}_Lu177']['v'] for h in (15,40,75)])
        h40=R['H'][f'bus_{ps}_r{s}_h40_Lu177']['v']
        extra=''
        if ps=='RW':
            ha=np.mean([R['H'][f'air_RW_r{s}_h{h}_Lu177']['v'] for h in (15,40,75)]); extra=f' coach/air {hb/ha:5.3f}'
        print(f'  {s:4s}'+row+f'  [{R["E"][f"{ps}_{s}_Lu177"]["drf"]/R["E"][f"{ps}_{s}_Lu177"]["v"]:5.3f}]  H*mean {hb:7.3f} h40 {h40:7.3f} H*/E {hb/R["E"][f"{ps}_{s}_Lu177"]["v"]:5.2f}'+extra)
# H*/E for other nuclides at a few seats
for ps in ('RW','RA'):
    for s in seats(ps)[:6]+seats(ps)[-2:]:
        print(f'  H*/E {ps} {s}: '+' '.join(f'{n} {np.mean([R["H"][f"bus_{ps}_r{s}_h{h}_{n}"]["v"] for h in (15,40,75)])/R["E"][f"{ps}_{s}_{n}"]["v"]:5.2f}' for n in NUCS))
# coach/air by nuclide (RW): mean over all seats
for n in NUCS:
    rat=[np.mean([R['H'][f'bus_RW_r{s}_h{h}_{n}']['v'] for h in (15,40,75)])/np.mean([R['H'][f'air_RW_r{s}_h{h}_{n}']['v'] for h in (15,40,75)]) for s in seats('RW')]
    print(f'  coach/air H*(10) {n}: mean {np.mean(rat):5.3f} min {min(rat):5.3f} max {max(rat):5.3f}')
# aisle points
print('Aisle standing points H*(10) per GBq (empty coach, patient RW / RA):')
for l in [x for x in META['B02_D_janela']['tally_index']['F304'] if x.startswith('aisle')]:
    print('  ',l,' '.join(f'{R["H"][f"bus_RW_{l}_{n}"]["v"]:8.3f}' for n in NUCS),' | RA ',' '.join(f'{R["H"][f"bus_RA_{l}_{n}"]["v"]:8.3f}' for n in NUCS))
# ---------- trips
def wt(t,tv,nuc):
    def wb_dc(x): return lu_model(x)['WB']*np.exp(LAM['Lu177']*x)
    def ec(x): return 0.0 if x<=0 else max(0.0,100.0-wb_dc(x))
    B=np.exp(-LAM['Lu177']*t)*(ec(t)-ec(tv))
    m=lu_model(max(t,0.5),B)
    if m['REM']<0: m['REM']=0.0
    return weights_from_model(m)*np.exp(-(LAM[nuc]-LAM['Lu177'])*t)
A0={'Lu177':7.4,'Tb161':7.4,'Pb212':0.2,'Ac225':0.008}
def trip(key,nuc,t0,dur,void_every=None):
    ts=np.linspace(t0,t0+dur,int(dur*8)+1); tv=t0; ys=[]
    for t in ts:
        if void_every and t-tv>=void_every-1e-9: tv=t
        ys.append(wt(t,tv,nuc)@RESP[key][0])
    return np.trapezoid(ys,ts)*GBQH*A0[nuc]
TR={}
print('\nTrip doses (uSv), typical activities, patient voids at departure, no void during trip:')
for ps in ('RW','RA'):
    top=seats(ps)[0]; sec=seats(ps)[1]
    allseats=seats(ps)
    for n in NUCS:
        for t0 in (4.0,24.0):
            for dur in (1.0,2.0,4.0,8.0):
                d1=trip(('Es',ps,top,n),n,t0,dur); d2=trip(('Es',ps,sec,n),n,t0,dur)
                coll=sum(trip(('Es',ps,s,n),n,t0,dur) for s in allseats) if dur==2.0 else None
                TR[f'{ps}_{n}_{t0:g}_{dur:g}']=dict(top=d1,top_seat=top,second=d2,second_seat=sec,collective=coll)
        print(f'  patient {ps}, {n}: most exposed seat {top}: ' + '  '.join(f't0={t0:g}h: '+','.join(f'{TR[f"{ps}_{n}_{t0:g}_{d:g}"]["top"]:.2f}' for d in (1,2,4,8)) for t0 in (4.0,24.0))
              + f' | 2 h from 4 h: 2nd seat {sec} {TR[f"{ps}_{n}_4_2"]["second"]:.2f}, collective 19 seats {TR[f"{ps}_{n}_4_2"]["collective"]:.1f} uSv')
# bladder effect: 8-h trip with vs without bladder (void at departure only) for Lu
for ps in ('RW',):
    top=seats(ps)[0]
    a=trip(('Es',ps,top,'Lu177'),'Lu177',4.0,8.0); 
    def trip_nb(key,nuc,t0,dur):
        ts=np.linspace(t0,t0+dur,65); ys=[]
        for t in ts:
            m=lu_model(t,0.0); w=weights_from_model(m)*np.exp(-(LAM[nuc]-LAM['Lu177'])*t); ys.append(w@RESP[key][0])
        return np.trapezoid(ys,ts)*GBQH*A0[nuc]
    b=trip_nb(('Es',ps,top,'Lu177'),'Lu177',4.0,8.0)
    print(f'  8-h trip from 4 h, Lu, seat {top}: with bladder filling {a:.1f} uSv, bladder empty {b:.1f} uSv (+{(a/b-1)*100:.0f}%)')
R['trips']=TR
# ---------- sum over the 19 seats (Tables S8 and S9) and Table 1 of the article, with the same functions
print('\nEffective dose rate (uSv/h per GBq in the body): sum over the 19 seats (Tables S8 and S9)')
for ps in ('RW','RA'):
    print(f'  patient 3{ps}: sum of 19 seats ' + ' '.join(f'{n} {sum(R["E"][f"{ps}_{s}_{n}"]["v"] for s in seats(ps)):8.3g}' for n in NUCS))
# Table 1: most exposed passenger = seat with the highest trip dose for each radionuclide (maximum over the 19 seats)
print('\nTable 1: trip dose (uSv) to the most exposed passenger, maximum over the 19 seats; typical activities')
T2={}
for n in NUCS:
    for t0 in (4.0,24.0):
        for ps in ('RW','RA'):
            row={}
            for dur in (1.0,2.0,4.0,8.0):
                v,s=max((trip(('Es',ps,s,n),n,t0,dur),s) for s in seats(ps)); row[f'{dur:g}h']=dict(dose=v,seat=s)
            T2[f'{ps}_{n}_{t0:g}']=row
        print(f'  {n} departure {t0:4.0f} h: ' + '  '.join(f'{d:g} h {T2[f"RW_{n}_{t0:g}"][f"{d:g}h"]["dose"]:7.3g} ({T2[f"RA_{n}_{t0:g}"][f"{d:g}h"]["dose"]:.3g})' for d in (1,2,4,8))
              + ('' if t0>4 else f'   collective 2 h: {TR[f"RW_{n}_4_2"]["collective"]:.3g} ({TR[f"RA_{n}_4_2"]["collective"]:.3g}) person-uSv'))
R['table2_most_exposed']=T2      # key name kept from an earlier numbering of the tables; it holds Table 1
json.dump(R,open(OUTJ,'w'),default=float)
