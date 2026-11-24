"""Builds the seven coach decks (B01-B07), the run metadata and the lattice files of the seated phantoms.

    python build_decks.py [output folder]

Without an argument everything is written to work/decks.  The decks are then compared with the ones in
1_MCNP_inputs, which are the decks that were run.  Needs the ICRP 110 and ICRP 116 data (icrp_data/README.md).
The first call builds the seated phantoms and keeps them in work/cache."""
import os, sys, json, time, filecmp
import numpy as np
from mcnp_deck import *
import coach, paths
OUT=sys.argv[1] if len(sys.argv)>1 else str(paths.BUILD_OUT)
RUNS=[ # name, (detectors/full occupancy, patient seat, sex of the passengers), nps, ctme (min)
 ('B01_DAIR_janela',  ('DAIR','RW','AM'),8e8,400),     # patient and detectors in air, no coach
 ('B02_D_janela',     ('D','RW','AM'),   8e8,400),     # empty coach, patient at the window (janela)
 ('B03_D_corredor',   ('D','RA','AM'),   8e8,400),     # empty coach, patient at the aisle (corredor)
 ('B04_F_AM_janela',  ('F','RW','AM'),   1e9,900),     # 19 male passengers
 ('B05_F_AF_janela',  ('F','RW','AF'),   1e9,1000),    # 19 female passengers
 ('B06_F_AM_corredor',('F','RA','AM'),   1e9,900),
 ('B07_F_AF_corredor',('F','RA','AF'),   1e9,1000),
]
def build(only=None):
    os.makedirs(OUT,exist_ok=True)
    meta={}
    for name,args,nps,ctme in RUNS:
        if only and name not in only: continue
        t=time.time()
        d=coach.deck_bus(*args,nps,ctme,False); d.write(f'{OUT}/{name}.i')
        m=getattr(d,'meta',{}); m['nps']=nps; m['ctme']=ctme
        m['tally_index']=getattr(d,'tally_index',{})
        ent=d.src_entries
        m['regions']=[(r[0],r[1]) for r in d.regions]
        tot=sum(e['p'] for e in ent)
        m['region_prob']={str(970+i+1):sum(e['p'] for e in ent if e['ed']==970+i+1)/tot for i in range(len(d.regions))}
        m['n_source_entries']=len(ent)
        m['source_stats']=d.src_stats
        m['energy_grid_MeV']=d.egrid; m['energy_prob']=d.pE
        m['region_time_tag_shakes']={r[0]:1000.0*(i+1) for i,r in enumerate(d.regions)}
        m['variants']=sorted(d.variants)
        m['placements']=[dict(name=P.name,variant=P.var.key,envelope_cell=P.envcell,slab_cells=P.slabcells,
                              origin=list(P.xf.o),rot180=P.xf.rot180,envelope=P.env) for P in d.placements]
        meta[name]=m
        print(f'{name:22s} {time.time()-t:6.1f}s  size {os.path.getsize(f"{OUT}/{name}.i")/1e3:8.1f} kB  phantoms {sorted(d.variants)}',flush=True)
    return meta
def same(fn):
    ref=paths.INPUTS/fn
    if not ref.exists(): return 'not in 1_MCNP_inputs yet (copy it there to run the decks)'
    return 'identical' if filecmp.cmp(os.path.join(OUT,fn),ref,shallow=False) else 'DIFFERENT'
if __name__=='__main__':
    meta=build()
    def conv(o):
        if isinstance(o,(np.floating,)): return float(o)
        if isinstance(o,(np.integer,)): return int(o)
        if isinstance(o,np.ndarray): return o.tolist()
        return str(o)
    json.dump(meta,open(OUT+'/run_metadata.json','w'),indent=1,default=conv)
    used=sorted(set(k for m in meta.values() for k in m['variants']))
    write_lattice_files(OUT,used)
    for k in used:
        print('lattice',k,round(os.path.getsize(os.path.join(OUT,VARIANTS[k].latfile()))/1e6,2),'MB')
    if os.path.abspath(OUT)!=os.path.abspath(paths.INPUTS):
        print('comparison with 1_MCNP_inputs:')
        for fn in [f'{r[0]}.i' for r in RUNS]+[VARIANTS[k].latfile() for k in used]:
            print(f'  {fn:24s}',same(fn))
