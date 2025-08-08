#!/usr/bin/bash

pckName=${1}
userId=$(id -u)

if [[ ${userId} -ne 0 ]] ; then
  echo "Not admin";
  exit;
if

if command -v ${pckName} 1>/dev/null 2>&1 ; then
  echo "Command already exists";
fi
