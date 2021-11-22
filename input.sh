#!/bin/bash
 
if [ ! $# -eq 2 ]; then
  echo "Usage: hamming.sh <string1> <string2>"
  exit 1
fi

hamming_distance=0;

for ((i=0; i<${#1}; i++));
do
  if [ ${1:i:1} != ${2:i:1} ];
  then 
    ((hamming_distance++))
    #print location and unmatch data
    echo "$i ${1:i:1} ${2:i:1}"
  fi
done

echo "hamming distance found: $hamming_distance"