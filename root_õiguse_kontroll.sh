#!/bin/bash
#--------------------------------------------------
#- Kasutaja lisamine genereeritud parooliga       -
#- ning tehkase kontroll, et kasutaja oleks root. -
#		Renzo Limbak			  -
#--------------------------------------------------

kontr_kasutaja=$(whoami)
if [$kontr_kasutaja = "root" ]; then
	if [ $# -ne 1 ]; then
	echo "Kasutusjuhend: $0 kasutajad"
	else

		kasutajad=$1
		if [ -f $kasutajad -a -r $kasutajad ]; then
		echo "Antud fail eksisteerib"
		for rida in $(paste -d: $kasutajad $paroolid)

	do
	kasutajanimi=$(echo "$rida")
	sh lisa_kasutaja $kasutajanimi
	parool=$(pwgen -s 8 -1)
		echo "$kasutajanimi:$parool" | chpasswd
		echo "$kasutajanimi - $parool" >> loodud_kasutajad_paroolidega
	done
else
echo "Antud failiga $failinimi on tekkinud probleem"
fi
fi
	else
	 echo "Antud skripti käivitamiseks pead olema root kasutaja"
