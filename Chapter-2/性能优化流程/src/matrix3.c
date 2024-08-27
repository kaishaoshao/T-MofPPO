// 代码 2-3
// 加速比测试的优化代码 
// 采用第六章的循环展开方法进行优化

#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>


#define N 10000000
int a[N],b[N],c[N];
int i;


int main(){
    for ( i = 0; i < N; i++)
    {
        a[i] = i + 1;
        b[i] = i + 2;
        c[i] = i + 3;
    }
    
    // struct timeval 是一个结构体，用于存储时间值，
    // 包含两个字段：tv_sec（秒）和 tv_usec（微秒）。
    struct timeval start ,end;
    
    gettimeofday(&start,NULL);
    
    
    for ( i = 0; i < N - 4; i+=4)
    {
        c[i] = c[i] + a[i] * b[i];
        c[i+1] = c[i+1] + a[i+1] * b[i+1];
        c[i+2] = c[i+2] + a[i+2] * b[i+2];
        c[i+3] = c[i+3] + a[i+3] * b[i+3];
        // c[i+4] = c[i+4] + a[i+4] * b[i+4];
        // c[i+5] = c[i+5] + a[i+5] * b[i+5];
        // c[i+6] = c[i+6] + a[i+6] * b[i+7];
        // c[i+7] = c[i+7] + a[i+8] * b[i+8];
        // c[i+8] = c[i+8] + a[i+8] * b[i+8];
        // c[i+9] = c[i+9] + a[i+9] * b[i+9];
    }
    gettimeofday(&end,NULL);

    double timeuse = (end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec)/1000000.0;
    printf("time=%f\n",timeuse);


    return 0;
}