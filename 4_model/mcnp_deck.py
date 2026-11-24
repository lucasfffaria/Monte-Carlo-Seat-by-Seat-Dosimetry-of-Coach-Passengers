"""Writer of the MCNP6 input decks: ICRP 110 phantoms as stacks of cropped z-slab lattices.

Each phantom placed in a scene is one level-0 envelope cell (air) plus n level-0 slab containers, each
filled with its own LAT=1 lattice (fully specified FILL, 0-based indices, air voxels -> explicit air
universe 999).  The phantom is cut into slabs because the MCNP set-up time per lattice instance grows
about quadratically with the lattice size (measured: 23 min for the AM array and 90 min for the AF array
when each was a single lattice)."""
import numpy as np, os, math
from phantoms import Phantom, organ_table, media_table
from slabs import partition
import data as D
AIR_MAT=200; AIR_RHO=0.001205
AIR_U=999; AIR_CELL=999          # explicit air universe for air voxels (no self-filled elements)
ERG0=970                         # region tag distributions 971..994 (source TIME tags)
EDIST=6                          # source energy grid distribution (FT SCX 6 -> energy user bins)
EPS_ENV=1e-3                     # envelope = body box expanded by EPS_ENV
EPS_SLAB=2e-3                    # slab container = slab voxel box shrunk by EPS_SLAB (inside FILL range)
SLAB_TARGET=300000               # max lattice elements per slab
# ------------------------------------------------------------------ formatting
def wrap(tokens, first='', width=78, split=False):
    if split:
        tokens=' '.join(str(t) for t in tokens).split()
    lines=[]; line=first
    for t in tokens:
        t=str(t)
        if line.strip()=='':
            line=line+t; continue
        if len(line)+1+len(t)>width:
            lines.append(line); line='     '+t
        else: line+=' '+t
    if line.strip(): lines.append(line)
    return lines
def cwrap(text,width=78):
    out=[]; line='c'
    for w in text.split():
        if len(line)+1+len(w)>width:
            out.append(line); line='c'
        line+=' '+w
    if line!='c': out.append(line)
    return out
def fpos(x):
    s=f'{x:.4f}'.rstrip('0').rstrip('.')
    return '0' if s in ('-0','','-') else s
def fsig(x,n=5): return f'{x:.{n}g}'
def shrink(b,e): return (b[0]+e,b[1]-e,b[2]+e,b[3]-e,b[4]+e,b[5]-e)
def box_inside(b,o,tol=0.0):
    return b[0]>=o[0]-tol and b[1]<=o[1]+tol and b[2]>=o[2]-tol and b[3]<=o[3]+tol and b[4]>=o[4]-tol and b[5]<=o[5]+tol
# ------------------------------------------------------------------ phantom variants
class Variant:
    def __init__(self,key,sex,kind,lat0,uoff,cellbase,matoff,surf0):
        self.key=key; self.sex=sex; self.kind=kind; self.lat0=lat0
        self.uoff=uoff; self.cellbase=cellbase; self.matoff=matoff; self.surf0=surf0
        self._ph=None; self._slabs=None
    @property
    def ph(self):
        if self._ph is None: self._ph=Phantom(self.sex,self.kind)
        return self._ph
    @property
    def slabs(self):
        """z-slabs of the phantom array; each: array index ranges, lattice cell/universe number,
        offset of element (0,0,0) and exact box in phantom-local coordinates"""
        if self._slabs is None:
            ph=self.ph; forced=()
            if self.kind=='seat':
                kz=ph.meta['z_seat_surface']/ph.dz
                assert abs(kz-round(kz))<1e-6
                forced=(int(round(kz))-ph.k0,)
            sl=partition(ph,SLAB_TARGET,forced)
            for s,d in enumerate(sl):
                d['lat']=self.lat0+s
                o=((d['i0']+ph.i0)*ph.dx,(d['j0']+ph.j0)*ph.dy,(d['k0']+ph.k0)*ph.dz)
                d['off']=o
                d['box']=(o[0],o[0]+(d['i1']-d['i0'])*ph.dx,o[1],o[1]+(d['j1']-d['j0'])*ph.dy,
                          o[2],o[2]+(d['k1']-d['k0'])*ph.dz)
            assert len(sl)<100
            self._slabs=sl
        return self._slabs
    def ocell(self,oid): return self.cellbase+oid
    def latfile(self): return f'lat_{self.key}.txt'
    def voxsurf(self):
        s=self.surf0; return [-(s+1),(s+2),-(s+3),(s+4),-(s+5),(s+6)]
