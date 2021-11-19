#!/usr/bin/env bash


main () {
   
  if [ $# -ne 1 ]; then
    echo "Usage: error_handling.sh <enter_a_value>" >&2
    # redirect >&2 stdout from echo to stderr
    # >&2 shortcut to 1>&2, stdout 1
    exit 1
  fi
  echo "\$# numbers of positional parameters: $#"
  echo "test, $1"
}

main "$@"