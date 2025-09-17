#!/bin/bash

# Script: check_file.sh
# Uso: ./check_file.sh <archivo_o_directorio>

if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo_o_directorio>"
    exit 1
fi

TARGET="$1"

echo "Verificando: $TARGET"

# Existe
if [ -e "$TARGET" ]; then
    echo "- Existe"
else
    echo "- No existe"
fi

# Es un archivo regular
if [ -f "$TARGET" ]; then
    echo "- Es un archivo regular"
fi

# Es un directorio
if [ -d "$TARGET" ]; then
    echo "- Es un directorio"
fi

# Es un enlace simbólico
if [ -L "$TARGET" ]; then
    echo "- Es un enlace simbólico"
fi

# Archivo de bloque
if [ -b "$TARGET" ]; then
    echo "- Es un archivo de bloque"
fi

# Archivo de carácter
if [ -c "$TARGET" ]; then
    echo "- Es un archivo de carácter"
fi

# Archivo de socket
if [ -S "$TARGET" ]; then
    echo "- Es un socket"
fi

# Archivo FIFO
if [ -p "$TARGET" ]; then
    echo "- Es un FIFO (named pipe)"
fi

# Archivo con permisos de lectura
if [ -r "$TARGET" ]; then
    echo "- Tiene permiso de lectura"
fi

# Archivo con permisos de escritura
if [ -w "$TARGET" ]; then
    echo "- Tiene permiso de escritura"
fi

# Archivo con permisos de ejecución
if [ -x "$TARGET" ]; then
    echo "- Tiene permiso de ejecución"
fi

# Archivo no vacío
if [ -s "$TARGET" ]; then
    echo "- No está vacío"
fi

# Última comparación: fechas
if [ -O "$TARGET" ]; then
    echo "- El archivo es propiedad del usuario actual"
fi

if [ -G "$TARGET" ]; then
    echo "- El archivo pertenece al grupo del usuario actual"
fi  