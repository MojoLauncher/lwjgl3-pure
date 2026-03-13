#!/bin/bash

soname_arg="-Werror"
filtered_args=()

#echo "$*"

for arg in "$@"; do
   if [[ $arg != $soname_arg* ]]; then
      filtered_args+=("$arg")
   fi
done

exec "${filtered_args[@]}"