VARIANTS={
 'TAMstd': Variant('TAMstd','AM','std', 1100,  0,10000,  0, 0),
 'TAFstd': Variant('TAFstd','AF','std', 2100,200,20000,100,10),
 'TAMseat':Variant('TAMseat','AM','seat',3100,  0,10000,  0, 0),
 'TAFseat':Variant('TAFseat','AF','seat',4100,200,20000,100,10),
 'PAMstd': Variant('PAMstd','AM','std', 5100,400,40000,  0, 0),
 'PAMseat':Variant('PAMseat','AM','seat',6100,400,40000,  0, 0),
}
def write_slab_lattices(v,fn):
    """one file per variant with all slab lattice cards (LAT=1, fully specified FILL, 0-based)"""
    ph=v.ph; s6=' '.join(str(x) for x in v.voxsurf())
    out=[f'c ICRP110 {v.sex} {v.kind} ({v.key}): {len(v.slabs)} z-slab lattices,',
         f'c air voxels -> universe {AIR_U}; organ ID n -> universe {v.uoff}+n']
    nruns=0
    for s,d in enumerate(v.slabs):
        sub=ph.arr[d['k0']:d['k1'],d['j0']:d['j1'],d['i0']:d['i1']]
        nk,nj,ni=sub.shape
        flat=sub.reshape(-1)              # i fastest, then j, then k == MCNP FILL order
        univ=np.where(flat>0,flat.astype(np.int64)+v.uoff,AIR_U)
        change=np.flatnonzero(np.diff(univ))+1
        starts=np.concatenate([[0],change]); ends=np.concatenate([change,[univ.size]])
        nruns+=len(starts)
        out.append(f"c slab {s}: array k {d['k0']}-{d['k1']-1}, j {d['j0']}-{d['j1']-1},"
                   f" i {d['i0']}-{d['i1']-1} ({ni}x{nj}x{nk})")
        out.append(f"{d['lat']} 0 {s6} lat=1 u={d['lat']} imp:p=1")
        out.append(f"     fill=0:{ni-1} 0:{nj-1} 0:{nk-1}")
        line='     '
        for st,en in zip(starts,ends):
            u=univ[st]; n=en-st
            t=f"{u}" if n==1 else (f"{u} {u}" if n==2 else f"{u} {n-1}r")
            if len(line)+len(t)+1>78:
                out.append(line.rstrip()); line='     '
            line+=t+' '
        if line.strip(): out.append(line.rstrip())
    with open(fn,'w',newline='\r\n') as f:
        f.write('\n'.join(out)+'\n')
    return nruns
def write_lattice_files(outdir,keys=None):
    for k,v in VARIANTS.items():
        if keys and k not in keys: continue
        write_slab_lattices(v,os.path.join(outdir,v.latfile()))
# ------------------------------------------------------------------ transforms / placements
class Xform:
    def __init__(self,o,rot180=False):
        self.o=np.array(o,float); self.rot180=rot180
        self.R=np.diag([-1.,-1.,1.]) if rot180 else np.eye(3)
    def apply(self,p): return self.R@np.asarray(p,float)+self.o
    def box(self,b):
        c=np.array([[b[i],b[2+j],b[4+k]] for i in (0,1) for j in (0,1) for k in (0,1)])
        g=(self.R@c.T).T+self.o
        return (g[:,0].min(),g[:,0].max(),g[:,1].min(),g[:,1].max(),g[:,2].min(),g[:,2].max())
    def shifted(self,off):
        """transform of a sub-universe whose origin sits at 'off' in this frame"""
        return Xform(self.apply(off),self.rot180)
    def fillstr(self,u):
        o=' '.join(fpos(v) for v in self.o)
        if self.rot180: return f'fill={u} ({o} -1 0 0 0 -1 0 0 0 1)'
        return f'fill={u} ({o})'
