#!/bin/bash

sed -i.bak 's|FORTRAN=/usr/bin/gfortran|FORTRAN=${GFORTRAN}|g' Makefile
sed -i.bak 's|FLAGS= |FLAGS= ${FFLAGS}|' Makefile

make
mkdir -p ${PREFIX}/bin
cp packmol ${PREFIX}/bin/
