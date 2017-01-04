plikAX=open("AX","ar+").readlines()
plikCH=open("CH","ar+").readlines()
plikHS=open("HS","ar+").readlines()
plikPW=open("PW","ar+").readlines()
plikSC=open("SC","ar+").readlines()

nazwa=""
dAX={}
dCH={}
dHS={}
dPW={}
dSC={}

for line in plikAX:
   line=line.split()
   nazwa=line[2][1:]
   if nazwa not in dAX:
      dAX[nazwa]=1
   else: dAX[nazwa]+=1
   nazwa=""


for line in plikCH:
   line=line.split()
   nazwa=line[2][1:]
   if nazwa not in dCH:
            dCH[nazwa]=1
   else: dCH[nazwa]+=1
   nazwa=""

for line in plikHS:
   line=line.split()
   nazwa=line[2][1:]
   if nazwa not in dHS:
            dHS[nazwa]=1
   else: dHS[nazwa]+=1
   nazwa=""

for line in plikPW:
   line=line.split()
   nazwa=line[2][1:]
   if nazwa not in dPW:
            dPW[nazwa]=1
   else: dPW[nazwa]+=1
   nazwa=""

for line in plikSC:
   line=line.split()
   nazwa=line[2][1:]
   if nazwa not in dSC:
            dSC[nazwa]=1
   else: dSC[nazwa]+=1
   nazwa=""



import csv
c=open("MEROPS.csv","w+")
f=open("list", "r+").readlines()
n=open("meropsFamiliName","r+").readlines()
c.write("meropsFamiliName,AX,CH,HS,PW,SC"+"\n")

dAXx={}
dCHx={}
dHSx={}
dPWx={}
dSCx={}

for l in f:
   l=l.split()
   for e in dAX:
      if l[0]==e:
         if l[2] not in dAXx:
            dAXx[l[2]]=dAX[e]
         else: dAXx[l[2]]+=dAX[e]
   for e in dCH:
      if l[0]==e:
         if l[2] not in dCHx:
            dCHx[l[2]]=dCH[e]
         else: dCHx[l[2]]+=dCH[e]
   for e in dHS:
      if l[0]==e:
         if l[2] not in dHSx:
            dHSx[l[2]]=dHS[e]
         else: dHSx[l[2]]+=dHS[e]
   for e in dPW:
      if l[0]==e:
         if l[2] not in dPWx:
            dPWx[l[2]]=dPW[e]
         else: dPWx[l[2]]+=dPW[e]
   for e in dSC:
      if l[0]==e:
         if l[2] not in dSCx:
            dSCx[l[2]]=dSC[e]
         else: dSCx[l[2]]+=dSC[e]

for l in n:
   l=l.rstrip()
   if l in dAXx:
     # print dAX[l[0]]
      wAX=str(dAXx[l])
   else: wAX=""
   if l in dCHx:
      wCH=str(dCHx[l])
   else: wCH=""
   if l in dHSx:
      wHS=str(dHSx[l])
   else: wHS=""
   if l in dPWx:
      wPW=str(dPWx[l])
   else: wPW=""
   if l in dSCx:
      wSC=str(dSCx[l])
   else: wSC=""
   w=l+","+wAX+","+wCH+","+wHS+","+wPW+","+wSC+"\n"
   c.write(w)
