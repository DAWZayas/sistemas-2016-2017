#!/bin/bash
multiplicando=$2 # opcional
multiplicador=$1

if [ -z $multiplicando ] ; then
  multiplicando=1
fi

echo -n "$multiplicando x $multiplicador = "
echo $multiplicador*$multiplicando | bc

if [ $multiplicando -lt 10 ] ; then
  $0 $multiplicador $((multiplicando+1))
fi
