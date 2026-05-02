#!/usr/bin/bash

route=$1
file=$2
type=$3
size=$4
mtime=$5

if [[ -z $route ]]; then
    echo "You must provide a path"
    exit 1
fi

if [[ ! -d $route ]]; then
    echo "Path does not exist"
    exit 1
fi

echo "Searching on path: $route"

if [[ -z $file ]]; then
    echo "You must provide a file name or pattern"
    exit 1
fi

echo "Finding: $file"

commandBuilder=("find" "${route}")

if [[ -n $type ]]; then
    echo "Type: $type"
    commandBuilder+=("-type" "$type")
fi

commandBuilder+=("-name" "$file")

echo "Executing command ${commandBuilder[@]}"
echo "--------------------------------------"

results=$("${commandBuilder[@]}")

if [[ -z $results ]]; then
    echo "No files found"
else 
    echo "$results"

    count=$(echo $results | wc -l)
    echo "---------------------------------"
    echo "Total found: $count"
fi