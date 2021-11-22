#!/usr/bin/env bash

main () {
  if [ ! $# -eq 1 ]
  then
    echo "Usage: raindrop.sh <integer>"
    exit 1
  fi
  
  i=$1
  if !(($i%3)) && !(($i%5)) && !(($i%7)); then
    echo "PlingPlangPlong"
  elif !(($i%3)) && !(($i%5)); then
    echo "PlingPlang"
  elif !(($i%5)) && !(($i%7)); then
    echo "PlangPlong"
  elif !(($i%3)) && !(($i%7)); then
    echo "PlingPlong"
  elif !(($i%3)); then
    echo "Pling"
  elif !(($i%5)); then
    echo "Plang"
  elif !(($i%7)); then
    echo "Plong"
  else
    echo "$i"
  fi
}

main "$@"