"""Checks of a seated phantom: seat height, extents, body mass and organs whose mass changed by more than 3 %.

    python check_seated.py AM 95
    python check_seated.py AF 99
"""
import numpy as np, json, sys
from build_seated import build
from joints import VOX, load
def organ_density(ph):
    import paths
    base=str(paths.ICRP110)+"/"
    d={}
    for line in open(base+f"{ph}/{ph}_organs.dat",encoding='latin-1'):
        p=line.split()
        if len(p)>3 and p[0].isdigit():
            d[int(p[0])]=(float(p[-1]),int(p[-2]),' '.join(p[1:-2]))
    d[141]=(1.09,27,'Skin top/bottom')
    return d
def report(ph,th,th_elb=75,psi=12):
    out,src,info=build(ph,th,th_elb,psi,verbose=False)
    a=load(ph); dx,dy,dz=VOX[ph]; vv=dx*dy*dz
    i0,j0,k0=info['origin_idx']
    NK,NJ,NI=out.shape
    # seat surface: lowest voxel of pieces trunk(1) or thigh(2)
    kk,jj,ii=np.nonzero((src==1)|(src==2))
    zseat=(kk.min()+k0)*dz
    ks,_,_=np.nonzero(out>0); zsole=(ks.min()+k0)*dz
    zt=(ks.max()+1+k0)*dz
    _,jy,ix=np.nonzero(out>0)
    print(f'{ph} th_hip={th}: grid {NI}x{NJ}x{NK} ({NI*NJ*NK/1e6:.1f}M)  seat surface z={zseat:.1f} sole z={zsole:.1f} seat height={zseat-zsole:.1f} cm; head top {zt:.1f} -> seated height above seat {zt-zseat:.1f}')
    print('  x extent %.1f-%.1f (width %.1f); y extent %.1f-%.1f (depth %.1f)'%((ix.min()+i0)*dx,(ix.max()+1+i0)*dx,(ix.max()+1-ix.min())*dx,(jy.min()+j0)*dy,(jy.max()+1+j0)*dy,(jy.max()+1-jy.min())*dy))
    print('  conflicts',info['conflicts'])
    dens=organ_density(ph)
    ids0,c0=np.unique(a,return_counts=True); ids1,c1=np.unique(out,return_counts=True)
    C0=dict(zip(ids0,c0)); C1=dict(zip(ids1,c1))
    m0=sum(C0.get(i,0)*dens[i][0] for i in dens)*vv/1000; m1=sum(C1.get(i,0)*dens[i][0] for i in dens)*vv/1000
    print('  body mass standing %.2f kg seated %.2f kg (%.2f%%)'%(m0,m1,100*(m1/m0-1)))
    rows=[]
    for i in sorted(dens):
        n0=C0.get(i,0); n1=C1.get(i,0)
        if n0==0: continue
        rows.append((i,dens[i][2][:34],n0*vv*dens[i][0],n1*vv*dens[i][0],100*(n1/n0-1)))
    big=[r for r in rows if abs(r[4])>3]
    for r in big: print('   id%4d %-34s %9.1f g -> %9.1f g  %+6.1f%%'%r)
    return out,src,info
if __name__=='__main__':
    ph=sys.argv[1]
    for th in [float(x) for x in sys.argv[2:]]:
        report(ph,th)
