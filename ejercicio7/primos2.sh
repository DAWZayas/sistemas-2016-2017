#!/bin/bash
for n in "$@"
do
  ./primo2.sh $n && echo $n
done
