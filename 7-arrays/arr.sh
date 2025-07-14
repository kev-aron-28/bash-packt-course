#!/usr/bin/bash

declare -a myArray

echo $myArray

array=(1 "Hi" 3 4 5)

echo "${array[1]}"

echo "${array[@]}"
echo "${array[*]}"


echo "${array[@]:1:2}"

echo "${!array[*]}"

echo "${#array[@]}"

array+=(1 3 4)

echo "${array[@]}"

unset array[0]

echo "${array[@]}"


# Store command line arguments
declare -a cmd
cmd=(${@})

echo "${cmd[@]}"

# Store

declare -a console
console=( $(ls) )

echo "${console[@]}"
