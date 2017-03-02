#!/bin/bash
pid=$1

if  [ -z "$pid" ] ; then
  >&2 echo "uso: ./pid2.sh pid"
  exit 1
fi

user=$(ps -e -o pid,user --no-headers | tr -s " " | grep -E "^ $pid " | cut -f3 -d" ")

if  [ -z "$user" ] ; then
  >&2 echo "pid $pid no existe"
  exit 2
fi

echo $user

