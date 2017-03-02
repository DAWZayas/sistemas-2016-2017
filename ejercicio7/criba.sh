#!/bin/bash

function infinitySeq() {
  number=$1
  while true 
  do
    echo $number
    let number++
  done
}

function filter() {
  prime=$1
  while read number
  do
    [ $(( $number % $prime )) -ne 0 ] && echo $number
  done
}

function primos {
  read prime
  echo $prime
  filter $prime | primos
}

infinitySeq 2 | primos | head -$1


