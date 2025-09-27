#!/usr/bin/bash

count=0

while true; do
    eval arg=\$$((count+1))
    if [ -z "$arg" ]; then
        break
    fi
    ((count++))
done

if [ $count -eq 0 ]; then
    echo "Args necesarios"
    exit 0
fi

echo "Total de argumentos: $count"