#!/usr/bin/bash


# Crear un script llamado clean_logs.sh que haga lo siguiente:

# Reciba un directorio y una extensión de archivo como parámetros.

# Busque todos los archivos de esa extensión dentro del directorio.

# Mueva los archivos que tengan más de 7 días de antigüedad a una carpeta old_logs/ dentro del mismo directorio (créala si no existe).

# Al final, genere un reporte en pantalla indicando:

# Cuántos archivos había

# Cuántos archivos se movieron

# Lista de archivos movidos

dir=$1
ext=$2

if [[ -z dir || -z ext ]] ; then
  echo "Must provide args"
  exit 1
fi

mkdir -p old_logs


mapfile -t files < <(find "$dir" -type f -name "*.$ext" -mmin +10)

if [[ ${#files[@]} -eq 0 ]] ; then
  echo "No files found"  

  exit 0
fi


for f in "${files[@]}"; do
  echo "File found ${f}"
done

echo "Total files ${#files[@]}"
