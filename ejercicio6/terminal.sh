#!/bin/bash

user=$1
terminal=$(cat /etc/passwd | grep -E "^$user:" | cut -f7 -d:)

echo $terminal
