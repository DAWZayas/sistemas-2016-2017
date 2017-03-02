#!/bin/bash
for n in "$@"
do
  echo $n | ./primo.sh > /dev/null && echo $n
done
