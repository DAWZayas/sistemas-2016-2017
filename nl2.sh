#!/bin/bash
IFS=$'\n'
numLine=1
for line in $(cat $1)
do
  echo $numLine $line
  let numLine++
done
