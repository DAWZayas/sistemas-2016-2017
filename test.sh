#!/bin/bash
max=0
maxCadenas=
for cadena in "$@"
do
  caracteres=$(echo -n $cadena | wc -c)
  if [ $max -lt $caracteres ] ; then
    max=$caracteres
    maxCadenas=$cadena
  elif [ $max -eq $caracteres ] ; then
    maxCadenas="$maxCadenas\n$cadena"
  fi
done

echo -e "$maxCadenas"
