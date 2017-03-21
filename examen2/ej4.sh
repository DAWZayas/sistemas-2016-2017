#!/bin/bash 
noExisten=
for usuario in $@
do
  dir=$(cat /etc/passwd | grep "^$usuario:" | cut -f7 -d:)
  if [ -n "$dir" ] ; then
    echo "$usuario: $dir"
  else
    if [ -n "$noExisten" ] ; then
      noExisten="$noExisten\n"    
    fi
    noExisten="$noExisten$usuario"
  fi
done
for usuario in $(echo -e "$noExisten")
do
  echo $usuario: not in the system
done
