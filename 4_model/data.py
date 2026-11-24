"""Physical and dosimetric data: photon emissions, ICRP 74 and ICRP 116 coefficients, tissues and source regions."""
import numpy as np, re
import paths
# ---- 177Lu photon emissions (DDEP/LNHB 2025 recommended data; L X-rays excluded) ----
LU177_LINES=[  # E (MeV), photons per 100 decays
 (0.054612,1.555),(0.0557909,2.72),(0.063234,0.898),(0.065132,0.240),(0.0716425,0.1716),
 (0.11295005,6.223),(0.1367245,0.04731),(0.2083661,10.425),(0.2496742,0.2007),(0.3213159,0.2096)]
LU177_YIELD=sum(y for e,y in LU177_LINES)/100.0   # photons per decay (0.2269)
LU177_THALF_D=6.6443
# ---- ICRP 74 (Table A.21) fluence -> H*(10), pSv cm2 ----
HSTAR_E=[0.010,0.015,0.020,0.030,0.040,0.050,0.060,0.080,0.100,0.150,0.200,0.300,0.400,0.500,0.600,0.800,1.0,
        1.5,2.0,3.0,4.0,5.0,6.0,8.0,10.0]
HSTAR_F=[0.061,0.83,1.05,0.81,0.64,0.55,0.51,0.53,0.61,0.89,1.20,1.80,2.38,2.93,3.44,4.38,5.20,
        6.90,8.60,11.1,13.4,15.5,17.6,21.6,25.6]
# ---- ICRP 116: air kerma per fluence (pGy cm2) derived as (E/Phi)/(E/Ka), AP geometry ----
def icrp116_table(fn):
    rows=[]
    for line in open(fn,encoding='latin-1'):
        p=line.split()
        if len(p)==7 and re.match(r'^[0-9.]+$',p[0]):
            rows.append([float(x) for x in p])
    return np.array(rows)
paths.check_icrp(paths.ICRP116_PHOTON_E,paths.ICRP116_PHOTON_E_KERMA,paths.ICRP116_SKELETAL/'Table D.1 - Regional DRF.txt',
                 paths.ICRP116_SKELETAL/'Table 3.2.txt')
EPHI=icrp116_table(paths.ICRP116_PHOTON_E)
EKA=icrp116_table(paths.ICRP116_PHOTON_E_KERMA)
_ek={round(r[0],4):r[1] for r in EKA}
KA_E=[]; KA_F=[]
for r in EPHI:
    e=round(r[0],4)
    if e in _ek and e<=10.0:
        KA_E.append(e); KA_F.append(round(r[1]/_ek[e],4))
# ---- ICRP 116 Table D.1 skeletal DRF (Gy m2): AM (active marrow) and TM50 (endosteum) ----
def read_drf():
    fn=paths.ICRP116_SKELETAL/'Table D.1 - Regional DRF.txt'
    lines=open(fn,encoding='latin-1').read().splitlines()
    drf={}   # (organID, target) -> list over energies
    energies=None
    i=0; blocks=[]
    while i<len(lines):
        if 'Organ ID' in lines[i]:
            ids=[int(x) for x in re.findall(r'Organ ID:\s*(\d+)',lines[i])]
            # data rows follow after header lines
            j=i+1; data=[]
            while j<len(lines) and 'Organ ID' not in lines[j]:
                p=[t for t in lines[j].split('\t') if t.strip()!='']
                if p and re.match(r'^[0-9.]+$',p[0].strip()) and len(p)>1:
                    data.append(p)
                j+=1
            blocks.append((ids,data)); i=j
        else: i+=1
    for ids,data in blocks:
        E=[float(r[0]) for r in data]
        if energies is None: energies=E
        for r in data:
            vals=r[1:]
            assert len(vals)==2*len(ids),(ids,r)
        for n,oid in enumerate(ids):
            am=[r[1+2*n].strip() for r in data]; tm=[r[2+2*n].strip() for r in data]
            if all(v!='NA' for v in am): drf[(oid,'AM')]=[float(v) for v in am]
            if all(v!='NA' for v in tm): drf[(oid,'TM50')]=[float(v) for v in tm]
    return energies,drf
DRF_E,DRF=read_drf()
# ---- ICRP 116 Table 3.2 reference skeletal masses (g): (AM_mass_male, TM50_male, AM_female, TM50_female)
def read_skel_masses():
    fn=paths.ICRP116_SKELETAL/'Table 3.2.txt'
    out={}
    for line in open(fn,encoding='latin-1'):
        p=[t.strip() for t in line.split('\t') if t.strip()!='']
        if p and p[0].isdigit():
            nums=[float(x) for x in p if re.match(r'^[0-9.]+$',x)][1:]   # drop organ id
            # nums: AMm, TM50m, AMf, TM50f
            out[int(p[0])]=dict(AM_M=nums[0],TM50_M=nums[1],AM_F=nums[2],TM50_F=nums[3])
    return out
