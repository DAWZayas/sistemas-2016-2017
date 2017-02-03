#!/bin/bash
mkdir -p ejercicio4
cd ejercicio4

echo "Cree un directorio con el nombre de cada usuario del sistema (versión xargs)"
cat /etc/passwd | cut -f1 -d: | xargs -I{} mkdir -p {}

echo "Cree un directorio con el nombre de cada usuario del sistema (versión sustitución de comandos)"
mkdir -p $(cat /etc/passwd | cut -f1 -d:)

echo "Muestre los nombres de los usuarios cuyo UID no coincida con su GID"
cat /etc/passwd | cut -f1,3-4 -d: | grep -v -E "^.*:(.*):\1$"

echo "Muestre los nombres de los usuarios cuyo GID sea mayor o igual que 1000"
cat /etc/passwd | cut -f1,4 -d:|grep -E "^.*:[1-9][0-9]{3,}$"| cut -f1 -d:

echo "Muestre el nombre del grupo principal de cada usuario"
cat /etc/passwd | cut -f1,4 -d: | xargs -I{} bash -c 'cat /etc/group | cut -f1,3 -d: | (echo -n "{}:";grep -E "^.*:$(echo "{}"| cut -f2 -d:)$")' | cut -f1,3 -d:

echo "Muestre el nombre del grupo principal de cada usuario (versión con join)"
join -t: -1 2 -2 2 <(cat /etc/passwd | cut -f1,4 -d: | sort -t: -k2) <(cat /etc/group | cut -f1,3 -d: | sort -t: -k2) | cut -f2-3 -d:

echo "Muestre el nombre de los usuarios cuyo nombre de usuario no coincida con el nombre de su grupo principal"
join -t: -1 2 -2 2 <(cat /etc/passwd | cut -f1,4 -d: | sort -t: -k2) <(cat /etc/group | cut -f1,3 -d: | sort -t: -k2) | cut -f2-3 -d: | grep -vE "^(.*):\1$"

echo "Muestre el grupo o grupos que más usuarios tienen (versión que solo saca un máximo y no que no funciona si todos los grupos tienen menos de dos usuarios)"
cat /etc/group | cut -f1,4 -d: | xargs -I{} bash -c "echo -n '{}:' ; echo '{}' | cut -f2 -d: | grep -o ',' | wc -l" | sort -k3n -t: | tail -1 | cut -f1 -d:

echo "Cuente cuántos grupos no tienen usuarios"
cat /etc/group | grep ":$" | wc -l

echo "Muestre los grupos a los que pertenece cada usuario (versión usuando groups)"
groups $(cat /etc/passwd | cut -f1 -d:)

echo "Muestre los grupos a los que pertenece cada usuario (versión con grep)"
cat /etc/passwd | cut -f1 -d: | xargs -I{} bash -c "echo -n '{}:'; cat /etc/group | grep -E '[:,]{}(,|$)' | cut -f1 -d: | tr '\n' ' '; echo"

echo "Muestre el nombre del usuario que más grupos tiene (versión usando la instrucción anterior)"
cat /etc/passwd | cut -f1 -d: | xargs -I{} bash -c "echo -n '{}:'; cat /etc/group | grep -E '[:,]{}(,|$)' | cut -f1 -d: | tr '\n' ' '; echo" | xargs -I{} bash -c "echo '{} ' | cut -f1 -d: | tr '\n' ' '; echo {} | grep -o ' ' | wc -l | tr '\n' ' '; echo " | sort -k2n -t' ' | tail -1 | cut -f1 -d' '

echo "Muestre el nombre del usuario que más grupos tiene (versión multiplicando ficheros)"
cat /etc/passwd | cut -f1 -d: | xargs -I{} bash -c "cat /etc/group | cut -f4 -d: | xargs -I[] echo {}:[]" | grep -E "^(.*):[^,]*,?\1(,|$)" | cut -f1 -d: | sort | uniq -c | tr -s ' ' | sort -k2n -t' ' | tail -1 | cut -f3 -d' '



