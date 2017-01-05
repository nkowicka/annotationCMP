#!/bin/sh

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
      ./cazy.sh $evalue $file /home/kamilan/cazy/auxenochlorella_protothecoides.fasta /home/kamilan/cazy/chlorella_variabilis.fasta /home/kamilan/cazy/helicosporidium_unip_proteins.fasta /home/kamilan/cazy/Saccharomyces_cerevisiae.fasta
      echo "jestem"

   elif [ "$metod" = "merops" ]; then
      ./mer.sh $evalue $file /home/kamilan/cazy/auxenochlorella_protothecoides.fasta /home/kamilan/cazy/chlorella_variabilis.fasta /home/kamilan/cazy/helicosporidium_unip_proteins.fasta /home/kamilan/cazy/Saccharomyces_cerevisiae.fasta

   elif [ "$metod" = "phi" ]; then
      ./phi.sh $evalue $file /home/kamilan/cazy/auxenochlorella_protothecoides.fasta /home/kamilan/cazy/chlorella_variabilis.fasta /home/kamilan/cazy/helicosporidium_unip_proteins.fasta /home/kamilan/cazy/Saccharomyces_cerevisiae.fasta
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