class Placement:
    """phantom placement: envelope cell 'envcell' (air, level 0) + slab containers envcell*100+s"""
    def __init__(self,name,var,xf,envcell,env_local=None):
        self.name=name; self.var=var; self.xf=xf; self.envcell=envcell
        if env_local is None:
            bb=var.ph.body_box(); e=EPS_ENV
            env_local=[(bb[0]-e,bb[1]+e,bb[2]-e,bb[3]+e,bb[4]-e,bb[5]+e)]
        self.env_local=env_local
        self.env=[xf.box(b) for b in env_local]
        self.slabcells=[envcell*100+s for s in range(len(var.slabs))]
        self.slab_local=[shrink(d['box'],EPS_SLAB) for d in var.slabs]
        self.slabbox=[xf.box(b) for b in self.slab_local]
        self.slabxf=[xf.shifted(d['off']) for d in var.slabs]
        for s,b in enumerate(self.slab_local):
            assert any(box_inside(b,E,-1e-4) for E in env_local), ('slab not strictly inside envelope',name,s)
        self.env_surfs=[]; self.slab_surfs=[]
    def lats(self):
        return '('+' '.join(str(d['lat']) for d in self.var.slabs)+')'
    def conts(self):
        return '('+' '.join(str(c) for c in self.slabcells)+')'
    def upath(self,oids):
        """tally chain: organ cell(s) in any slab lattice in any slab container of this placement
        (the three levels are written out; without the lattice level the runs were ~20x slower)"""
        cs=[str(self.var.ocell(o)) for o in oids if o in self.var.ph.count]
        if not cs: return None
        lo=cs[0] if len(cs)==1 else '('+' '.join(cs)+')'
        return f'({lo} < {self.lats()} < {self.conts()})'
