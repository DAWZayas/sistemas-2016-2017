#!/bin/bash
echo "Introduzca un número"

read n
divisor=1
contador=0

while [ $divisor -le $n ] ; do
  resto=$(expr $n % $divisor)
   if [ $resto -eq 0 ] ; then
     let contador++
   fi
   let divisor++
done
if [ $contador -eq 2 ] ; then
  echo "$n es primo"
else
  echo "$n no es primo"
  exit 1
fi
