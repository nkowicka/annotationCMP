#!/bin/bash

mkdir CE
mkdir CE/wyniki

./usearch8.1.1861_i86linux32 -ublast $4 -db CE.udb -evalue $1 -top_hit_only -alnout ./CE/AX_rCE_$1.aln

grep "^Target" ./CE/AX_rCE_$1.aln >./CE/wyniki_$1/wyniki_ce_AX

./usearch8.1.1861_i86linux32 -ublast $5 -db CE.udb -evalue $1 -top_hit_only -alnout ./CE/CH_rCE_$1.aln

grep "^Target" ./CE/CH_rCE_$1.aln >./CE/wyniki_$1/wyniki_ce_CH

./usearch8.1.1861_i86linux32 -ublast $6 -db CE.udb -evalue $1 -top_hit_only -alnout ./CE/HS_rCE_$1.aln

grep "^Target" ./CE/HS_rCE_$1.aln >./CE/wyniki_$1/wyniki_ce_HS

./usearch8.1.1861_i86linux32 -ublast $7 -db CE.udb -evalue $1 -top_hit_only -alnout ./CE/SC_rCE_$1.aln

grep "^Target" ./CE/SC_rCE_$1.aln >./CE/wyniki_$1/wyniki_ce_SC

./usearch8.1.1861_i86linux32 -ublast $3 -db CE.udb -evalue $1 -top_hit_only -alnout ./CE/PW_rCE_$1.aln

grep "^Target" ./CE/PW_rCE_$1.aln >./CE/wyniki_$1/wyniki_ce_PW

