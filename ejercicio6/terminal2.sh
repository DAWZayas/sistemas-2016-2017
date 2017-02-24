#!/bin/bash

user=$1
terminal=$(cat /etc/passwd | grep -E "^$user:" | cut -f7 -d:)

#test -z "$terminal" && echo "No existe el usuario" || echo $terminal
#test -n "$terminal" && echo $terminal || echo "No existe el usuario" 

#if test -n "$terminal"; then
#  echo $terminal
#else
#  echo "No existe el usuario"
#fi

if [ -n "$terminal" ]; then
  echo $terminal
else
  echo "No existe el usuario"
fi
