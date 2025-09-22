#!/usr/bin/bash

num1=$1
op=$2
num2=$3

if [ -z "$num1" ] || [ -z "$op" ] || [ -z "$num2" ]; then
    echo "Uso: $0 <num1> <operador> <num2>"
    echo "Operadores: + - x * /"
    exit 1
fi

if [[ "$op" == "/" && "$num2" -eq 0 ]]; then
    echo "Error: Division entre cero"
    exit 1
fi

result=0

case "$op" in
    +)
        result=$(( num1 + num2 ))
        ;;
    -)
        result=$(( num1 - num2 ))
        ;;
    x|*)
        result=$(( num1 * num2 ))
        ;;
    /)
        result=$(( num1 / num2 ))
        ;;
    *)
        echo "invalido"
        exit 1
        ;;
esac

echo "Resultado: $result"