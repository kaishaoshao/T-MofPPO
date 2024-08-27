#!/bin/bash
gcc -O3 struct3.c -o struct3_gcc
./struct3_gcc 
clang -O3 struct3.c struct3_clang
./struct3_clang
