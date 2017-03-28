#!/bin/bash

for usuario in $(cat usuarios) ; do
  filtro=$(cat /etc/passwd | cut -f1 -d: | grep -E "^$usuario$")
  if [ -z "$filtro" ] ; then
    echo "$usuario"
  fi
done
