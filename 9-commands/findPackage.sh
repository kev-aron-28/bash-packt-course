#!/usr/bin/bash

packageName=${1}
echo "${packageName}"

result=$(command -v ${packageName} || echo "NOT FOUND")

echo "${result}"

# execute with {}

{ ls; date; pwd; }

command -v nginx && { echo "nginx is installed"; nginx --version; }
