# annotationCMP
Bioinformatic tool to functional annotation. Using databases CaZy, MEROPS and PHI

You must import all files and go for folder in all of then.
Change mode for main script:
 > chmod +x skrypt.sh

 
 you can use tool:
 
 > ./skrypt.sh -m [metod] -e [evalue] -f [file]
 
 When you use tool first time, you must be patient, because tool will be downloading databases.
 
 where:
 -m | --metod       which database you use: cazy, merops or phi
 -e | --evalue      size of evelu in format 1e-9 for 0,000000001
 -f | --file        FASTA file with your protein sequence
 
 example:
 > ./skrypt.sh -m cazy -e 1e-40 -f organism.protein.fasta
