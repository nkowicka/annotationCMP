plikAX=open("AX","ar+").readlines()
plikCH=open("CH","ar+").readlines()
plikHS=open("HS","ar+").readlines()
plikPW=open("PW","ar+").readlines()
plikSC=open("SC","ar+").readlines()

nazwa=""
stop=0
dAX={}
dCH={}
dHS={}
dPW={}
dSC={}

for line in plikAX:
   line=line.split()
   naz=line[2][5:]
   for i in naz:
      if i!="|" and stop==0:
         nazwa+=i
      if i=="|":
         stop=1
#   print nazwa
   if nazwa not in dAX:
      dAX[nazwa]=1
   else: dAX[nazwa]+=1
   nazwa=""
   stop=0


for line in plikCH:
   line=line.split()
   naz=line[2][5:]
   for i in naz:
      if i!="|" and stop==0:
         nazwa+=i
      if i=="|":
         stop=1
   if nazwa not in dCH:
            dCH[nazwa]=1
   else: dCH[nazwa]+=1
   nazwa=""
   stop=0

for line in plikHS:
   line=line.split()
   naz=line[2][5:]
   for i in naz:
      if i!="|" and stop==0:
         nazwa+=i
      if i=="|":
         stop=1
   if nazwa not in dHS:
            dHS[nazwa]=1
   else: dHS[nazwa]+=1
   nazwa=""
   stop=0

for line in plikPW:
   line=line.split()
   naz=line[2][5:]
   for i in naz:
      if i!="|" and stop==0:
         nazwa+=i
      if i=="|":
         stop=1
   if nazwa not in dPW:
            dPW[nazwa]=1
   else: dPW[nazwa]+=1
   nazwa=""
   stop=0

for line in plikSC:
   line=line.split()
   naz=line[2][5:]
   for i in naz:
      if i!="|" and stop==0:
         nazwa+=i
      if i=="|":
         stop=1
   if nazwa not in dSC:
            dSC[nazwa]=1
   else: dSC[nazwa]+=1
   nazwa=""
   stop=0


import csv
c=open("PHI.csv","w+")
f=open("phiFamily", "r+").readlines()
c.write("phi accession,AX,CH,HS,PW,SC"+"\n")


for l in f:
   l=l.rstrip()
   if l in dAX:
     # print dAX[l[0]]
      wAX=str(dAX[l])
   else: wAX=""
   if l in dCH:
      wCH=str(dCH[l])
   else: wCH=""
   if l in dHS:
      wHS=str(dHS[l])
   else: wHS=""
   if l in dPW:
      wPW=str(dPW[l])
   else: wPW=""
   if l in dSC:
      wSC=str(dSC[l])
   else: wSC=""
   w=l+","+wAX+","+wCH+","+wHS+","+wPW+","+wSC+"\n"
   c.write(w)
