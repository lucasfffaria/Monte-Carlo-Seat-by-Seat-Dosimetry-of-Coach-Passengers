# -*- coding: utf-8 -*-
"""Post-processing core (energy-resolved, region-tagged patient source).

Reads the MCTAL files of the runs, builds the response matrices R(region, energy) per emitted photon, folds
them with the photon emissions of each radionuclide, computes organ doses and the sex-averaged effective dose
of the exposed phantoms (ICRP 103), and implements the reference [177Lu]Lu-PSMA-617 biokinetic model used for
the source distribution in the patient."""
import json, os, sys, numpy as np
_HERE = os.path.dirname(os.path.abspath(__file__))
# paths.py and data.py (emission data, ICRP 74/116 coefficients, source regions) are in ../4_model
sys.path.insert(0, os.path.join(os.path.dirname(_HERE), '4_model')); sys.path.insert(0, _HERE)
import paths
from mctal import read_mctal
import data as D
META=json.load(open(paths.RUN_METADATA,encoding='utf-8')); MASS=json.load(open(paths.PHANTOM_MASSES,encoding='utf-8'))
EG=np.array(D.EGRID); PE,_=D.sampling_probabilities(); NREG=24; NE=len(EG)
REG=[r[0] for r in D.REGIONS]
MeV=1.602176634e-13
WT={'GON':0.08,'RBM':0.12,'COL':0.12,'LUN':0.12,'STW':0.12,'BRE':0.12,'REM':0.12,'UBW':0.04,'OES':0.04,
    'LIV':0.04,'THY':0.04,'BSE':0.01,'BRA':0.01,'SAL':0.01,'SKI':0.01}
REM=['ADR','ETR','GBW','HTW','KID','LYN','MUS','ORM','PAN','PRU','SIW','SPL','THM']
_cache={}
def tallies(run):
    if run not in _cache: _cache[run]=read_mctal(paths.mctal(run))['tallies']
    return _cache[run]
def arr(t):
    """-> V[bin,region,E] per photon emitted at grid energy E in region r ; relative errors same shape"""
    d=t['dims']; shp=[d[k] for k in 'fdusmcet']
    v=t['vals'][:,0].reshape(shp); e=t['vals'][:,1].reshape(shp)
    v=v[:,0,:NE,0,0,0,0,:NREG]; e=e[:,0,:NE,0,0,0,0,:NREG]
    v=v/(PE[None,:,None]*(1.0/NREG))
    return np.transpose(v,(0,2,1)),np.transpose(e,(0,2,1))
def line_matrix(nuc):
    """photons per parent decay mapped on the grid (linear-in-log-E weights) -> a[E]"""
    a=np.zeros(NE)
    for e,y in D.nuclide_lines(nuc):
        for k,w in D.grid_weights(e).items(): a[k]+=y*w
    return a
NUCS=['Lu177','Tb161','Pb212','Ac225']
AN={n:line_matrix(n) for n in NUCS}
def fold(V,S,nuc,w):
    """V,S: [...,region,E] value and abs. error; w: region weights (fraction of activity);
    returns value per decay and abs. error (bins independent)"""
    a=AN[nuc]
    val=np.einsum('...re,r,e->...',V,w,a)
    var=np.einsum('...re,r,e->...',S**2,w**2,a**2)
    return val,np.sqrt(var)
