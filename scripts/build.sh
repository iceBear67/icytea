#!/usr/bin/env bash

git submodule update --init && ./scripts/applyPatches.sh || exit 1


if [ "$1" == "--linux" ]; then
  echo "init submodules."
  pushd icyt/
  git submodule update --init --recursive
  docker run --rm \
    -v $PWD:/usr/src/tdesktop \
    tdesktop:centos_env \
    /usr/src/tdesktop/Telegram/build/docker/centos_env/build.sh \
    -D TDESKTOP_API_ID="$TELEGRAM_API_ID" \
    -D TDESKTOP_API_HASH="$TELEGRAM_API_HASH" \
    -D DESKTOP_APP_DISABLE_CRASH_REPORTS=OFF \
    -D CMAKE_EXE_LINKER_FLAGS="-s"
fi