# ------------------------------------------------------------------ deck
class Deck:
    def __init__(self,title,world_radius=600.0,world_void=False):
        self.title=title[:78]
        self.cells=[]; self.surfs=[]; self.data=[]; self.variants=set()
        self.nsurf=100; self.outside=[]   # tokens describing outside of every top-level object
        self.world_radius=world_radius; self.world_void=world_void
        self.placements=[]
        self.notes=[]
        self.det_vol={}
    def newsurf(self,spec,comment=None):
        n=self.nsurf; self.nsurf+=1
        s=f'{n} {spec}'
        if comment: s=s+' $ '+comment
        self.surfs.append(s[:80]); return n
    def rpp(self,b,comment=None):
        return self.newsurf('rpp '+' '.join(fpos(v) for v in b),comment)
    def sph(self,c,r,comment=None):
        return self.newsurf('s '+' '.join(fpos(v) for v in c)+' '+fpos(r),comment)
    def place(self,P,top=True):
        """envelope cell (air) + slab container cells (level 0) for placement P"""
        self.variants.add(P.var.key); self.placements.append(P)
        P.env_surfs=[self.rpp(b,f'envelope {P.name}') for b in P.env]
        P.slab_surfs=[self.rpp(b,f'slab {s} {P.name}') for s,b in enumerate(P.slabbox)]
        for s,(c,sf,xf) in enumerate(zip(P.slabcells,P.slab_surfs,P.slabxf)):
            self.cells+=wrap([f'-{sf}',xf.fillstr(P.var.slabs[s]['lat']),'imp:p=1'],first=f'{c} 0')
        if len(P.env_surfs)==1: geo=[f'-{P.env_surfs[0]}']
        else: geo=['('+':'.join(f'-{s}' for s in P.env_surfs)+')']
        geo+=[str(s) for s in P.slab_surfs]
        self.cell(P.envcell,AIR_MAT,AIR_RHO,geo,comment=f'envelope {P.name}',top=False)
        if top: self.outside+=[str(s) for s in P.env_surfs]
        return P
    def cell(self,num,mat,rho,geo_tokens,comment=None,top=True,outside_tokens=None):
        first=f'{num} {mat}'+('' if mat==0 else f' -{rho}')
        toks=list(geo_tokens)+['imp:p=1']
        lines=wrap(toks,first=first)
        if comment and len(lines[-1])+3+len(comment)<=78: lines[-1]+=' $ '+comment
        self.cells+=lines
        if top and outside_tokens: self.outside+=outside_tokens
    def finish_world(self,extra_inside=None):
        ws=self.newsurf(f'so {fpos(self.world_radius)}','world')
        if self.world_void:
            self.cells+=wrap([f'-{ws}']+self.outside+['imp:p=1'],first='9998 0')
        else:
            self.cells+=wrap([f'-{ws}']+self.outside+['imp:p=1'],first=f'9998 {AIR_MAT} -{AIR_RHO}')
        self.cells.append(f'9999 0 {ws} imp:p=0')
    # ---------------------------------------------------------- writers
    def materials(self):
        out=['c ---- materials: ICRP110 media (AM: m1-m53, AF: m101-m153), air, vehicle']
        sexes=sorted(set(VARIANTS[k].sex for k in self.variants))
        for sex in sexes:
            off=0 if sex=='AM' else 100
            mt=media_table(sex)
            for m in sorted(mt):
                fr=mt[m]['frac']; tot=sum(fr.values()); toks=[]
                for z,f in fr.items():
                    if f>0: toks+=[f'{z*1000}',f'-{f/tot:.5f}']
                out+=wrap(toks,first=f'm{m+off}')
        out+=wrap(['6000','-0.000124','7000','-0.755268','8000','-0.231781','18000','-0.012827'],first=f'm{AIR_MAT}')
        out+=wrap(['26000','-0.988','25000','-0.008','6000','-0.004'],first='m201')
        out+=wrap(['13000','-1.0'],first='m202')
        out+=wrap(['8000','-0.4598','11000','-0.0964','14000','-0.3365','20000','-0.1072','12000','-0.0001'],first='m203')
        out+=wrap(['1000','-0.062','6000','-0.495','8000','-0.443'],first='m204')
        out+=wrap(['1000','-0.0484','6000','-0.3844','17000','-0.5672'],first='m205')
        out+=wrap(['1000','-0.071','6000','-0.630','7000','-0.068','8000','-0.231'],first='m206')
        out+=wrap(['1000','-0.1437','6000','-0.8563'],first='m207')
        return out
    def organ_cells(self):
        out=[]; groups={}
        for k in sorted(self.variants):
            v=VARIANTS[k]; groups.setdefault((v.cellbase,v.uoff,v.matoff,v.sex),set()).update(v.ph.count.keys())
        out.append(f'c ---- air universe (air voxels of every lattice)')
        out.append(f'{AIR_CELL} {AIR_MAT} -{AIR_RHO} -99 u={AIR_U} imp:p=1 $ voxel air')
        for (cb,uo,mo,sex),ids in sorted(groups.items()):
            ot=organ_table(sex)
            out.append(f'c ---- organ universes {sex}: cell {cb}+ID, u={uo}+ID, mat {mo}+medium')
            for oid in sorted(ids):
                o=ot[oid]
                s=f'{cb+oid} {o["medium"]+mo} -{o["rho"]:.3f} -99 u={uo+oid} imp:p=1'
                s+=' $ '+o['name']; out.append(s[:80])
        return out
    def lattice_reads(self):
        out=[]
        for k in sorted(self.variants):
            v=VARIANTS[k]
            out.append(f'c ---- {k}: {len(v.slabs)} slab lattices, cells/universes {v.lat0}-{v.lat0+len(v.slabs)-1}')
            out.append(f'read file={v.latfile()} noecho')
        return out
    def vox_surfaces(self):
        out=[]; done=set()
        for k in sorted(self.variants):
            v=VARIANTS[k]
            if v.surf0 in done: continue
            done.add(v.surf0); ph=v.ph; s=v.surf0
            out+=[f'{s+1} px {ph.dx}',f'{s+2} px 0',f'{s+3} py {ph.dy}',f'{s+4} py 0',f'{s+5} pz {ph.dz}',f'{s+6} pz 0']
        out.append('99 so 1.0e5')
        return out
    def write(self,fn):
        L=[self.title]
        for n in self.notes: L+=cwrap(n)
        L.append('c ============================== CELLS')
        L+=self.organ_cells(); L+=self.lattice_reads(); L+=self.cells
        L.append('')
        L.append('c ============================== SURFACES')
        L+=self.vox_surfaces(); L+=self.surfs
        L.append('')
        L.append('c ============================== DATA')
        L+=self.data; L+=self.materials()
        for l in L: assert len(l)<=80,('line too long',fn,l)
        with open(fn,'w',newline='\r\n') as f: f.write('\n'.join(L)+'\n')
