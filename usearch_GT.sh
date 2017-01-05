#!/bin/bash

mkdir GT
mkdir GT/wyniki_$1

./usearch8.1.1861_i86linux32 -ublast $4 -db GT.udb -evalue $1 -top_hit_only -alnout ./GT/AX_rGT_$1.aln

grep "^Target" ./GT/AX_rGT_$1.aln >./GT/wyniki_$1/wyniki_gt_AX

./usearch8.1.1861_i86linux32 -ublast $5 -db GT.udb -evalue $1 -top_hit_only -alnout ./GT/CH_rGT_$1.aln

grep "^Target" ./GT/CH_rGT_$1.aln >./GT/wyniki_$1/wyniki_gt_CH

./usearch8.1.1861_i86linux32 -ublast $6 -db GT.udb -evalue $1 -top_hit_only -alnout ./GT/HS_rGT_$1.aln

grep "^Target" ./GT/HS_rGT_$1.aln >./GT/wyniki_$1/wyniki_gt_HS

./usearch8.1.1861_i86linux32 -ublast $7 -db GT.udb -evalue $1 -top_hit_only -alnout ./GT/SC_rGT_$1.aln

grep "^Target" ./GT/SC_rGT_$1.aln >./GT/wyniki_$1/wyniki_gt_SC

./usearch8.1.1861_i86linux32 -ublast $3 -db GT.udb -evalue $1 -top_hit_only -alnout ./GT/PW_rGT_$1.aln

grep "^Target" ./GT/PW_rGT_$1.aln >./GT/wyniki_$1/wyniki_gt_PW

