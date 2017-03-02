#!/bin/bash
recursive=$(echo "$@" | grep -E "(^| )\-r($| )")
ppids=$(echo "$@" | grep -o -E "[0-9]+")
users=

for ppid in $ppids
do
  users=$(ps -e -o ppid,pid,user | tr -s " " | grep -E "^ $ppid " | cut -f4 -d" " ; echo "$users")
  pids=$(ps -e -o ppid,pid | tr -s " " | grep -E "^ $ppid " | cut -f3 -d" " | tr '\n' ' ')
  [ -n "$recursive" -a -n "$pids" ] && users=$($0 -r $pids ; echo "$users")
done
echo -e "$users" | sort | uniq
