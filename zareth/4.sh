#!/usr/bin/bash

args=($@)

if [[ ${#args[@]} -eq 0 ]]; then
    echo "Args necesarios"
    exit 0
fi

echo "Total de argumentos ${#args[@]}"

