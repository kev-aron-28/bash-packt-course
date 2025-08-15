#!/usr/bin/bash

function kevin {
  echo "Hi";
}


for each in $(seq 8)
do
  kevin
done


declare -a array
declare array=(kevin aron tapia cruz)

for name in ${array[@]}
do
  echo ${name}
done

for index in ${!array[@]}
do
  echo ${index}
done

num=0
while [[ num -ne 5 ]]
do
  echo "HI"
  num=$((num+1))
done

while read -r line 
do
  echo ${line}
  sleep 1
done < <(cat servers.txt)


cat servers.txt | while read -r line
do
  echo "${line}"
done


while read -r line 
do
  echo ${line}
done < servers.txt


num1=0

until [[ num1 -ge 6 ]]
do
  echo "This logic"
  num1=$((num1+1))
done

PS3="Select your favorit service"
select option in docker nginx sshd
do
  echo ${option}
done
