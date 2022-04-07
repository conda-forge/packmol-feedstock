#!/bin/bash

# sed -i.bak 's|FORTRAN=/usr/bin/gfortran|FORTRAN=${GFORTRAN}|g' Makefile

chmod +x configure
./configure ${GFORTRAN}
make
mkdir -p ${PREFIX}/bin
cp packmol ${PREFIX}/bin/
