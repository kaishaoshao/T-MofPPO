# !/bin/bash
clang  ../src/Read_register1.c -o ../output/Read_register1
../output/Read_register1

# zcc -O3 ../src/Read_register1.c -o ../output/Read_register1
# zemu ../output/Read_register1  --stat
# size ../output/Read_register1