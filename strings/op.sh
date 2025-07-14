#!/usr/bin/bash


# Len of strings
name=kevin
nameLen=${#name}

echo "${nameLen}"


# Concatonation
lastName="Tapia"
concat="${name} ${lastName}"

echo $concat

#Lower/upper case
echo "${name^^}"
echo "${name,,}"

# With "tr command"

# Slicing of strings
# %{}

slicing=${name:0:3}
echo $slicing

# With cut command
# echo ${kevinName} | cut -c 1-2 


# Replacing the parte of the string 

cutname=${name/kev/tapia}
echo $cutname

# With the sed command
#echo ${kevinName} | sed 's/kev/tapia/g'

