// 代码 2-2
// 加速比测试的基础代码

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
    for ( i = 0; i < N; i++)
    {
        c[i] = c[i] + a[i] * b[i];
    }
    gettimeofday(&end,NULL);

    double timeuse = (end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec)/1000000.0;
    printf("time=%f\n",timeuse);


    return 0;
}

