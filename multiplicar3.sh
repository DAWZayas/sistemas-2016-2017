#!/bin/bash
for m in $(echo {1..10})
do
  echo -n "$m x $1 = "
  echo $1*$m | bc
done
