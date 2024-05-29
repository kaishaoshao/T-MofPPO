# !/bin/bash

zcc -O3 ../src/Read_register4.c -o ../output/Read_register4
zemu ../output/Read_register4 # --stat
size ../output/Read_register4

# clang ../src/Read_register4.c -o ../output/Read_register4
#  ../output/Read_register4