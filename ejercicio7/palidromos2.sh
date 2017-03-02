#!/bin/bash
for palabra in $(cat palabras | tr ' ;,\t' '\n')
do
  if [ -n "$palabra" ] ; then
    invertida=$(echo "$palabra" | rev)
    if [ "$palabra" = "$invertida" ] ; then
      echo $palabra
    fi
  fi
done
