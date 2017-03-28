#!/bin/bash
for usuario in $(./usuarios.sh); do
    useradd -m -s /bin/bash -k /etc/skel $usuario
    echo "$usuario:1234" |  chpasswd
    sudo -u "$SUDO_USER" echo "$usuario" >> useradd.dat
done
