#!/bin/bash
#-----------------------------------------------
# Kasutajate lisamine kahest erinevast failist.-
#               Renzo Limbak                   -
#-----------------------------------------------

if [ $# -ne 2]; then
        echo "kasutusjuhend: $0 kasutajad ja paroolid"
else
kasutajad=$1
paroolid=$2
 if [ -f $kasutajad -a -r $kasutajad ] && [ -f $paroolid -a -r $paroolid ]; then
        echo "Antud failid on korras"
        for rida in $(paste-d: $kasutajad $paroolid)
        do
 kasutajanimi=$(echo "$rida" | cut -f1 -d:)
        sh lisa_kasutaja $kasutajanimi
 echo "$rida" | chpasswd
        done
 else
    echo "Probleem failidega. Kas, faile ei eksisteeri või ei saa neid lugeda. Failid võivad olla rikutud."
  fi
fi

