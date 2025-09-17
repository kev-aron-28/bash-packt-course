#!/usr/bin/bash

file=$1

if [[ ! -f $file ]] ; then
    echo "No es un archivo"
fi

result=$(cat $file | sort -n)

echo "$result"
