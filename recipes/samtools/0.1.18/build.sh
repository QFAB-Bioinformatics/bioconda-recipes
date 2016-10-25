#!/bin/sh
make
mkdir -p $PREFIX/bin
mv samtools $PREFIX/bin
mkdir -p $PREFIX/lib
mv libbam.a $PREFIX/lib
mkdir -p $PREFIX/include/bam
ln -s version.h version.hpp
mv ./*.h ./*.hpp $PREFIX/include/bam/
