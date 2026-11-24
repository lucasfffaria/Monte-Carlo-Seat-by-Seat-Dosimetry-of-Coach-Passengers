"""Minimal MCTAL reader (MCNP6) -> dict of tallies with numpy arrays shaped (f,d,u,s,m,c,e,t,2)"""
import numpy as np, re
def read_mctal(fn):
    L=open(fn).read().split('\n')
    i=0
    hdr=L[0].split(); nps=int(hdr[-2]) if len(hdr)>=2 else None
    # header: code ver probid(2 tokens) knod nps rnr
    try: nps=int(L[0].split()[-2])
    except: pass
    while not L[i].startswith('ntal'): i+=1
    ntal=int(L[i].split()[1]); i+=1
    nums=[]
    while len(nums)<ntal:
        nums+= [int(x) for x in L[i].split()]; i+=1
    tallies={}
    while i<len(L):
        if L[i].startswith('tally'):
            tn=int(L[i].split()[1]); i+=1
            t={'num':tn}
            # optional particle list line if i<0 (we skip lines until 'f')
            comment=[]
            while not re.match(r'^f\s',L[i]):
                comment.append(L[i]); i+=1
            t['comment']=' '.join(c.strip() for c in comment[1:])
            dims={}
            order=['f','d','u','s','m','c','e','t']
            for key in order:
                line=L[i]; tok=line.split()
                k0=tok[0]
                n=int(tok[-1]) if len(tok)>1 else 0
                dims[key]=n if n>0 else 1
                # read bin values list for f/u/e/t lines
                i+=1
                if key in ('f','u','e','t','c') and n>0:
                    # list of bin values follows unless 'u' with only count (ut) etc.; consume numeric lines until next key
                    pass
                while i<len(L) and not re.match(r'^(f|d|u|ut|uc|s|m|c|cr|e|et|t|tt|tc|vals)\b',L[i]) :
                    i+=1
                if L[i].startswith('vals'): break
            # find vals
            while not L[i].startswith('vals'): i+=1
            i+=1
            vals=[]
            while i<len(L) and not L[i].startswith('tfc') and not L[i].startswith('tally'):
                vals+= [float(x) for x in L[i].split()]; i+=1
            arr=np.array(vals).reshape(-1,2)
            t['dims']=dims; t['vals']=arr
            tallies[tn]=t
        else: i+=1
    return {'nps':nps,'tallies':tallies}
if __name__=='__main__':
    import sys
    m=read_mctal(sys.argv[1])
    print('nps',m['nps'])
    for tn,t in list(m['tallies'].items())[:3]:
        print(tn,t['dims'],t['vals'].shape,t['comment'][:60])
