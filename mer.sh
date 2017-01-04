#!/bin/bash

./usearch_mer.sh $*

touch AX
touch CH
touch HS
touch PW
touch SC


cat ./mer/wyniki_$1/wyniki_mer_AX > AX
cat ./mer/wyniki_$1/wyniki_mer_CH > CH
cat ./mer/wyniki_$1/wyniki_mer_HS > HS
cat ./mer/wyniki_$1/wyniki_mer_PW > PW
cat ./mer/wyniki_$1/wyniki_mer_SC > SC

python tabelkam.py

#./query_mer.sh $*
