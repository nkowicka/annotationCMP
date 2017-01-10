#!/bin/sh

chmod +x usearch8.1.1861_i86linux32

if [ ! -f AA.udb ];
then
   echo "Pierwsze użycie programu, trwa pobieranie danych 1 z 7"
   wget students.mimuw.edu.pl/~kn348856/annotationCMP/AA.fasta
   ./usearch8.1.1861_i86linux32 -makeudb_ublast AA.fasta -output AA.udb 
fi
if [ ! -f CE.udb ];
then
   echo "Pierwsze użycie programu, trwa pobieranie danych 2 z 7"
   wget students.mimuw.edu.pl/~kn348856/annotationCMP/CE.fasta
   ./usearch8.1.1861_i86linux32 -makeudb_ublast CE.fasta -output CE.udb
fi
if [ ! -f GH.udb ];
then
   echo "Pierwsze użycie programu, trwa pobieranie danych 3 z 7"
   wget students.mimuw.edu.pl/~kn348856/annotationCMP/GH.fasta
   ./usearch8.1.1861_i86linux32 -makeudb_ublast GH.fasta -output GH.udb
fi
if [ ! -f GT.udb ];
then
   echo "Pierwsze użycie programu, trwa pobieranie danych 4 z 7"
   wget students.mimuw.edu.pl/~kn348856/annotationCMP/GT.fasta
   ./usearch8.1.1861_i86linux32 -makeudb_ublast GT.fasta -output GT.udb
fi
if [ ! -f PL.udb ];
then
   echo "Pierwsze użycie programu, trwa pobieranie danych 5 z 7"
   wget students.mimuw.edu.pl/~kn348856/annotationCMP/PL.fasta
   ./usearch8.1.1861_i86linux32 -makeudb_ublast PL.fasta -output PL.udb
fi
if [ ! -f merops_scan.udb ];
then
   echo "Pierwsze użycie programu, trwa pobieranie danych 6 z 7"
   wget students.mimuw.edu.pl/~kn348856/annotationCMP/merops_scan.fasta
   ./usearch8.1.1861_i86linux32 -makeudb_ublast merops_scan.fasta -output merops_scan.udb
fi
if [ ! -f PHI.udb ];
then
   echo "Pierwsze użycie programu, trwa pobieranie danych 7 z 7"
   wget students.mimuw.edu.pl/~kn348856/annotationCMP/PHI.fasta
   ./usearch8.1.1861_i86linux32 -makeudb_ublast PHI.fasta -output PHI.udb
fi


chmod +x cazy.sh
chmod +x phi.sh
chmod +x mer.sh

while :
do
   case "$1" in
      -m | --metod)
         metod="$2"
         shift 2
         ;;
      -e | --evalue)
         evalue="$2"
         shift 2
         ;;
      -f | --file)
         file="$*"
         shift 2
         ;;
     # -*)
     #    echo "Error"
     #    exit 1
     #    ;;
      *) #no more options
         break
         ;;
   esac
done

echo $file

if [ $# = "0" ]; then
   if [ "$metod" = "cazy" ]; then
      ./cazy.sh $evalue $file auxenochlorella_protothecoides.fasta chlorella_variabilis.fasta helicosporidium_unip_proteins.fasta Saccharomyces_cerevisiae.fasta

   elif [ "$metod" = "merops" ]; then
      ./mer.sh $evalue $file auxenochlorella_protothecoides.fasta chlorella_variabilis.fasta helicosporidium_unip_proteins.fasta Saccharomyces_cerevisiae.fasta

   elif [ "$metod" = "phi" ]; then
      ./phi.sh $evalue $file auxenochlorella_protothecoides.fasta chlorella_variabilis.fasta helicosporidium_unip_proteins.fasta Saccharomyces_cerevisiae.fasta
   else echo "Błędnie wprowadzona komenda. Schemat: ./skrypt -m nazwa_metody -e evalue -p pliki , gdzie nazwa_metody to możliwe jedno z: cazy, merops lub phi . Evalue powinno być w formacie np. 1e-9  . Natomiast pliki są ścieżkami dostępu plików FASTA na których ma zostać przeprowadzaona annotacja"
   fi

else
   if [ "$metod" = "cazy" ]; then
      ./cazy.sh $evalue $file
      echo "jestem2"

   elif [ "$metod" = "merops" ]; then
      ./mer.sh $evalue $file 

   elif [ "$metod" = "phi" ]; then
      ./phi.sh $evalue $file 
   else echo "Błędnie wprowadzona komenda. Schemat: ./skrypt -m nazwa_metody -e evalue -p pliki , gdzie nazwa_metody to możliwe jedno z: cazy, merops lub phi . Evalue powinno być w formacie np. 1e-9  . Natomiast pliki są ścieżkami dostępu plików FASTA na których ma zostać przeprowadzona annotacja"
   fi
fi
