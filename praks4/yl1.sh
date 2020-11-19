#!/bin/bash
#Koosta skript, mis küsib kasutaja käest ühe täisarvu. Skript peab väljastama seletava kirjelduse, kas antud arv on paaris või mitte.
#---------------------------------------------------------------------------------------------------------------------------------------------
# Arv sisestatakse
echo -n "Sisesta üks täis arv: "
read n
#-------------------------------
#
paarvoipaaritu=$(( $n % 2))

if [ $paarvoipaaritu -eq 0 ]
# Script otsustab, kas arv on paaris või paaritu.
then 
	echo "$n on paaris arv"
else
	echo "$n on paaritu arv"
fi

