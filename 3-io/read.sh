#!/usr/bin/bash

# read -p "Enter your name" myShell 
# echo "Hi: ${myShell}"


# read -srp "Enter password: "
# echo ${REPLY}


IFS=':' read -rp "Values: " var1 var2
echo "${var1} ${var2}" 
