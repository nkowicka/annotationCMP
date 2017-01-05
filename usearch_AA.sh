#!/bin/bash

mkdir AA
mkdir AA/wyniki_$1


./usearch8.1.1861_i86linux32 -ublast $4 -db AA.udb -evalue $1 -top_hit_only -alnout ./AA/AX_rAA_$1.aln

grep "^Target" ./AA/AX_rAA_$1.aln >./AA/wyniki_$1/wyniki_aa_AX

./usearch8.1.1861_i86linux32 -ublast $5 -db AA.udb -evalue $1 -top_hit_only -alnout ./AA/CH_rAA_$1.aln

grep "^Target" ./AA/CH_rAA_$1.aln >./AA/wyniki_$1/wyniki_aa_CH

./usearch8.1.1861_i86linux32 -ublast $6 -db AA.udb -evalue $1 -top_hit_only -alnout ./AA/HS_rAA_$1.aln

grep "^Target" ./AA/HS_rAA_$1.aln >./AA/wyniki_$1/wyniki_aa_HS

./usearch8.1.1861_i86linux32 -ublast $7 -db AA.udb -evalue $1 -top_hit_only -alnout ./AA/SC_rAA_$1.aln

grep "^Target" ./AA/SC_rAA_$1.aln >./AA/wyniki_$1/wyniki_aa_SC

./usearch8.1.1861_i86linux32 -ublast $3 -db AA.udb -evalue $1 -top_hit_only -alnout ./AA/PW_rAA_$1.aln

grep "^Target" ./AA/PW_rAA_$1.aln >./AA/wyniki_$1/wyniki_aa_PW

