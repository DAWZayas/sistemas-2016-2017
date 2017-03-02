#!/bin/bash
pid=$1
user=$(ps -e -o pid,user | tr -s " " | grep -E "^ $pid " | cut -f3 -d" ")
echo $user
