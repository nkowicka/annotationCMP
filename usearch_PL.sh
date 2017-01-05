#!/bin/bash

mkdir PL
mkdir PL/wyniki_$1


echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo $7

./usearch8.1.1861_i86linux32 -ublast $4 -db PL.udb -evalue $1 -top_hit_only -alnout ./PL/AX_rPL_$1.aln

grep "^Target" ./PL/AX_rPL_$1.aln >./PL/wyniki_$1/wyniki_pl_AX

./usearch8.1.1861_i86linux32 -ublast $5 -db PL.udb -evalue $1 -top_hit_only -alnout ./PL/CH_rPL_$1.aln

grep "^Target" ./PL/CH_rPL_$1.aln >./PL/wyniki_$1/wyniki_pl_CH

./usearch8.1.1861_i86linux32 -ublast $6 -db PL.udb -evalue $1 -top_hit_only -alnout ./PL/HS_rPL_$1.aln

grep "^Target" ./PL/HS_rPL_$1.aln >./PL/wyniki_$1/wyniki_pl_HS

./usearch8.1.1861_i86linux32 -ublast $7 -db PL.udb -evalue $1 -top_hit_only -alnout ./PL/SC_rPL_$1.aln

grep "^Target" ./PL/SC_rPL_$1.aln >./PL/wyniki_$1/wyniki_pl_SC

./usearch8.1.1861_i86linux32 -ublast $3 -db PL.udb -evalue $1 -top_hit_only -alnout ./PL/PW_rPL_$1.aln

grep "^Target" ./PL/PW_rPL_$1.aln >./PL/wyniki_$1/wyniki_pl_PW

