#!/bin/bash

echo "Contar todos los procesos del sistema"
ps -e --no-headers | wc -l

echo $(ps -e | wc -l)-1 | bc

echo "Muestre el pid mayor del sistema"
ps -e -o pid | sort -n | tail -1 | tr -d ' '

echo "Muestre el ppid mayor del sistema"
ps -e -o ppid | sort -n | tail -1 | tr -d ' '

echo "Muestre cuentos procesos ejecuta cada usuario del sistema"
ps -e -o user --no-headers | sort | uniq -c | tr -s ' ' | sed -E -e "s/ (.*) (.*)/\2:\1/"

echo "Muestre el nombre del usuario que más procesos ejecuta"
ps -e -o user --no-headers | sort | uniq -c | tr -s ' ' | sed -E -e "s/ (.*) (.*)/\2:\1/" | sort -k2n -t: | tail -1  | cut -f1 -d:

echo "Muestre los nombres de los suuarios que no ejecutan ningún proceso"
(ps -e -o user --no-headers ; cat /etc/passwd |  cut -f1 -d:) | sort | uniq -u

echo "Genere un listado que muestre los procesos en este formato ppid:pid"
ps -e -o ppid --no-headers | tr -d ' ' | sort -n | uniq | xargs -I{} bash -c "echo -n {}: ; ps -e -o ppid,pid --no-headers | tr -s ' ' | grep -E '^ {} ' | cut -f3 -d' ' | tr '\n' ','; echo" | sed -E -e "s/,$//"

echo "Cree varios procesos \"sleep\" en segundo plano"
sleep 1000 &
sleep 1000 &
sleep 1000 &
sleep 1000 & 

echo "Cuente cuántos procesos sleep hay"
ps -e -o comm | grep "^sleep$" | wc -l

echo "Elimine todos los procesos sleep"
killall sleep

echo "Cuente cuántos archivos tiene abiertos el usuario con el que se ha conectado al sistema"
lsof -u $(whoami) -t | wc -l
lsof -u $USER -t | wc -l

echo "Escriba un instruccón que muestre \"Sí\" por pantalla cuando el archivo \"x\" exista y \"No\" cuando no exista"
ls x > /dev/null 2>&1 && echo "Sí" || echo "No"
test -e x && echo "Sí" || echo "No"

