#!/bin/bash
set -euxo pipefail
rm -rf build || true
mkdir build
cd build

cmake ${SRC_DIR} ${CMAKE_ARGS}

make
make install
