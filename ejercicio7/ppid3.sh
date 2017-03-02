#!/bin/bash
recursive=$(echo "$@" | grep -E "(^| )\-r($| )")
ppids=$(echo "$@" | grep -o -E "[0-9]+")

for ppid in $ppids
do
  ps -e -o ppid,pid,user | tr -s " " | grep -E "^ $ppid " | cut -f4 -d" "
  pids=$(ps -e -o ppid,pid | tr -s " " | grep -E "^ $ppid " | cut -f3 -d" " | tr '\n' ' ')
  [ -n "$recursive" -a -n "$pids" ] && $0 -r $pids
done | sort | uniq
