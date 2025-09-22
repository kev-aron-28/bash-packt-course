#!/usr/bin/bash

file=$1

if [[ ! -f "$file" ]]; then
    echo "No es un archivo o no existe"
    exit 1
fi

sort -n "$file"