# ------------------------------------------------------------------ voxel index helpers
_IDXCACHE={}
def preload_index(ph):
    if any(k[0]==id(ph) for k in _IDXCACHE): return
    flat=ph.arr.reshape(-1)
    order=np.argsort(flat,kind='stable'); vals=flat[order]
    bounds=np.flatnonzero(np.diff(vals))+1
    starts=np.concatenate([[0],bounds]); ends=np.concatenate([bounds,[len(vals)]])
    for s,e in zip(starts,ends):
        oid=int(vals[s])
        if oid==0: continue
        k,j,i=np.unravel_index(order[s:e],ph.arr.shape)
        _IDXCACHE[(id(ph),oid)]=(k,j,i)
def organ_index(ph,oid):
    preload_index(ph)
    return _IDXCACHE[(id(ph),oid)]
def idxbox_to_local(ph,b):
    return ((b[0]+ph.i0)*ph.dx,(b[1]+ph.i0)*ph.dx,(b[2]+ph.j0)*ph.dy,(b[3]+ph.j0)*ph.dy,(b[4]+ph.k0)*ph.dz,(b[5]+ph.k0)*ph.dz)
_SLABSTAT={}
def slab_stats(v):
    """{organ: [(slab, n_voxels, array-index bbox (i0,i1,j0,j1,k0,k1))]}"""
    key=(v.sex,v.kind)
    if key in _SLABSTAT: return _SLABSTAT[key]
    ph=v.ph; kb=np.array([d['k0'] for d in v.slabs])
    out={}
    for oid in sorted(ph.count):
        k,j,i=organ_index(ph,oid)
        si=np.searchsorted(kb,k,side='right')-1
        order=np.argsort(si,kind='stable'); ss=si[order]
        bnd=np.flatnonzero(np.diff(ss))+1
        st=np.concatenate([[0],bnd]); en=np.concatenate([bnd,[len(ss)]])
        lst=[]
        for a,b in zip(st,en):
            sel=order[a:b]; s=int(ss[a])
            lst.append((s,int(b-a),(int(i[sel].min()),int(i[sel].max())+1,int(j[sel].min()),int(j[sel].max())+1,
                                    int(k[sel].min()),int(k[sel].max())+1)))
        out[oid]=lst
    _SLABSTAT[key]=out
    return out
