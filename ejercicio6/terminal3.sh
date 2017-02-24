#!/bin/bash

user=$(cat /etc/passwd | grep -E "^$1:")

if [ -z "$user" ] ; then 
  echo -n "Usuario no existe. Vuelve a introducirlo: "
  read user
  $0 $user
else
  terminal=$(cat /etc/passwd | grep -E "^$1:" | cut -f7 -d:)
  echo $terminal
fi
  


