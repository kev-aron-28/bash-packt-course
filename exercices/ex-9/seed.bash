#!/usr/bin/bash

dir=logs
noFiles=$1

if  [[ -z $noFiles ]]; then
    echo "Enter the noFiles parameter"
    exit 1
fi

echo "Generating seed... in /logs"

rm -rf ${dir}

mkdir ${dir}

for i in $(seq "${noFiles}"); do
    echo "Creating file: $dir/log$i.log"
    touch -d "${i} days ago" "${dir}/${i}log.log"
done


