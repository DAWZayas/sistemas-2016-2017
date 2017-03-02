#!/bin/bash
ppid=$1
users=$(ps -e -o ppid,pid,user | tr -s " " | grep -E "^ $ppid " | cut -f4 -d" " | sort | uniq)
echo -e "$users"
