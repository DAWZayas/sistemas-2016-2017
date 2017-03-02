#!/bin/bash
while read n
do
  ./primo2.sh $n && echo $n
done < $1
