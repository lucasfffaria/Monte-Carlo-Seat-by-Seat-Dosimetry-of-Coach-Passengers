"""Organ and tissue masses, lattice slabs and source data of every phantom -> phantom_masses.json.

    python write_phantom_masses.py [output folder]      (default: work/decks)

The standing phantoms are included because the masses of the standing AM organs distribute the activity
of the remainder tissues in the post-processing."""
import json, os, sys, numpy as np
from mcnp_deck import VARIANTS
import data as D, paths
OUT=sys.argv[1] if len(sys.argv)>1 else str(paths.BUILD_OUT)
os.makedirs(OUT,exist_ok=True)
meta={}
for k,v in VARIANTS.items():
    ph=v.ph
    org={}
    for oid,n in sorted(ph.count.items()):
        o=ph.organs[oid]
        org[oid]=dict(name=o['name'],medium=o['medium'],rho=o['rho'],nvox=n,vol_cm3=n*ph.vvox,mass_g=n*ph.vvox*o['rho'])
    tis={}
    for tag,desc,am,af in D.TISSUES:
        ids=[i for i in (am if v.sex=='AM' else af) if i in ph.count]
        tis[tag]=dict(desc=desc,ids=ids,mass_g=sum(org[i]['mass_g'] for i in ids))
    meta[k]=dict(sex=v.sex,kind=v.kind,vox_cm=[ph.dx,ph.dy,ph.dz],fill_origin_idx=[ph.i0,ph.j0,ph.k0],shape_kji=list(ph.arr.shape),
                 slabs=[dict(lattice_cell=d['lat'],k=[int(d['k0']),int(d['k1'])],j=[int(d['j0']),int(d['j1'])],i=[int(d['i0']),int(d['i1'])],
                             n_elements=int(d['n']),offset_cm=[float(x) for x in d['off']]) for d in v.slabs],
                 organs=org,tissues=tis,total_mass_g=sum(o['mass_g'] for i,o in org.items() if i!=140))
meta['_regions']=[(t,d,l) for t,d,l in D.REGIONS]
meta['_lu177']=dict(lines=D.LU177_LINES,photons_per_decay=D.LU177_YIELD,thalf_d=D.LU177_THALF_D)
pE,info=D.sampling_probabilities()
meta['_source_v3']=dict(energy_grid_MeV=D.EGRID,energy_prob=[float(x) for x in pE],region_time_tag_shakes=D.REGION_T0,
    nuclides={n:dict(thalf_h=D.NUCLIDE_DATA[n]['thalf_h'],lines_MeV_per_parent_decay=D.nuclide_lines(n),
                     chain=[(c[0],c[1]) for c in D.NUCLIDE_DATA[n]['chain']]) for n in D.NUCLIDE_DATA},
    note='R(region,E)=tally(region time bin, SCX user bin)/(p_E/24); nuclide = sum of lines interpolated log-log on the grid')
meta['_skeletal_masses_icrp116']=D.SKEL_MASS
json.dump(meta,open(OUT+'/phantom_masses.json','w'),indent=1)
for k in VARIANTS: print(k, round(meta[k]['total_mass_g']/1000,2),'kg')
