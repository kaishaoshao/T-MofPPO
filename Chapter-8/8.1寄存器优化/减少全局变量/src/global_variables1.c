// 代码 8-1
// 减少全局变量优化前

#include <stdio.h>
#include <malloc.h>
#include <time.h>

float x = 5.5642;  // 一个随机的float值

int function(float *a,int N){
    int i;
    float phi = 2.541,delta,alpha;
    delta = x * x;
    alpha = x / 2;
    for ( i = 0; i < N ; i++)
        a[i] = x * phi;
    return 0;
}

int main()
{
    float* a;
    clock_t start , end;
    double Total_time;

    int n = 100000000;
    a = (float*)malloc( n * sizeof(float));
    start = clock();
    function(a,n);
    end = clock();
    Total_time = (double)(end - start) / CLOCKS_PER_SEC;
    printf("优化前耗时%lf秒\n",Total_time);
    free(a);
    return 0;
}
