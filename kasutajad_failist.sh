#!/bin/bash
#   
# kasutajate lisamise skript
if [ $# -ne 1 ]; then
    echo "Kasutusjuhend: $0 failinimi"	
else
	
  if [ -f $failinimi -a -r $failinimi ]; then
    echo "fail on korras"
    for nimi in $(cat $failinimi)
    do
      # sellega peaks faili sisu olema nähtav, kui fail on kätte saadav ja nüüd echo asemel tuleb kutsuda vajalik skript
      # echo $nimi
      sh lisa_kasutaja $nimi # sellega me laseme lisa_kasutaja skript tööle
    done
  else
    echo "probleem failiga $failinimi"
  fi
# parameetrite kontrolli lõpp
fi

