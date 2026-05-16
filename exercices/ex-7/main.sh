#!/usr/bin/bash

file=$1

if [[ -z $file ]]; then
    echo "You must provide a file"
    exit 1
fi

if [[ ! -f $file ]]; then
    echo "You must provide a valid file"
    exit 1
fi

echo "Processing file: $file"

awk -F',' '

BEGIN {
   total = 0
   count = 0
   maxSalary = 0
}

NR > 1 && $3 == "Engineering" {

    print $2 " -> " $4

    total += $4
    count++
}

END {
    print "Total salary:", total
}

' $file