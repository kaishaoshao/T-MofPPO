# !/bin/bash

zcc -O3 ../src/global_variables1.c -o ../output/global_variables1
zemu ../output/global_variables1 --stat
size ../output/global_variables1