SKEL_MASS=read_skel_masses()
SPONGIOSA=[14,17,20,23,25,27,29,32,35,38,40,42,44,46,48,50,52,54,56]
MEDULLARY=[15,18,21,30,33,36]
CORTICAL=[13,16,19,22,24,26,28,31,34,37,39,41,43,45,47,49,51,53,55]
# ---- target tissue groups (ICRP 103) ----
TISSUES=[  # tag, description, AM ids, AF ids
 ('COL','Colon wall',[76,78,80,82,84],[76,78,80,82,84]),
 ('LUN','Lungs',[96,97,98,99],[96,97,98,99]),
 ('STW','Stomach wall',[72],[72]),
 ('BRE','Breast glandular',[63,65],[63,65]),
 ('GON','Gonads',[129,130],[111,112]),
 ('UBW','Urinary bladder wall',[137],[137]),
 ('OES','Oesophagus',[110],[110]),
 ('LIV','Liver',[95],[95]),
 ('THY','Thyroid',[132],[132]),
 ('BRA','Brain',[61],[61]),
 ('SAL','Salivary glands',[120,121],[120,121]),
 ('SKI','Skin',[122,123,124,125,141],[122,123,124,125,141]),
 ('ADR','Adrenals',[1,2],[1,2]),
 ('ETR','Extrathoracic region',[3,4],[3,4]),
 ('GBW','Gall bladder wall',[70],[70]),
 ('HTW','Heart wall',[87],[87]),
 ('KID','Kidneys',[89,90,91,92,93,94],[89,90,91,92,93,94]),
 ('LYN','Lymphatic nodes',[100,101,102,103,104,105],[100,101,102,103,104,105]),
 ('MUS','Muscle',[106,107,108,109],[106,107,108,109]),
 ('ORM','Oral mucosa',[5,6],[5,6]),
 ('PAN','Pancreas',[113],[113]),
 ('PRU','Prostate (AM) / Uterus (AF)',[115],[139]),
 ('SIW','Small intestine wall',[74],[74]),
 ('SPL','Spleen',[127],[127]),
 ('THM','Thymus',[131],[131]),
 ('LEN','Eye lenses',[66,68],[66,68]),
 ('REC','Rectum wall',[86],[86]),
]
# ---- source regions in the patient (partition + extra) ----
REGIONS=[ # tag, description, organ ids (patient AM)
 ('KID','Kidneys',[89,90,91,92,93,94]),
 ('LIV','Liver',[95]),
 ('SPL','Spleen',[127]),
 ('SAL','Salivary glands',[120,121]),
 ('UBC','Urinary bladder contents',[138]),
 ('UBW','Urinary bladder wall',[137]),
 ('PRO','Prostate',[115]),
 ('SIN','Small intestine wall+contents',[74,75]),
 ('COL','Colon+rectum walls+contents',[76,77,78,79,80,81,82,83,84,85,86]),
 ('STO','Stomach wall+contents',[72,73]),
 ('BLD','Blood (vessels, heart & lung blood)',[9,10,11,12,88,96,98]),
 ('HTW','Heart wall',[87]),
 ('LUN','Lung tissue',[97,99]),
 ('SKL','Skeleton excl. red-marrow spongiosa (cortical, medullary, cartilage, teeth, appendicular spongiosa)',CORTICAL+[17,20,23,32,35,38]+MEDULLARY+[57,58,59,60,128]),
 ('SPO','Spongiosa of red-marrow sites, weighted by RBM mass (marrow / bone metastases)',None),
 ('MUS','Muscle',[106,107,108,109]),
 ('ADI','Adipose/residual tissue (incl. breast adipose)',[116,117,118,119,62,64]),
 ('SKN','Skin',[122,123,124,125,141]),
 ('BRN','Brain+spinal cord',[61,126]),
 ('LNT','Lymph nodes, trunk',[103]),
 ('LNO','Lymph nodes, other',[100,101,102,104,105]),
 ('OTH','Other organs',[1,2,3,4,5,6,7,8,63,65,66,67,68,69,70,71,110,113,114,129,130,131,132,133,134,135,136]),
 ('PNT','Point source at trunk centre (simplified model)',None),
 ('LIN','Line source along trunk axis (simplified model)',None),
]
RBM_SITES=[14,25,27,29,40,42,44,46,48,50,52,54,56]
def check_partition():
    ids=[i for t,d,l in REGIONS if l for i in l]+RBM_SITES
    assert len(ids)==len(set(ids)), 'duplicate ids in partition'
    allids=set(range(1,142))-{111,112,139,140}
    missing=allids-set(ids)
    return missing
