#!/bin/bash

echo "1.- (2 puntos) Escriba un script al que se le pasen una serie de números y devuelva su suma."
  ./ej1.sh 1 3 4 5
  ./ej1Bis.sh 1 3 4 5

echo "2.- (2 puntos) Escriba un script al que se le pase una operación binaria y una serie de números y devuelva el resultado de la operación aplicada a los números."
  ./ej2.sh '*' 1 43 44
echo -e "3.- (3 puntos) Cree un script que reciba la ruta de acceso a un archivo y una serie de números línea y muestre las líneas de ese archivo.\nSi alguna línea no existe, se indicará"
  ./ej3.sh /etc/passwd 3 54544554 1 45566565
  ./ej3Bis.sh /etc/passwd 3 54544554 1 45566565565
echo "4.- (3 puntos) Cree un script que reciba una serie de nombres de usuarios y que muestre:\nPrimero, los directorios de trabajo de los usuarios que estén en el sistema en el orden que se hayan pasado.\nDespués, los usuarios que no estén en el sistema en el orden que se hayan pasado."

