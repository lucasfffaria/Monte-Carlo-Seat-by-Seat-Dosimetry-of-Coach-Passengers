"""Partition of a phantom voxel array into z-slabs, each cropped to the bounding box of the body."""
import numpy as np, json
from phantoms import Phantom
def partition(ph, target=300000, forced_k=()):
    """z-slab partition of phantom array (k index), each slab cropped to its body bounding box (i,j).
    returns list of dicts with array-index ranges (inclusive start, exclusive end)."""
    a=ph.arr; nk,nj,ni=a.shape
    body=a>0
    kb=np.flatnonzero(body.any((1,2)))
    k_lo,k_hi=kb.min(),kb.max()+1
    # per-slice bounding boxes
    rows=body.any(2); cols=body.any(1)   # (nk,nj),(nk,ni)
    forced=set(int(f) for f in forced_k)
    slabs=[]; k=k_lo
    while k<k_hi:
        k2=k+1
        def box(k0,k1):
            r=np.flatnonzero(rows[k0:k1].any(0)); c=np.flatnonzero(cols[k0:k1].any(0))
            return c.min(),c.max()+1,r.min(),r.max()+1
        while k2<k_hi and k2 not in forced:
            i0,i1,j0,j1=box(k,k2+1)
            if (i1-i0)*(j1-j0)*(k2+1-k)>target: break
            k2+=1
        i0,i1,j0,j1=box(k,k2)
        slabs.append(dict(k0=k,k1=k2,i0=int(i0),i1=int(i1),j0=int(j0),j1=int(j1),n=int((i1-i0)*(j1-j0)*(k2-k))))
        k=k2
    return slabs
if __name__=='__main__':
    for sex,kind in [('AM','std'),('AF','std'),('AM','seat'),('AF','seat')]:
        ph=Phantom(sex,kind)
        forced=()
        if kind=='seat':
            zs=ph.meta['z_seat_surface']; kseat=int(round(zs/ph.dz))-ph.k0; forced=(kseat,)
        for tgt in (150000,300000,600000):
            s=partition(ph,tgt,forced)
            N=np.array([x['n'] for x in s])/1e6
            print(f'{sex} {kind} target {tgt/1e6:.2f}M: slabs {len(s):3d}, total elements {N.sum():6.2f}M (full array {ph.arr.size/1e6:.2f}M), ModelQ setup {0.44*(N**2).sum():6.2f} min, maxN {N.max():.2f}M')
