#!/usr/bin/env bash

git submodule update --init && ./scripts/applyPatches.sh || exit 1


if [ "$1" == "--linux" ]; then
  echo $(pwd)
fi
