#!/usr/bin/bash
declare -a servers
servers=( $(cat servers.txt | cut -d '.' -f2) )

for env in ${servers[@]}
do
  echo "env: ${env}"
done
