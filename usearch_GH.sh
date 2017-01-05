#!/bin/bash

mkdir GH
mkdir GH/wyniki_$1

./usearch8.1.1861_i86linux32 -ublast $4 -db GH.udb -evalue $2 -top_hit_only -alnout ./GH/AX_rGH_$1.aln

grep "^Target" ./GH/AX_rGH_$1.aln >./GH/wyniki_$1/wyniki_gh_AX

./usearch8.1.1861_i86linux32 -ublast $5 -db GH.udb -evalue $2 -top_hit_only -alnout ./GH/CH_rGH_$1.aln

grep "^Target" ./GH/CH_rGH_$1.aln >./GH/wyniki_$1/wyniki_gh_CH

./usearch8.1.1861_i86linux32 -ublast $6 -db GH.udb -evalue $2 -top_hit_only -alnout ./GH/HS_rGH_$1.aln

grep "^Target" ./GH/HS_rGH_$1.aln >./GH/wyniki_$1/wyniki_gh_HS

./usearch8.1.1861_i86linux32 -ublast $7 -db GH.udb -evalue $2 -top_hit_only -alnout ./GH/SC_rGH_$1.aln

grep "^Target" ./GH/SC_rGH_$1.aln >./GH/wyniki_$1/wyniki_gh_SC

./usearch8.1.1861_i86linux32 -ublast $3 -db GH.udb -evalue $2 -top_hit_only -alnout ./GH/PW_rGH_$1.aln

grep "^Target" ./GH/PW_rGH_$1.aln >./GH/wyniki_$1/wyniki_gh_PW

