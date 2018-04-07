#!/usr/bin/env bash

set -eux

# Starting from scratch...
git clean -xdf

# Build Mill
mill -i dev.assembly

rm -rf ~/.mill

# Second build & run tests
out/dev/assembly/dest/mill -i all {clientserver,main,scalalib,scalajslib}.test

