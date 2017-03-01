#!/bin/bash
m=1
while [ $m -le 10 ]
do
  echo -n "$m x $1 = "
  echo $1*$m | bc
  let m++
  #m=$(($m+1))
  #m=$(echo $m+1 | bc)
done
