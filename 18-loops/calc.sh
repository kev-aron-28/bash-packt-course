#!/usr/bin/bash


PS3="Enter your operation: "

select opt in add sub mul div
do
  case $opt in
    add)
      read -rp "Num1: " num1 
      read -rp "Num2: " num2
      result=$((num1+num2))
      echo "The result is ${result}"
      ;;
    sub)
      read -rp "Num1: " num1
      read -rp "Num2: " num2
      result=$((num1-num2))
      echo "The result is ${result}"
      ;;
    mul)
      read -rp "Num1: " num1
      read -rp "Num2: " num2
      result=$((num1*num2))
      echo "The result is ${result}"
      ;;
    div)
      read -rp "Num1: " num1
      read -rp "Num2: " num2
      
      if [[ num2 -eq 0 ]] ; then
        echo "division by 0";
        continue;
      fi
      
      result=$((num1/num2))
      echo "The result is ${result}"
      ;;
  esac
done
