#!/bin/bash 
archivo=$1
shift
IFS=
for linea in $(cat $archivo | nl | tr -s '\t ' ':' | cut -f2- -d:)
do
  for numlinea in "$@"
  do
    lineaCoincidente=$(echo "$linea" | grep -E "^$numlinea:")
    if [ -n "$lineaCoincidente" ] ; then
      echo $lineaCoincidente | cut -f2- -d:
    else
      echo "#####$numLinea Not exists#####"      
    fi
  done
done
