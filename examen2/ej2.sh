#!/bin/bash 
op=$1
shift
echo "$@" | tr ' ' "$op" | bc
