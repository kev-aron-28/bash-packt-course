#!/usr/bin/bash

file=$1
result=result.csv

if [[ -z $file ]]; then
    echo "You must provide a file"
    
    exit 1
fi

if [[ ! -f $file ]]; then
    echo "You must provide a valid file"
    exit 1
fi

sed -E '
1d
s/IT/Tecnologia/g
/Ana/d
s/,(1[89][0-9]{3}|[2-9][0-9]{4,})$/,CONFIDENCIAL/
' $file