# !/bin/bash

zcc -O3 ../src/global_variables2.c -o ../output/global_variables2
zemu ../output/global_variables2 --stat
size ../output/global_variables2