if __name__=='__main__':
    print('Lu177 yield',LU177_YIELD)
    print('Ka/Phi',list(zip(KA_E,KA_F))[:16])
    print('DRF energies',DRF_E)
    print('DRF keys',sorted(set(k[0] for k in DRF)), len(DRF))
    print('AM DRF sites',sorted(k[0] for k in DRF if k[1]=='AM'))
    print('TM50 DRF sites',sorted(k[0] for k in DRF if k[1]=='TM50'))
    print('skel masses',SKEL_MASS)
    print('partition missing ids',check_partition())
# =====================================================================================
# photon spectra of the four radionuclides (photons per decay of the PARENT, daughters in the
# time-integrated chain; L X-rays excluded).  Energies keV, intensities per 100 decays of
# the emitting nuclide; 'mult' = number of decays of that nuclide per parent decay.
#  177Lu ........ DDEP/LNHB (2025)
#  161Tb ........ ENSDF values as tabulated in Table 1 of EJNMMI Res (2025) 10.1186/s13550-025-01326-3
#  212Pb chain .. LNHB/DDEP tables: Pb-212 (Zimmerman 2024/25), Bi-212 (Nichols 2011), Tl-208 (Nichols 2016)
#                 Bi-212: 64.07 % beta- -> Po-212 (no photons), 35.93 % alpha -> Tl-208
#  225Ac chain .. LNHB/DDEP tables: Ac-225 (Mougeot et al. 2023), Fr-221 (2008), Bi-213 (2013), Tl-209 (2011)
#                 Bi-213: 97.91 % beta- -> Po-213, 2.09 % alpha -> Tl-209; At-217, Po-213, Pb-209: photons negligible
# Lines < 0.05 % per decay of the emitter were not transcribed (except 161Tb, >= 0.01 %).
# =====================================================================================
NUCLIDE_DATA={
 'Lu177':dict(thalf_h=6.6443*24, chain=[('Lu-177',1.0,[(e*1000,y) for e,y in LU177_LINES])]),
 'Tb161':dict(thalf_h=6.953*24, chain=[('Tb-161',1.0,[
     (25.651,23.2),(28.7,0.037),(43.8,0.06),(45.208,6.28),(45.998,11.2),(48.915,17.0),(52.2,3.6),(53.6,0.94),
     (57.190,1.78),(59.2,0.022),(74.567,10.2),(77.4,0.06),(87.94,0.183),(103.07,0.101),(106.10,0.078),
     (286.0,0.0143),(292.0,0.058),(344.0,0.0133),(418.0,0.0081),(476.0,0.0182),(550.0,0.036)])]),
 'Pb212':dict(thalf_h=10.630, chain=[
     ('Pb-212',1.0,[(74.8157,9.94),(77.1088,16.63),(87.344,5.69),(90.074,1.74),
                    (115.183,0.5862),(176.640,0.0537),(238.632,43.26),(300.089,3.238),(415.272,0.013)]),
     ('Bi-212',1.0,[(76.864,0.0388),(79.293,0.0647),(89.807,0.0223),(70.8325,0.0525),(72.8725,0.089),(82.577,0.0301),
                    (39.858,1.07),(288.18,0.32),(328.04,0.121),(452.98,0.34),(727.330,6.65),(785.37,1.11),(893.408,0.38),
                    (952.12,0.14),(1078.63,0.55),(1512.70,0.29),(1620.738,1.51),(1679.450,0.07),(1805.96,0.12)]),
     ('Tl-208',0.3593,[(72.8049,2.03),(74.97,3.42),(84.937,1.17),(87.58,0.353),
                    (211.52,0.18),(233.37,0.31),(252.71,0.78),(277.37,6.6),(510.74,22.5),(583.187,85.0),(588.108,0.06),
                    (722.26,0.24),(763.45,1.80),(835.90,0.076),(860.53,12.4),(927.64,0.128),(982.70,0.204),(1093.90,0.44),
                    (1283.04,0.052),(2614.511,99.755)])]),
 'Ac225':dict(thalf_h=9.9172*24, chain=[
     ('Ac-225',1.0,[(83.23,1.06),(86.1,1.73),(97.474,0.60),(100.548,0.196),
                    (62.950,0.49),(73.896,0.309),(87.385,0.271),(94.892,0.105),(99.596,0.76),(99.752,1.08),(100.897,0.096),
                    (108.404,0.255),(111.517,0.313),(119.899,0.080),(123.670,0.087),(145.147,0.146),(150.063,0.693),
                    (153.955,0.205),(157.243,0.36),(187.921,0.53),(195.789,0.148),(216.905,0.32),(224.567,0.112),
                    (253.551,0.132),(452.216,0.107)]),
     ('Fr-221',0.999952,[(78.94,0.96),(81.51,1.59),(92.315,0.55),(95.211,0.18),
                    (100.25,0.156),(171.83,0.069),(218.12,11.42),(410.64,0.1204)]),
     ('Bi-213',1.0,[(76.864,1.103),(79.293,1.84),(89.807,0.633),(92.618,0.197),
                    (292.80,0.421),(323.70,0.1584),(440.44,26.1),(807.37,0.287),(1003.58,0.0535),(1100.16,0.265),(1119.42,0.0543)]),
     ('Tl-209',0.0209,[(72.8049,5.85),(74.97,9.84),(84.937,3.36),(87.58,1.016),
                    (117.224,77.22),(284.04,0.14),(375.5,0.070),(465.128,96.62),(469.7,0.12),(582.4,0.312),(748.3,0.080),
                    (755.6,0.11),(860.5,0.26),(873.5,0.59),(890.0,0.12),(902.8,0.10),(920.43,0.631),(970.3,0.054),
                    (1239.66,0.420),(1329.29,0.10),(1566.93,99.707),(1661.1,0.10),(1673.2,0.48)])]),
}
def nuclide_lines(nuc,emin_kev=20.0):
    """[(E MeV, photons per parent decay)] for the whole chain"""
    out=[]
    for name,mult,lines in NUCLIDE_DATA[nuc]['chain']:
        for e,y in lines:
            if e>=emin_kev: out.append((e/1000.0,mult*y/100.0))
    return sorted(out)
