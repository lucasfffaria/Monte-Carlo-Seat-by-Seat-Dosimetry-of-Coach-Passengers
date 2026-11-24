"""Joint centres (hip, knee, ankle, elbow, shoulder) of the ICRP 110 phantoms, located from the bone voxels."""
import numpy as np
import phantom_cache
VOX={'AM':(0.2137,0.2137,0.8),'AF':(0.1775,0.1775,0.484)}
def load(ph):
    return phantom_cache.std_array(ph)
def centroid(a,ph,ids,mask=None):
    dx,dy,dz=VOX[ph]
    m=np.isin(a,ids)
    if mask is not None: m&=mask
    z,y,x=np.nonzero(m)
    return np.array([(x.mean()+0.5)*dx,(y.mean()+0.5)*dy,(z.mean()+0.5)*dz]), len(z)
def joints(ph):
    a=load(ph); dx,dy,dz=VOX[ph]; ns,nr,nc=a.shape
    zz=(np.arange(ns)+0.5)*dz; xx=(np.arange(nc)+0.5)*dx
    # body midline from pelvis bone centroid
    cpel,_=centroid(a,ph,[41,42]); xmid=cpel[0]
    out={'xmid':xmid}
    X=np.broadcast_to(xx[None,None,:],a.shape); Z=np.broadcast_to(zz[:,None,None],a.shape)
    for side,sel in [('R',X<xmid),('L',X>=xmid)]:
        # femur upper top
        fem=np.isin(a,[28,29,30])&sel
        z,y,x=np.nonzero(fem); ztop=(z.max()+1)*dz
        rh={'AM':2.45,'AF':2.15}[ph]
        top=fem&(Z>ztop-2*rh)
        z1,y1,x1=np.nonzero(top)
        # head is medial part: take voxels closer to midline than median x
        xs=(x1+0.5)*dx; med=np.median(np.abs(xs-xmid))
        keep=np.abs(xs-xmid)<=med
        hip=np.array([xs[keep].mean(),((y1[keep]+0.5)*dy).mean(),ztop-rh])
        # knee
        femL=np.isin(a,[31,32,33])&sel; tib=np.isin(a,[34,35,36])&sel
        zf=np.nonzero(femL)[0].min()*dz; zt=(np.nonzero(tib)[0].max()+1)*dz
        cond=femL&(Z<zf+3.0); c,_=centroid(a,ph,[31,32,33],cond)
        knee=np.array([c[0],c[1],0.5*(zf+zt)])
        # ankle
        foot=np.isin(a,[37,38])&sel
        zt2=np.nonzero(tib)[0].min()*dz; zfo=(np.nonzero(foot)[0].max()+1)*dz
        tb=tib&(Z<zt2+3.0); c2,_=centroid(a,ph,[34,35,36],tb)
        ankle=np.array([c2[0],c2[1],0.5*(zt2+zfo)])
        # elbow
        hum=np.isin(a,[16,17,18])&sel; uln=np.isin(a,[19,20,21])&sel
        zh=np.nonzero(hum)[0].min()*dz; zu=(np.nonzero(uln)[0].max()+1)*dz
        hb=hum&(Z<zh+3.0); c3,_=centroid(a,ph,[16,17,18],hb)
        elbow=np.array([c3[0],c3[1],0.5*(zh+zu)])
        # shoulder (humeral head): top of humerus upper
        hu=np.isin(a,[13,14,15])&sel; z4=np.nonzero(hu)[0].max()*dz
        c4,_=centroid(a,ph,[13,14,15],hu&(Z>z4-4.0))
        out[side]=dict(hip=hip,knee=knee,ankle=ankle,elbow=elbow,shoulder=c4,
                       femtop=ztop,femlow_bottom=zf,tib_top=zt,tib_bottom=zt2,foot_top=zfo,hum_bottom=zh,uln_top=zu)
    # sole and lowest
    out['zmin_body']=np.nonzero(a.any((1,2)))[0].min()*dz
    return out
if __name__=='__main__':
    import pprint
    for ph in ['AM','AF']:
        j=joints(ph); print(ph); pprint.pprint({k:(np.round(v,2) if isinstance(v,np.ndarray) else ({kk:np.round(vv,2) for kk,vv in v.items()} if isinstance(v,dict) else v)) for k,v in j.items()})
