#!/bin/bash
#--------------------------------------------
#- Kasutaja lisamine genereeritud parooliga.-
#		Renzo Limbak                -
#--------------------------------------------

if [ $# -ne 1 ]; then
	echo "Kasutusjuhend $0 failinimi"
else 
	failinimi=$1
	if [ -f $failinimi -a -r $failinimi ]; then
	  echo "Antud fail on olemas!"
	  for rida in $(paste -d: $failinimi $paroolid)
	  do
		kasutajanimi=$(echo "$rida" | cut -f1 -d:)
		sh lisa_kasutaja $kasutajanimi
		parool=$(pwgen -s 8 1)
		echo "$kasutajanimi:$parool" | chpasswd
		echo "$kasutajinimi - $parool" >> loodud_kasutajad_paroolidega
	done
else
 echo "Antud failiga $failinimi on probleeme"
fi 
fi
