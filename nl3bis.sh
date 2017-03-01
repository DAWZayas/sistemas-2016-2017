#!/bin/bash
numLine=1
cat $1 |
  while read line
  do
    echo $numLine $line
    let numLine++
  done
