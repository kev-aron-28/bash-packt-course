#!/usr/bin/bash

file=$1
pattern=$2

if [[ -z $file ]]; then
    echo "You must provide a file"
    exit 1
fi

if [[ -z $pattern ]]; then
    echo "You must provide a pattern"
    exit 1
fi

if [[ ! -f $file ]]; then
    echo "You must provide a valid file: '$file'"
    exit 1
fi

echo "WORKING ON FILE: $file..."

commandBuilder+=("grep" "-inw" "$pattern" "$file")


echo "Executing command ${commandBuilder[@]}"
echo "======================================"

result=$("${commandBuilder[@]}")

if [[ -z $result ]]; then
    echo "No results found"
else 
    echo "Lines in file ${file}:"
    echo "$result"
    echo "----------------------------------------"
    totalMatches=$(grep -ic "$pattern" "$file")
    totalLines=$(wc -l < "$file")
    percentage=$(( totalMatches * 100 / totalLines ))
    echo "Total matches: ${totalMatches}"
    echo "Total lines in file: ${totalLines}"
    echo "Match percentage: $percentage%"
fi