#!/usr/bin/bash

file=$1
level=$2

if [[ -z $level ]]; then
    echo "You must provide a log level"
    exit 1
fi

if [[ -z $file ]]; then
    echo "You must provide a file"
    exit 1
fi

if [[ ! -f $file ]]; then
    echo "File does not exist"
    exit 1
fi


awk -v level="$level" '
BEGIN {
    total=0
    maxErrors=0
}

$2 == level {
    print $3 " -> " $4

    total++

    errors[$3]++

    if (errors[$3] > maxErrors) {
        maxErrors = errors[$3]
        topUser = $3
    } 
}

END {
    print ""
    print "Total errors:  ", total

    print ""
    print "Errors by user: "

    for (user in errors) {
        print user "->" errors[user]
    }

    print "Top user: ", topUser, "with", maxErrors, "errors"
}' "$file"