# ------------------------------------------------------------------ source (patient)
TRUNK_CENTRE={'AM':(26.42,15.27,105.0)}
SRC_EFF=1e-8           # SDEF EFF: element-rejection efficiencies are small (>~1e-5), see notes
def patient_source(deck,P,region_weights=None,line_z=None,regions=None):
    """SDEF for photons emitted in the patient placement P.
    Organ entries, one per (organ, slab):  path (organ < slab lattice < slab container), all positive:
      the PDS level is the organ level, MCNP samples the lattice ELEMENT uniformly (fully specified
      FILL) rejecting elements not filled by the organ universe, and X/Y/Z are sampled inside the
      element (element-local frame: 0..dx, 0..dy, 0..dz).  (With PDS at level 0 and global
      boxes MCNP 6.3 started ~75 % of the particles with an inconsistent lattice state and stopped
      with 'zero lattice element hit'.)
    Point/line entries: path (slab lattice < -slab container), PDS level 0, global coordinates.
    Region tag = birth time (TME=FCEL=D2, T0 bins); energy from the grid D6 (FT SCX 6)."""
    v=P.var; ph=v.ph; xf=P.xf
    regions=regions or D.REGIONS; nreg=len(regions)
    w=region_weights or [1.0]*nreg; W=sum(w)
    st=slab_stats(v)
    ent=[]
    for ri,(tag,desc,ids) in enumerate(regions):
        Pr=w[ri]/W; ed=ERG0+ri+1
        if tag=='PNT':
            c=np.array(TRUNK_CENTRE['AM'],float)
            ss=[s for s,b in enumerate(P.slab_local) if b[0]<c[0]<b[1] and b[2]<c[1]<b[3] and b[4]+0.01<c[2]<b[5]-0.01]
            assert len(ss)==1,('point source slab',ss)
            s=ss[0]
            ent.append(dict(path=f'({v.slabs[s]["lat"]} < -{P.slabcells[s]})',p=Pr,ed=ed,kind='fix',xyz=xf.apply(c),s=s))
            continue
        if tag=='LIN':
            x,y,_=TRUNK_CENTRE['AM']; z0,z1=line_z; segs=[]
            for s,b in enumerate(P.slab_local):
                lo=max(z0,b[4]); hi=min(z1,b[5])
                if hi>lo:
                    assert b[0]<x<b[1] and b[2]<y<b[3],('line source leaves slab box',v.key,s)
                    segs.append((s,lo,hi))
            Ltot=sum(h-l for s,l,h in segs)
            for s,lo,hi in segs:
                g0=xf.apply((x,y,lo)); g1=xf.apply((x,y,hi))
                ent.append(dict(path=f'({v.slabs[s]["lat"]} < -{P.slabcells[s]})',p=Pr*(hi-lo)/Ltot,ed=ed,kind='line',
                                x=g0[0],y=g0[1],z0=min(g0[2],g1[2]),z1=max(g0[2],g1[2]),s=s))
            continue
        if tag=='SPO':
            sites=[s for s in D.RBM_SITES if s in ph.count]
            Wm={s:D.SKEL_MASS[s]['AM_M'] for s in sites}; tot=sum(Wm.values())
            parts=[(o,Pr*Wm[o]/tot) for o in sites]
        else:
            present=[o for o in ids if o in ph.count]
            M=sum(ph.mass(o) for o in present)
            parts=[(o,Pr*ph.mass(o)/M) for o in present]
        for o,po in parts:
            for s,n,ib in st[o]:
                ent.append(dict(path=f'({v.ocell(o)} < {v.slabs[s]["lat"]} < {P.slabcells[s]})',p=po*n/ph.count[o],ed=ed,
                                kind='elem',s=s,n=n,oid=o,eff=n/v.slabs[s]['n']))
    ptot=sum(e['p'] for e in ent)
    assert abs(ptot-1)<1e-9, ptot
    el=[e for e in ent if e['kind']=='elem']
    trials=sum(e['p']/e['eff'] for e in el)+sum(e['p'] for e in ent if e['kind']!='elem')
    mineff=min(e['eff'] for e in el)
    assert mineff>100*SRC_EFF
    # ---- distributions (de-duplicated per source variable: MCNP forbids sharing between variables)
    dist={}; cards=[]; nxt=[10]
    def getd(var,kind,*vals):
        key=(var,kind)+tuple(fpos(x) for x in vals)
        if key not in dist:
            n=nxt[0]; nxt[0]+=1; assert n<ERG0
            dist[key]=n
            if kind=='H': cards.extend([f'SI{n} H {key[2]} {key[3]}',f'SP{n} D 0 1'])
            else: cards.extend([f'SI{n} L {key[2]}',f'SP{n} 1'])
        return dist[key]
    dx=[];dy=[];dz=[]
    for e in ent:
        if e['kind']=='elem':          # element-local frame (PDS = organ level)
            dx.append(getd('x','H',0.0,ph.dx)); dy.append(getd('y','H',0.0,ph.dy)); dz.append(getd('z','H',0.0,ph.dz))
        elif e['kind']=='fix':
            g=e['xyz']; dx.append(getd('x','L',g[0])); dy.append(getd('y','L',g[1])); dz.append(getd('z','L',g[2]))
        else:
            dx.append(getd('x','L',e['x'])); dy.append(getd('y','L',e['y'])); dz.append(getd('z','H',e['z0'],e['z1']))
    L=[]
    L+=wrap([f'PAR=P CEL=D1 ERG=D{EDIST} TME=FCEL=D2 X=FCEL=D3 Y=FCEL=D4 Z=FCEL=D5 EFF={SRC_EFF:g}'],first='SDEF')
    L+=wrap([e['path'] for e in ent],first='SI1 L')
    L+=wrap([fsig(e['p'],6) for e in ent],first='SP1')
    L+=wrap([str(e['ed']) for e in ent],first='DS2 S')
    L+=wrap([str(x) for x in dx],first='DS3 S')
    L+=wrap([str(x) for x in dy],first='DS4 S')
    L+=wrap([str(x) for x in dz],first='DS5 S')
    L+=cards
    pE,_=D.sampling_probabilities()
    L.append(f'c ---- source energy grid (MeV): {len(D.EGRID)} discrete energies, tallies binned by')
    L.append(f'c      FT SCX {EDIST} (user bins). Divide each bin by its SP{EDIST} probability.')
    L+=wrap([fsig(e,6) for e in D.EGRID],first=f'SI{EDIST} L')
    L+=wrap([fsig(p,6) for p in pE],first=f'SP{EDIST}')
    L.append('c ---- source region tags: region r is born at time t = r*1000 shakes;')
    L.append('c      tallies are binned by region with the T0 card (photon flight times')
    L.append('c      are < 1 shake, so the time tag does not change any physics)')
    for ri,(tag,desc,ids) in enumerate(regions):
        L.append(f'c   d{ERG0+ri+1}: region {ri+1:2d} {tag} - {desc}'[:80])
    for ri in range(nreg):
        L.append(f'SI{ERG0+ri+1} L {D.REGION_T0*(ri+1):g}'); L.append(f'SP{ERG0+ri+1} 1')
    L+=wrap([f'{D.REGION_T0*(ri+1.5):g}' for ri in range(nreg)],first='T0')
    head=['c ============ SOURCE: patient (one photon per history; see FC cards)']
    head+=cwrap(f'{len(ent)} source entries (organ x slab, lattice-element sampling); expected element '
                f'trials per photon {trials:.0f}; min element efficiency {mineff:.1e}')
    deck.data+=head+L
    deck.notes.append('Energy-resolved source (v4): one photon per history, energy from the grid D6 (27 lines '
                      '25.65 keV - 2.615 MeV; tallies FT SCX 6), region tag = birth time (TME=FCEL=D2, T0 bins). '
                      'Organ sources use MCNP lattice-element sampling (path organ<lattice<container). '
                      'Any radionuclide (177Lu, 161Tb, 212Pb+daughters, 225Ac+daughters) is obtained by folding.')
    deck.src_entries=ent; deck.regions=regions; deck.egrid=list(D.EGRID); deck.pE=[float(x) for x in pE]
    deck.src_stats=dict(n_entries=len(ent),element_trials=trials,min_eff=mineff,eff=SRC_EFF,n_dist=len(dist))
    return ent
