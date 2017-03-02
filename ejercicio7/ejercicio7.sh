#!/bin/bash
echo "Cree un script que reciba el PID de un proceso y que muestre el usuario propietario de ese proceso"
  ./pid.sh 1
echo "Si el PID no existe se indicará"
  ./pid2.sh 1
  ./pid2.sh no\ existe
  ./pid2.sh
echo "Crea un script que recibe el PPID de un proceso y que muestre los propiearios procesos hijos de ese proceso"
  ./ppid.sh 1
  ./ppid2.sh -r 1 2
  ./ppid3.sh -r 1 2
echo "Cree un archivo llamado \"palabras\" y rellénelo con un texto"
echo "Cree un script que lea el fichero palabras y muestre los que son palíndromos"
  ./palidromos.sh
  ./palidromos2.sh
echo "Cree un script que reciba un número y devuelva si el número es primo (devuelve 0 si es primo y error si no lo es)
  ./primo2.sh 10 && echo "Es primo" || echo "No es primo"
  ./primo3.sh 11 && echo "Es primo" || echo "No es primo"
echo "Cree un script que reciba una lista de números y muestre aquellos que son primos"
  ./primos.sh 1 4 6 2 10 7
  ./primos2.sh 1 4 6 2 10 7
echo "Cree un script que reciba un archivo de números y muestre los primos"
  ./primos3.sh numeros
echo "Cree un script que reciba un número \"n\" positivo y devuelva los \"n\" primeros primos"
  ./criba.sh 10
