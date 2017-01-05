#!/bin/bash

chmod +x usearch_AA.sh
chmod +x usearch_CE.sh
chmod +x usearch_GT.sh
chmod +x usearch_GH.sh
chmod +x usearch_PL.sh

./usearch_AA.sh $*
./usearch_CE.sh $*
./usearch_GT.sh $*
./usearch_GH.sh $*
./usearch_PL.sh $*

touch AX
touch CH
touch HS
touch PW
touch SC

cat ./AA/wyniki_$1/wyniki_aa_AX > AX
cat ./AA/wyniki_$1/wyniki_aa_CH > CH
cat ./AA/wyniki_$1/wyniki_aa_HS > HS
cat ./AA/wyniki_$1/wyniki_aa_PW > PW
cat ./AA/wyniki_$1/wyniki_aa_SC > SC

cat ./CE/wyniki_$1/wyniki_ce_AX >> AX
cat ./CE/wyniki_$1/wyniki_ce_CH >> CH
cat ./CE/wyniki_$1/wyniki_ce_HS >> HS
cat ./CE/wyniki_$1/wyniki_ce_PW >> PW
cat ./CE/wyniki_$1/wyniki_ce_SC >> SC

cat ./GT/wyniki_$1/wyniki_gt_AX >> AX
cat ./GT/wyniki_$1/wyniki_gt_CH >> CH
cat ./GT/wyniki_$1/wyniki_gt_HS >> HS
cat ./GT/wyniki_$1/wyniki_gt_PW >> PW
cat ./GT/wyniki_$1/wyniki_gt_SC >> SC

cat ./GH/wyniki_$1/wyniki_gh_AX >> AX
cat ./GH/wyniki_$1/wyniki_gh_CH >> CH
cat ./GH/wyniki_$1/wyniki_gh_HS >> HS
cat ./GH/wyniki_$1/wyniki_gh_PW >> PW
cat ./GH/wyniki_$1/wyniki_gh_SC >> SC

cat ./PL/wyniki_$1/wyniki_pl_AX >> AX
cat ./PL/wyniki_$1/wyniki_pl_CH >> CH
cat ./PL/wyniki_$1/wyniki_pl_HS >> HS
cat ./PL/wyniki_$1/wyniki_pl_PW >> PW
cat ./PL/wyniki_$1/wyniki_pl_SC >> SC

python tabelka.py

#./query_AA.sh $*
#./query_CE.sh $*
#./query_GT.sh $*
#./query_GH.sh $*
#./query_PL.sh $*


