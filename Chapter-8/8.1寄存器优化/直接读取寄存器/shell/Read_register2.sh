# !/bin/bash

# zcc -O3 ../src/Read_register2.c -o ../output/Read_register2
# zemu ../output/Read_register2 --stat
# size ../output/Read_register2

clang ../src/Read_register2.c -o ../output/Read_register2
 ../output/Read_register2