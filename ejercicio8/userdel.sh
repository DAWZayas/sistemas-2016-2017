#!/bin/bash
for usuario in $(cat ./useradd.dat); do
    deluser --remove-home $usuario > /dev/null
done
rm useradd.dat
