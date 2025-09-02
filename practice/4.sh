#!/usr/bin/bash

file=$1
word=$2

if [[ -z file || -z word ]] ; then
  echo "Provide args"
  exit 1
fi


echo "Searchig for ${word} in ${file}"

grep -n -o "$word" "$file"
