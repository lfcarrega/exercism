#!/usr/bin/env bash

main() {
  for word in "${@}"; do
    local word_size="${#word}"
    local reversed_word=""
    while [[ "${word_size}" -ne -1 ]]; do
      reversed_word+="${word:${word_size}:1}"
      word_size=$(( word_size - 1 ))
    done
    printf "%s\n" "${reversed_word}"
  done
}

main "$@"