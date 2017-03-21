#!/bin/bash
suma=0
for numero in "$@"
do
  let suma+=numero
done
echo $suma
