# !/bin/bash

# zcc -O3 ../src/Read_register5.c -o ../output/Read_register5
# zemu ../output/Read_register5 # --stat
# size ../output/Read_register5

# clang ../src/Read_register5.c -o ../output/Read_register5
#  ../output/Read_register5

llvm-objdump -d -S ../output/Read_register5 >../output/Read_register5.S