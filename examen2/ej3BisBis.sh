#!/bin/bash 
archivo=$1
numLinea=1
shift
while read linea
do
  for numLineaParam in "$@"
  do
    if [ $numLinea -eq $numLineaParam ] ; then
      echo $linea
    fi
  done  
  let numLinea++
done < $archivo
