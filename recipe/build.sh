#!/usr/bin/env bash

set -euxo pipefail

rm -rf build || true

mkdir build
cd build

cmake ${SRC_DIR} ${CMAKE_ARGS}

make
make install

cd ../
# copy tests 
mkdir -p ${PREFIX}/share/packmol/tests
echo cwd
pwd
ls -l
echo "up one"
ls -l ../
cp -r testing/*  ${PREFIX}/share/packmol/tests
