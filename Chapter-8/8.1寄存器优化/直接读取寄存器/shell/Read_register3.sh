# !/bin/bash

# zcc -O3 ../src/Read_register3.c -o ../output/Read_register3
# zemu ../output/Read_register3 --stat
# size ../output/Read_register3

clang ../src/Read_register3.c -o ../output/Read_register3
 ../output/Read_register3