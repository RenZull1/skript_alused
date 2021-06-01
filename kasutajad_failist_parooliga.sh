#!/bin/bash
#
# kasutajate lisamise skript
if [ $# -ne 1 ]; then
    echo "Kasutusjuhend: $0 kasutajad_paroolid"
else
  kasutajad_paroolid=$1
  if [ -f $kasutajad_paroolid -a -r $kasutajad_paroolid ]; then
    echo "fail on korras"
    for nimi in $(cat $kasutajad_paroolid)
    do
      kasutajanimi=$(echo "$rida" | cut -f1 -d:)
      sh lisa_kasutaja $kasutajanimi
      echo "$rida" | chpasswd
    done
else
 echo "Probleem failiga $lisa_kasutaja"
fi
fi

