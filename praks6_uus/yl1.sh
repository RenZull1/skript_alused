#!/bin/bash
#-----------------------------------------------------
#-Skirpt, mis arvutab 10 esimese paarisarvude summat.-
#--                     Renzo Limbak                 -
#-----------------------------------------------------

summa=0
#-10 esimese arvu väljastamine for tsükliga
for ((a=1; a<11;a++ ))
#-Kontroll, kas on paaris või paaritu.
do
        paarvoipaaritu=$(($a % 2 ))
        if [$paarvoipaaritu -eq 0]; then
#-Liidab saadud vastuse summile juurde
                summ=$ (($summa + $a))
                echo $summa
        fi
done
echo "Arvude vahemikus 1 - 10 (kaasaarvatud) paarisarvude summa on $summa"
