#!/bin/bash
for ((m=1; m <= 10; m++))
do
  echo -n "$m x $1 = "
  echo $1*$m | bc
done
