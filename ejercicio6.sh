#!/bin/bash
mkdir ejercicio6
cd ejercicio6

echo "Muestre por pantalla cuántos directorios hay en la variable PATH"
      echo $PATH | tr ":" "\n" | wc -l
      echo 1+$(echo $PATH | grep -o ":" | wc -l) | bc

echo "Muestre el primer directorio de la variable PATH"
      echo $PATH | tr ':' '\n'  | head -1
      echo $PATH | cut -f1 -d:

echo "Muestre cuantos programas ejecutables hay en el segundo directorio de la variable PATH?"
      ls -F $(echo $PATH | cut -f2 -d:) | grep "\*$" | wc -l
      find $(echo $PATH | cut -f2 -d:) -maxdepth 2 -type f -perm /u+x | wc -l

echo "Cree un programa que reciba el nombre del usuario y que muestre el terminal por defecto de ese usuario"
      ./terminal.sh root

echo "Si no existe el usuario mostrará no existe"
      ./terminal2.sh root
      ./terminal2.sh roooooooooot

echo "Si no existe el usuario volverá a pedir el usuario"
      ./terminal3.sh roooooooooot
      ./terminal3Bis.sh roooooooooot

echo "Cree un script que calcule el resto de la división entre dos números"
      ./resto.sh 5 4
