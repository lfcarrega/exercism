#!/usr/bin/env bash

main () {
  who="${1}"
  if [[ -z "${who}" ]]; then
    who="you"
  fi
  printf "One for %s, one for me." "${who}"
}

main "$@"
