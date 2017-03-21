#!/bin/bash 
echo "$@" | tr ' ' '+' | bc
