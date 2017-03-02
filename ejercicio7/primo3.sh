#!/bin/bash
numero=$1
divisor=2
resultado=0

[ $numero -lt 2 ] && resultado=1

while [ $divisor -lt $numero ] ; do
  resto=$(expr $numero % $divisor)
  [ $resto -eq 0 ] && resultado=2
  let divisor++
done

exit $resultado
