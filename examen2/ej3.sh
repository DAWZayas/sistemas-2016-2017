#!/bin/bash 
archivo=$1
numLineas=$(cat $1 | wc -l)
shift
for numLinea in "$@"
do
  if [ $numLinea -le $numLineas ] ; then
    cat $archivo | sed -n "${numLinea}p"
  else
    echo "#####$numLinea Not exists#####"
  fi
done
