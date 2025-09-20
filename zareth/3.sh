#!/usr/bin/bash

echo "Ingresa la ruta: "
read route

totalFiles=$(find $route -type f | wc -l)
totalDirs=$(find $route -type d | wc -l)

echo "Numero de archivos: $totalFiles"
echo "Numero de directorios $totalDirs"