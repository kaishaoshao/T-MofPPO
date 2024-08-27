#include <stdio.h>
#include <unistd.h>

#define n 100
#define m 10
int x,i,j;

unsigned long rpcc(){
    unsigned long result;
    unsigned hi,lo;
    // 使用 __asm__ 而不是 asm 以兼容不同的编译器
    // 使用 volatile 告诉编译器不要优化掉这个函数
    __asm__ volatile("rdtsc":"=a"(lo),"=d"(hi));
    result = ((unsigned long long)lo|((unsigned long long)hi<<32));
    // 返回一个长长整型，以存储64位的时间戳
    return result;
}

void fun(int a){
   for(i = 0;i < n;i++)
       x = (a/4) + i;
}

int main(){
    unsigned long start,end,k = 0;
    unsigned long b[m];
    for(j = 0;j < 10;j++){
        start = rpcc();
        fun(16);
        end = rpcc();
        // 计算每次函数调用所需的周期数
        b[j] = end - start;
        k += b[j];
    }
    printf("time = %ld\n",k/m);
    return 0;
}