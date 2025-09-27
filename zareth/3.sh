#!/usr/bin/bash

echo "Ingresa la ruta: "
read route

if [ ! -d "$route" ]; then
    echo "La ruta '$route' no existe o no es un directorio."
    exit 1
fi

# Contar archivos y directorios
totalFiles=$(find "$route" -type f | wc -l)
totalDirs=$(find "$route" -type d | wc -l)

echo "Numero de archivos: $totalFiles"
echo "Numero de directorios: $totalDirs"