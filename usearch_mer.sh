#!/bin/bash

mkdir mer
mkdir mer/wyniki_$1

./usearch8.1.1861_i86linux32 -ublast $4 -db merops_scan.udb -evalue $1 -top_hit_only -alnout ./mer/AX_rMER_$1.aln

grep "^Target" ./mer/AX_rMER_$1.aln >./mer/wyniki_$1/wyniki_mer_AX

./usearch8.1.1861_i86linux32 -ublast $5 -db merops_scan.udb -evalue $1 -top_hit_only -alnout ./mer/CH_rMER_$1.aln

grep "^Target" ./mer/CH_rMER_$1.aln >./mer/wyniki_$1/wyniki_mer_CH

./usearch8.1.1861_i86linux32 -ublast $6 -db merops_scan.udb -evalue $1 -top_hit_only -alnout ./mer/HS_rMER_$1.aln

grep "^Target" ./mer/HS_rMER_$1.aln >./mer/wyniki_$1/wyniki_mer_HS

./usearch8.1.1861_i86linux32 -ublast $7 -db merops_scan.udb -evalue $1 -top_hit_only -alnout ./mer/SC_rMER_$1.aln

grep "^Target" ./mer/SC_rMER_$1.aln >./mer/wyniki_$1/wyniki_mer_SC

./usearch8.1.1861_i86linux32 -ublast $3 -db merops_scan.udb -evalue $1 -top_hit_only -alnout ./mer/PW_rMER_$1.aln

grep "^Target" ./mer/PW_rMER_$1.aln >./mer/wyniki_$1/wyniki_mer_PW

