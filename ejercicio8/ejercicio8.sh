#!/bin/bash
echo "Cree un archivo con nombres de usuarios"
echo "Cree un script que muestre los nombre del archivo que no estén en el sistema"
  ./usuarios.sh
  ./usuariosBis.sh
echo "Cree un script que añada los usuarios que no estén en el sistema"
  sudo ./useradd.sh
echo "Cree un script que borre los usuarios añadidos"
  sudo ./userdel.sh

