#!/bin/bash

user=$1

while [ -z $(cat /etc/passwd | grep -E "^$user:") ] ; do 
  echo -n "Usuario no existe. Vuelve a introducirlo: "
  read user
done

terminal=$(cat /etc/passwd | grep -E "^$user:" | cut -f7 -d:)
echo $terminal
  


