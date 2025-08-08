#!/usr/bin/bash

filename=${1}

# [[ ${#} -eq 1 ]] || { echo "Provide the file"; exit; }


if ! [[ ${#} -eq 1 ]] ; then
  echo "Provide the file";
  exit;
fi

# [[ -e ${filname} ]] || { echo "The file does not exists"; exit; }

if ! [[ -e ${filename} ]] ; then
  echo "The file does not exists";
  exit
fi

if [[ -r ${filename} ]] ; then
  cat ${filename}
else
  echo "You dont have persmission"
fi

# [[ -r ${filename} ]] && cat ${filename} || echo "You dont have permissions"