def fu_tokens(deck):
    return [str(ERG0+ri+1) for ri in range(len(deck.regions))]
# ------------------------------------------------------------------ tallies
def target_tallies(deck,targets,binning='SRC',scx_dist=1):
    """F6 organ energy deposition (SD=1 -> MeV/source particle), F906 spongiosa energy deposition per
    bone site, skeletal DRF F4 tallies (pGy per source particle)"""
    L=['c ============ TALLIES on exposed phantoms (envelope cell: name)']
    L+=cwrap(' '.join(f'{t.envcell}:{t.name}' for t in targets))
    def ft(n):
        if binning=='SRC': return [f'FT{n} SCX {EDIST}']
        return [f'FT{n} SCX {scx_dist}']
    bins=[]; labels=[]
    for t in targets:
        sex=t.var.sex
        for tag,desc,am,af in D.TISSUES:
            ids=am if sex=='AM' else af
            p=t.upath(ids)
            if p: bins.append(p); labels.append(f'{t.name}:{tag}')
    L+=wrap(bins,first='F6:P',split=True)
    L+=wrap(['1']*len(bins),first='SD6')
    L.append('FC6 organ energy deposition MeV per source photon (SD=1)')
    L+=ft(6)
    deck.tally_index={'F6':labels}
    sb=[]; sl=[]
    for t in targets:
        for s in D.SPONGIOSA:
            p=t.upath([s])
            if p: sb.append(p); sl.append(f'{t.name}:{s}')
    L+=wrap(sb,first='F906:P',split=True)
    L+=wrap(['1']*len(sb),first='SD906')
    L.append('FC906 spongiosa energy deposition per bone site, MeV per source photon')
    L+=ft(906)
    deck.tally_index['F906']=sl
    def drf_tally(n,site,target_type):
        b=[];sd=[]; lab=[]
        for t in targets:
            ph=t.var.ph
            if site not in ph.count: continue
            b.append(t.upath([site])); sd.append(fsig(ph.volume(site),7)); lab.append(t.name)
        if not b: return []
        out=wrap(b,first=f'F{n}:P',split=True)+wrap(sd,first=f'SD{n}')
        out.append(f'FC{n} {target_type} DRF site {site} (pGy per source photon)')
        out+=wrap([fsig(e,4) for e in D.DRF_E],first=f'DE{n} LOG')
        out+=wrap([fsig(v*1e16,5) for v in D.DRF[(site,target_type)]],first=f'DF{n} LOG')
        out+=ft(n)
        deck.tally_index[f'F{n}']=(target_type,site,lab)
        return out
    rb=[s for s in D.SPONGIOSA if (s,'AM') in D.DRF]
    for q,s in enumerate(rb): L+=drf_tally(104+10*q,s,'AM')
    tm=[s for s in sorted(set(D.SPONGIOSA+D.MEDULLARY)) if (s,'TM50') in D.DRF]
    for q,s in enumerate(tm): L+=drf_tally(404+10*q,s,'TM50')
    assert 104+10*len(rb)<=304 and 404+10*len(tm)<=904
    deck.data+=L