# ---------------- organ doses / effective dose for exposed phantoms
def target_organs(run,key):
    """{target: {tissue: (V[region,E] pGy per photon, abs.err)}} incl. RBM/BSE (DRF) and RBMs/BSEs (spongiosa)"""
    T=tallies(run); lab=META[run]['tally_index']['F6']
    sex='AM' if 'AM' in key else 'AF'
    V,E=arr(T[6]); out={}
    for i,l in enumerate(lab):
        tg,tag=l.split(':'); mg=MASS[key]['tissues'][tag]['mass_g']
        f=MeV/(mg*1e-3)*1e12
        out.setdefault(tg,{})[tag]=(V[i]*f,V[i]*E[i]*f)
    mk='AM_M' if sex=='AM' else 'AM_F'; tk='TM50_M' if sex=='AM' else 'TM50_F'
    rb=[s for s in D.SPONGIOSA if (s,'AM') in D.DRF]
    tm=[s for s in sorted(set(D.SPONGIOSA+D.MEDULLARY)) if (s,'TM50') in D.DRF]
    for name,sites,base,kk in (('RBM',rb,104,mk),('BSE',tm,404,tk)):
        acc={}; ws=0
        for q,s in enumerate(sites):
            t=T.get(base+10*q)
            if t is None: continue
            vv,ee=arr(t); tgts=META[run]['tally_index'][f'F{base+10*q}'][2]; w=D.SKEL_MASS[s][kk]; ws+=w
            for j,tg in enumerate(tgts):
                a=acc.setdefault(tg,[0,0]); a[0]=a[0]+w*vv[j]; a[1]=a[1]+(w*vv[j]*ee[j])**2
        for tg,(a,s2) in acc.items(): out[tg][name]=(a/ws,np.sqrt(s2)/ws)
    return out
def effective_parts(dm,df):
    """sex-averaged effective dose per photon [region,E] and conservative abs. error (organs fully correlated)"""
    E=0; S=0
    for t,w in WT.items():
        items=[(x,w/len(REM)) for x in REM] if t=='REM' else [(t,w)]
        for x,ww in items:
            for d in (dm,df):
                v,s=d[x]; E=E+ww*0.5*v; S=S+ww*0.5*s
    return E,S
# ---------------- 177Lu-PSMA-617 reference biokinetics (typical patient), %IA
def _e(t,T): return np.exp(-np.log(2)*t/T)
def lu_model(t,bladder=0.0):
    """%IA in model regions at time t (h); physical decay included"""
    WB=67.8*_e(t,6.0)+35.9*_e(t,42.0)
    kid=4.4*_e(t,41)+0.9*_e(t,1.0)
    par=0.73*(_e(t,31)-0.44*_e(t,0.5)); smg=0.4*par; lac=0.175*(_e(t,28)-0.70*_e(t,0.5))
    liv=6.4*_e(t,19); spl=0.74*_e(t,4.8)+0.22*_e(t,23.6)
    blood=40*_e(t,1.5)+4*_e(t,15); rm=1170/5300*blood
    tum=10*(_e(t,60)-0.14*_e(t,1.0))
    rem=WB-(kid+par+smg+lac+liv+spl+rm+tum)
    return dict(KID=kid,SAL=par+smg,LIV=liv,SPL=spl,RM=rm,BONE=0.75*tum,LN=0.20*tum,PRO=0.05*tum,REM=rem+lac,UBC=bladder,WB=WB)
REM_GROUP=['BLD','HTW','LUN','SKL','MUS','ADI','SKN','BRN','LNO','OTH','STO','SIN','COL','UBW']
def region_mass(tag):
    org=MASS['PAMstd']['organs']; ids=[r[2] for r in D.REGIONS if r[0]==tag][0]
    return sum(org[str(i)]['mass_g'] for i in ids if str(i) in org)
_RM={t:region_mass(t) for t in REM_GROUP}
def weights_from_model(m):
    """MCNP region weights (sum = total activity in body + bladder, as fraction of IA)"""
    w=np.zeros(NREG)
    def add(tag,x): w[REG.index(tag)]+=x/100.0
    add('KID',m['KID']); add('SAL',m['SAL']); add('LIV',m['LIV']); add('SPL',m['SPL'])
    add('SPO',m['RM']+m['BONE']); add('LNT',m['LN']); add('PRO',m['PRO']); add('UBC',m['UBC'])
    Mt=sum(_RM.values())
    for t in REM_GROUP: add(t,m['REM']*_RM[t]/Mt)
    return w
def w_point(): w=np.zeros(NREG); w[REG.index('PNT')]=1.0; return w
def w_line():  w=np.zeros(NREG); w[REG.index('LIN')]=1.0; return w
GBQH=1e9*3600*1e-6     # per-decay pSv (pGy) -> uSv/h (uGy/h) per GBq
