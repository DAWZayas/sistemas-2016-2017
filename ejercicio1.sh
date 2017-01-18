#!/bin/bash
echo En el directorio de trabajo creo un directorio que se llame ejercicio1
mkdir -p ~/ejercicio1

echo Voy a ejercicio1
cd ~/ejercicio1

echo Compruebo que estoy en ejercicio1
pwd

echo Creo la estructura de directorios
mkdir -p {sistemas,bases_de_datos,marcas,programacion,entornos,fol}/{examenes,apuntes,varios}/{primera,segunda,tercera}/semana{1..12}

echo Me muevo a \"sistemas/examenes/segunda/semana1\"
cd sistemas/examenes/segunda/semana1

echo En \"sistemas/examenes/segunda/semana1\" creo el fichero \"recuperacion1\"
touch recuperacion1

echo Añado el directorio \"ejercicios\" a todas las asignaturas
mkdir -p ../../../../{sistemas,programacion,marcas,fol,bases_de_datos,entornos}/ejercicios

echo Borro todas las semanas mayores o igual que 10
rmdir ~/ejercicio1/*/*/*/semana[1-9]?

echo Voy al directorio de trabajo
cd

echo Borro ejercicio1 para dejar el sisterma inalterado
rm -r ~/ejercicio1

