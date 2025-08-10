#!/usr/bin/bash

function test { echo "Hi"; }


string=${1}

conversion() {
  input=${1}
  echo "input is ${input}"
  return 0
}

conversion ${string}


num1=5
num2=3

function sum {
  num1=${1}
  num2=${2}

  result=$(( num1+num2 ))

  echo "${result}"
}

result=$(sum 1 1)

echo "${result}"
