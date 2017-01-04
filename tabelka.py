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
stop=0

for line in plikAX:
   line=line.split()
   fraza=line[2]
   dl=len(fraza)
   for i in range(dl):
      if fraza[i]=="|" and stop==0:
         stop=1
         i+=1
         while fraza[i]!="|":
            nazwa+=fraza[i]
            i+=1
         if nazwa not in dAX:
            dAX[nazwa]=1
         else: dAX[nazwa]+=1
   nazwa=""
   stop=0
#print d

for line in plikCH:
   line=line.split()
   fraza=line[2]
   dl=len(fraza)
   for i in range(dl):
      if fraza[i]=="|" and stop==0:
         stop=1
         i+=1
         while fraza[i]!="|":
            nazwa+=fraza[i]
            i+=1
         if nazwa not in dCH:
            dCH[nazwa]=1
         else: dCH[nazwa]+=1
   nazwa=""
   stop=0

for line in plikHS:
   line=line.split()
   fraza=line[2]
   dl=len(fraza)
   for i in range(dl):
      if fraza[i]=="|" and stop==0:
         stop=1
         i+=1
         while fraza[i]!="|":
            nazwa+=fraza[i]
            i+=1
         if nazwa not in dHS:
            dHS[nazwa]=1
         else: dHS[nazwa]+=1
   nazwa=""
   stop=0

for line in plikPW:
   line=line.split()
   fraza=line[2]
   dl=len(fraza)
   for i in range(dl):
      if fraza[i]=="|" and stop==0:
         stop=1
         i+=1
         while fraza[i]!="|":
            nazwa+=fraza[i]
            i+=1
         if nazwa not in dPW:
            dPW[nazwa]=1
         else: dPW[nazwa]+=1
   nazwa=""
   stop=0

for line in plikSC:
   line=line.split()
   fraza=line[2]
   dl=len(fraza)
   for i in range(dl):
      if fraza[i]=="|" and stop==0:
         stop=1
         i+=1
         while fraza[i]!="|":
            nazwa+=fraza[i]
            i+=1
         if nazwa not in dSC:
            dSC[nazwa]=1
         else: dSC[nazwa]+=1
   nazwa=""
   stop=0



import csv
c=open("CAZY.csv","w+")
f=open("familiName", "r+").readlines()
c.write("familiName,AX,CH,HS,PW,SC"+"\n")
for l in f:
   l=l.rstrip()
   if l in dAX:
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
