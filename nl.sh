#!/bin/bash
numLines=$(cat $1 | wc -l)
numLine=1

while [ $numLine -le $numLines ]
do
  line=$(cat $1 | head -$numLine | tail -1)
  echo $numLine $line  
  let numLine++
done
