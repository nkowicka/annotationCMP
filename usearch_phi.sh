#!/bin/bash

mkdir 	phi
mkdir phi/wyniki_$1

./usearch8.1.1861_i86linux32 -ublast $4 -db PHI.udb -evalue $1 -top_hit_only -alnout ./phi/AX_rPHI_$1.aln


grep "^Target" ./phi/AX_rPHI_$1.aln >./phi/wyniki_$1/wyniki_phi_AX

./usearch8.1.1861_i86linux32 -ublast $5 -db PHI.udb -evalue $1 -top_hit_only -alnout ./phi/CH_rPHI_$1.aln

grep "^Target" ./phi/CH_rPHI_$1.aln >./phi/wyniki_$1/wyniki_phi_CH

./usearch8.1.1861_i86linux32 -ublast $6 -db PHI.udb -evalue $1 -top_hit_only -alnout ./phi/HS_rPHI_$1.aln

grep "^Target" ./phi/HS_rPHI_$1.aln >./phi/wyniki_$1/wyniki_phi_HS

./usearch8.1.1861_i86linux32 -ublast $7 -db PHI.udb -evalue $1 -top_hit_only -alnout ./phi/SC_rPHI_$1.aln

grep "^Target" ./phi/SC_rPHI_$1.aln >./phi/wyniki_$1/wyniki_phi_SC

./usearch8.1.1861_i86linux32 -ublast $3 -db PHI.udb -evalue $1 -top_hit_only -alnout ./phi/PW_rPHI_$1.aln

grep "^Target" ./phi/PW_rPHI_$1.aln >./phi/wyniki_$1/wyniki_phi_PW

