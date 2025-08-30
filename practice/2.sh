#!/usr/bin/bash

type=$1

if [[ -z $type ]] ; then
  echo "Must chose a type: MIN or DATE";
fi


case ${type} in
  MIN)
    date "+%H:%M:%S"
  ;;
  DATE)
    date "+%Y-%m-%d"
  ;;
  *)
    echo "Wrong option"
  ;;
esac