# ---- source energy grid (MeV) for the energy-resolved patient source ----
EGRID=[0.02565,0.035,0.0457,0.04892,0.0526,0.0554,0.0632,0.07457,0.0771,0.0873,0.1000,0.11295,0.150,0.1879,
       0.20837,0.21812,0.23863,0.27737,0.30009,0.44044,0.51074,0.58319,0.72733,0.86053,1.1000,1.56693,2.61451]
NUC_SHARE={'Lu177':0.30,'Tb161':0.25,'Pb212':0.30,'Ac225':0.15}   # share of histories by nuclide importance
P_MIN=0.004
REGION_T0=1000.0          # shakes; region r (1..24) photons are born at t = r*REGION_T0 (tally T0 bins)
# crude importance proxy (only used to choose sampling probabilities): air kerma per photon x body transmission
_E_TAB=[0.02,0.03,0.04,0.05,0.06,0.08,0.10,0.15,0.20,0.30,0.40,0.50,0.60,0.80,1.0,1.5,2.0,3.0]
_MU_W=[0.8096,0.3756,0.2683,0.2269,0.2059,0.1837,0.1707,0.1505,0.1370,0.1186,0.1061,0.09687,0.08956,0.07865,0.07072,0.05754,0.04942,0.03969]
_MUEN_AIR=[0.5389,0.1537,0.06833,0.04098,0.03041,0.02407,0.02325,0.02496,0.02672,0.02872,0.02949,0.02966,0.02953,0.02882,0.02789,0.02547,0.02345,0.02057]
def _loglog(x,X,Y):
    lx=np.log(np.clip(x,X[0],X[-1])); return float(np.exp(np.interp(lx,np.log(X),np.log(Y))))
def importance_proxy(e,d=6.0):
    mu=_loglog(e,_E_TAB,_MU_W)
    return e*_loglog(e,_E_TAB,_MUEN_AIR)*(1+mu*d)*np.exp(-mu*d)
def grid_weights(e,grid=None):
    """log-linear interpolation weights of line energy e on the grid -> {index: weight}"""
    g=np.array(grid or EGRID)
    if e<=g[0]: return {0:1.0}
    if e>=g[-1]: return {len(g)-1:1.0}
    k=int(np.searchsorted(g,e))
    if abs(g[k]-e)<1e-9: return {k:1.0}
    f=np.log(e/g[k-1])/np.log(g[k]/g[k-1])
    return {k-1:1-f,k:f}
def sampling_probabilities():
    n=len(EGRID); P=np.zeros(n); info={}
    for nuc,share in NUC_SHARE.items():
        f=np.zeros(n)
        for e,y in nuclide_lines(nuc):
            imp=y*importance_proxy(e)
            for k,w in grid_weights(e).items(): f[k]+=w*imp
        f/=f.sum(); P+=share*f; info[nuc]=f
    P=P_MIN+(1-n*P_MIN)*P
    return P/P.sum(),info
