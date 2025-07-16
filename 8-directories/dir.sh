#!/usr/bin/bash


declare -A myDict

myDict=([name]=kevin)
myDict[hi]=kevin

echo "${myDict[hi]}"
echo "${myDict[@]}" # Print all values

echo "${!myDict[@]}" # print keys


unset myDict[hi]


echo "${myDict[@]}"
