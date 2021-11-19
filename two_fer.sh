#!/usr/bin/env bash
## https://exercism.org/tracks/bash/exercises/two-fer

var=$1
name=${var:=you}
echo "name=\${var:=you}"
echo "If var is null or unset, var is set to the value of you."
echo ""
echo "One for $name, one for me."
echo "\$var: $var"
echo "\$name: $name"
echo "###############################"
echo ""
var=$1
name=${var:-you}
echo "name=\${var:-you}"
echo "If var is null or unset, you is substituted for var."
echo "The value of var does not change."
echo ""
echo "One for $name, one for me."
echo "\$var: $var"
echo "\$name: $name"
echo "###############################"
echo ""
echo "One for ${1:-you}, one for me."
echo "###############################"
echo ""
name=$1
if [ -z "$name" ]; then
  echo "One for you, one for me."
else
  echo "One for $name, one for me."
fi

## echo "${var:?message}"
## echo "If var is null or unset, message is printed to standard error. This checks that variables are set correctly."
    
## echo "${var:+word}"
## echo "If var is set, word is substituted for var. The value of var does not change."
