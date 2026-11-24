"""Seated posture for the ICRP 110 phantoms: thighs, shanks and forearms rotated about the hip, knee and elbow."""
import numpy as np, json, sys
from joints import joints, VOX, load
PROTECT=[41,42,53,54,51,52,137,138,115,139,111,112,84,85,86,74,75,76,77,78,79,80,81,82,83,135,136,126]
ARM_SOFT=[11,59,104,108,118,124]
FOREARM_BONES=[19,20,21,22,23]
UPPERARM_BONES=[13,14,15,16,17,18]
FEMUR=[28,29,30,31,32,33]
SHANK_BONES=[34,35,36,37,38]
def Rx(phi):
    c,s=np.cos(phi),np.sin(phi)
    return np.array([[1,0,0],[0,c,-s],[0,s,c]])
def Rz(psi):
    c,s=np.cos(psi),np.sin(psi)
    return np.array([[c,-s,0],[s,c,0],[0,0,1]])
def mitre_normal(phi):
    # joint between static segment pointing up (0,0,1) and rotated segment originally pointing down (0,0,-1)
    u1=np.array([0,0,1.0]); u2=Rx(phi)@np.array([0,0,-1.0])
    n=u1-u2; return n/np.linalg.norm(n)
def build(ph, th_hip=90.0, th_elb=75.0, psi=12.0, verbose=True):
    a=load(ph); dx,dy,dz=VOX[ph]; ns,nr,nc=a.shape
    J=joints(ph); xmid=J['xmid']
    H=0.5*(J['R']['hip']+J['L']['hip']); H[0]=xmid
    phh=-np.radians(th_hip); phk=+np.radians(th_hip); phe=-np.radians(th_elb)
    Rh=Rx(phh); nh=mitre_normal(phh)
    # standing coordinates of voxel centres
    zc=(np.arange(ns)+0.5)*dz; yc=(np.arange(nr)+0.5)*dy; xc=(np.arange(nc)+0.5)*dx
    Z,Y,X=np.meshgrid(zc,yc,xc,indexing='ij')
    body=a>0
    isprot=np.isin(a,PROTECT); isarm=np.isin(a,ARM_SOFT+FOREARM_BONES+UPPERARM_BONES)
    sideR=X<xmid
    # hip mitre on standing coords
    d=np.stack([X-H[0],Y-H[1],Z-H[2]],-1)
    trunk_hip=(d@nh)>=0
    lower_hip=(d@(Rh.T@nh))<0
    isfem=np.isin(a,FEMUR); isshb=np.isin(a,SHANK_BONES)
    trunkOK=body&(~isarm)&(trunk_hip|isprot)&(~isfem)&(~isshb)
    lowerOK=body&(~isarm)&(~isprot)&lower_hip
    # knee mitre per side
    nk=None; Rk=Rx(phk)
    u1=np.array([0,0,1.0]); u2=Rk@np.array([0,0,-1.0]); nk=(u1-u2)/np.linalg.norm(u1-u2)
    thighOK=np.zeros_like(body); shankOK=np.zeros_like(body)
    Ks={}
    for s,sel in [('R',sideR),('L',~sideR)]:
        K=J[s]['knee'].copy(); Ks[s]=K
        dk=np.stack([X-K[0],Y-K[1],Z-K[2]],-1)
        thighOK|= (lowerOK&sel&((dk@nk)>=0)&(~isshb))|(isfem&sel)
        shankOK|= (lowerOK&sel&((dk@(Rk.T@nk))<0)&(~isfem))|(isshb&sel)
    # elbow / forearm
    Re=Rx(phe); ne=mitre_normal(phe)
    foreOK=np.zeros_like(body); upperarmOK=np.zeros_like(body)
    Es={}
    for s,sel in [('R',sideR),('L',~sideR)]:
        E=J[s]['elbow'].copy(); E[2]+=1.0; Es[s]=E
        de=np.stack([X-E[0],Y-E[1],Z-E[2]],-1)
        armside=isarm&sel
        upperarmOK|= (armside&((de@ne)>=0)&(~np.isin(a,FOREARM_BONES+UPPERARM_BONES)))|(np.isin(a,UPPERARM_BONES)&sel)
        foreOK|= (armside&((de@(Re.T@ne))<0)&(~np.isin(a,UPPERARM_BONES+FOREARM_BONES)))|(np.isin(a,FOREARM_BONES)&sel)
    trunkOK|=upperarmOK
    del d
    # --- forward map of extremes to size output grid
    def fwd_points(mask, T):
        z,y,x=np.nonzero(mask)
        P=np.stack([(x+0.5)*dx,(y+0.5)*dy,(z+0.5)*dz],-1)
        return T(P)
    Tthigh=lambda P: H+(P-H)@Rh.T
    def Tshank_side(K):
        return lambda P: H+((K+(P-K)@Rk.T)-H)@Rh.T
    def Tfore_side(E,s):
        sg=+1 if s=='R' else -1
        M=Rz(np.radians(sg*psi))@Re
        return lambda P: E+(P-E)@M.T
    pts=[fwd_points(trunkOK,lambda P:P), fwd_points(thighOK,Tthigh)]
    for s,sel in [('R',sideR),('L',~sideR)]:
        pts.append(fwd_points(shankOK&sel,Tshank_side(Ks[s])))
        pts.append(fwd_points(foreOK&sel,Tfore_side(Es[s],s)))
    allp=np.concatenate(pts)
    lo=allp.min(0)-1.0; hi=allp.max(0)+1.0
    # output grid aligned with standing grid (same voxel centres for the static trunk)
    i0=int(np.floor(lo[0]/dx)); i1=int(np.ceil(hi[0]/dx))
    j0=int(np.floor(lo[1]/dy)); j1=int(np.ceil(hi[1]/dy))
    k0=int(np.floor(lo[2]/dz)); k1=int(np.ceil(hi[2]/dz))
    i0=min(i0,0); i1=max(i1,nc); j1=max(j1,nr)
    NI,NJ,NK=i1-i0,j1-j0,k1-k0
    if verbose: print(ph,'output grid',NI,NJ,NK,'=%.1fM'%(NI*NJ*NK/1e6),'origin idx',i0,j0,k0)
    out=np.zeros((NK,NJ,NI),dtype=np.int16)
    src=np.zeros((NK,NJ,NI),dtype=np.int8)   # which piece
    xo=(np.arange(i0,i1)+0.5)*dx; yo=(np.arange(j0,j1)+0.5)*dy
    YO,XO=np.meshgrid(yo,xo,indexing='ij')
    def lookup(P,okmask):
        ii=np.floor(P[...,0]/dx).astype(int); jj=np.floor(P[...,1]/dy).astype(int); kk=np.floor(P[...,2]/dz).astype(int)
        inb=(ii>=0)&(ii<nc)&(jj>=0)&(jj<nr)&(kk>=0)&(kk<ns)
        ok=np.zeros(P.shape[:-1],bool); ids=np.zeros(P.shape[:-1],np.int16)
        ok[inb]=okmask[kk[inb],jj[inb],ii[inb]]
        ids[inb]=a[kk[inb],jj[inb],ii[inb]]
        return ok,ids
    RhT=Rh  # inverse of p=H+Rh(p1-H): p1=H+Rh^T(p-H) -> as row vectors: (p-H)@Rh
    conflicts={}
    for kidx in range(NK):
        zo=(k0+kidx+0.5)*dz
        P=np.stack([XO,YO,np.full_like(XO,zo)],-1)
        cand=[]  # (priority, ok, ids, tag)
        ok,ids=lookup(P,trunkOK); prot=ok&np.isin(ids,PROTECT)
        cand.append((0,prot,ids,1)); cand.append((1,ok&~prot,ids,1))
        P1=H+(P-H)@Rh   # thigh source coords
        ok,ids=lookup(P1,thighOK); cand.append((2,ok,ids,2))
        for s,sel in [('R',XO<xmid),('L',XO>=xmid)]:
            K=Ks[s]; P2=K+(P1-K)@Rk
            ok,ids=lookup(P2,shankOK); cand.append((3,ok&sel,ids,3))
        for s,sel in [('R',XO<xmid+30),('L',XO>=xmid-30)]:
            E=Es[s]; sg=+1 if s=='R' else -1
            M=Rz(np.radians(sg*psi))@Re
            P3=E+(P-E)@M
            okf,idsf=lookup(P3,foreOK)
            # restrict to the correct side in source coordinates
            sidesrc=(P3[...,0]<xmid) if s=='R' else (P3[...,0]>=xmid)
            cand.append((4,okf&sidesrc,idsf,4))
        # promote bones of moving segments above trunk soft tissue
        BONES=np.array(FEMUR+SHANK_BONES+FOREARM_BONES)
        cand2=[]
        for pr,ok,ids,tag in cand:
            if pr>=2:
                isb=ok&np.isin(ids,BONES)
                cand2.append((0.5,isb,ids,tag)); cand2.append((pr,ok&~isb,ids,tag))
            else: cand2.append((pr,ok,ids,tag))
        cand=cand2
        filled=np.zeros(XO.shape,bool)
        for pr,ok,ids,tag in sorted(cand,key=lambda c:c[0]):
            new=ok&~filled
            clash=ok&filled
            if clash.any():
                key=('p%s'%pr); conflicts[key]=conflicts.get(key,0)+int(clash.sum())
            out[kidx][new]=ids[new]; src[kidx][new]=tag
            filled|=ok
    info=dict(ph=ph,th_hip=th_hip,th_elb=th_elb,psi=psi,grid=[NI,NJ,NK],origin_idx=[i0,j0,k0],vox=[dx,dy,dz],
              H=H.tolist(),knees={s:Ks[s].tolist() for s in Ks},elbows={s:Es[s].tolist() for s in Es},conflicts=conflicts)
    return out,src,info
if __name__=='__main__':
    ph=sys.argv[1]; th=float(sys.argv[2]) if len(sys.argv)>2 else 90.0
    out,src,info=build(ph,th)
    np.save(f'{ph}_seated_th{int(th)}.npy',out); np.save(f'{ph}_seated_src_th{int(th)}.npy',src)
    json.dump(info,open(f'{ph}_seated_th{int(th)}.json','w'),indent=1)
    print(json.dumps(info,indent=1))