def detector_tallies(deck,cells,labels,spectrum_cells=None,binning='SRC'):
    L=['c ============ TALLIES: air spheres (H*(10) pSv, Ka pGy per source photon)']
    def ft(n):
        if binning=='SRC': return [f'FT{n} SCX {EDIST}']
        return []
    vol=[fsig(deck.det_vol[c],7) for c in cells]
    L+=wrap([str(c) for c in cells],first='F304:P')
    L+=wrap(vol,first='SD304')
    L.append('FC304 H*(10) ICRP74 pSv per source photon')
    L+=wrap([fsig(e,4) for e in D.HSTAR_E],first='DE304 LOG')
    L+=wrap([fsig(v,4) for v in D.HSTAR_F],first='DF304 LOG')
    L+=ft(304)
    L+=wrap([str(c) for c in cells],first='F314:P')
    L+=wrap(vol,first='SD314')
    L.append('FC314 air kerma (ICRP116 Ka/phi) pGy per source photon')
    L+=wrap([fsig(e,4) for e in D.KA_E],first='DE314 LOG')
    L+=wrap([fsig(v,5) for v in D.KA_F],first='DF314 LOG')
    L+=ft(314)
    if spectrum_cells:
        L+=wrap([str(c) for c in spectrum_cells],first='F324:P')
        L+=wrap([fsig(deck.det_vol[c],7) for c in spectrum_cells],first='SD324')
        L.append('FC324 photon fluence spectrum (cm-2 per source photon), 50 log bins')
        L+=wrap([fsig(x,4) for x in np.geomspace(0.012,2.7,50)],first='E324')
        L+=ft(324)
    deck.data+=L
    deck.tally_index=getattr(deck,'tally_index',{}); deck.tally_index['F304']=labels
def run_cards(deck,nps,ctme,test=False):
    L=['c ============ RUN CONTROL','MODE P','VOL NO']
    L.append(f'NPS {int(round(nps))}')
    L.append(f'CTME {ctme}')
    L.append('PRDMP 2j 1 1' if test else 'PRDMP j -60 1 1')
    L.append('LOST 1000 20')
    if test: L.append('PRINT 110')
    deck.data+=L
