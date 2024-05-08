#!/usr/bin/env bash

pushd icyt
git rebase --interactive upstream/upstream
popd
