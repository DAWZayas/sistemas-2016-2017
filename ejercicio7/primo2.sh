#!/bin/bash
numero=$1
divisor=2

[ $numero -lt 2 ] && exit 1

while [ $divisor -lt $numero ] ; do
  resto=$(expr $numero % $divisor)
  [ $resto -eq 0 ] && exit 2
  let divisor++
done
