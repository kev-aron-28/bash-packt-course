#!/usr/bin/bash


declare -A myDict

myDict=([name]=kevin)
myDict[hi]=kevin

echo "${!myDict[@]}" # print keys
echo "${myDict[@]}"
