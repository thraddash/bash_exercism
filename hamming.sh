#!/usr/bin/env bash

main () {
x=$1
y=$2
count=0

if [ "$#" -eq 2 ]; then
  if (( ${#x} == ${#y} ));
    then
      for (( i=0; i<${#x}; i++)); do
        for (( i=0; i<${#y}; i++)); do
          if [ "${x:$i:1}" == "${y:$i:1}" ]; 
            then
              continue
          elif [ "${x:$i:1}" != "${y:$i:1}" ];
            then
              ((count++))
              # parameter expansion ${parameter:offset:length}
              #echo "$count ${x:$i:1} ${y:$i:1}"
          fi  
        done  
      done
      echo $count
  else
    echo "strands must be of equal length"
    exit 1
  fi
else
  echo "Usage: hamming.sh <string1> <string2>"
  exit 1
fi  
}

main "$@"
