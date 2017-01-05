#!/bin/bash

chmod +x usearch_phi.sh

./usearch_phi.sh $*

touch AX
touch CH
touch HS
touch PW
touch SC


sed -e "s/#/|/g" ./phi/wyniki_$1/wyniki_phi_AX > AX
sed -e "s/#/|/g" ./phi/wyniki_$1/wyniki_phi_CH > CH
sed -e "s/#/|/g" ./phi/wyniki_$1/wyniki_phi_HS > HS
sed -e "s/#/|/g" ./phi/wyniki_$1/wyniki_phi_PW > PW
sed -e "s/#/|/g" ./phi/wyniki_$1/wyniki_phi_SC > SC

python tabelkap.py

#./query_phi.sh $*
