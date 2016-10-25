#!/bin/sh
make
mkdir -p $PREFIX/bin
mv samtools $PREFIX/bin
mv bcftools/bcftools $PREFIX/bin
mv bcftools/vcfutils.pl $PREFIX/bin
mkdir -p $PREFIX/lib
mv libbam.a $PREFIX/lib
mkdir -p $PREFIX/include/bam
ln -s version.h version.hpp
mv ./*.h ./*.hpp $PREFIX/include/bam/
