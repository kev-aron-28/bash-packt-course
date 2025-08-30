#!/usr/bin/bash

# rea un script backup.sh que copie todos los .txt 
# de bash-practice a una carpeta backup/ (si no existe, créala).

backupDir=$1
fileExt=$2

if [[ -z $backupDir || -z fileExt ]] ; then
  echo "Must provide args";
  exit 1;
fi

if ! [[ -d $backupDir ]] ; then
  mkdir -p "${backupDir}";
fi

textFiles=( *.${fileExt} )

if [[ ${#textFiles[@]} -eq 0 ]] ; then
  echo "No files found";
  exit 0;
fi

echo "Moving text files ${textFiles[@]} into /${backupDir}"

cp "${textFiles[@]}" "$backupDir"
