// 代码 8-2
// 减少全局变量优化后

#include <stdio.h>
#include <malloc.h>
#include <time.h>



int function(float *a,int N){
    int i;
    float x = 5.5642;  // 一个随机的float值
    float phi = 2.541,delta,alpha;
    delta = x * x;
    alpha = x / 2;
    for ( i = 0; i < N ; i++)
        a[i] = x * phi;
    return 0;
}

int main()
{
    float* b;
    clock_t start , end;
    double Total_time;

    int n = 100000000;
    b = (float*)malloc( n * sizeof(float));
    start = clock();
    function(b,n);
    end = clock();
    Total_time = (double)(end - start) / CLOCKS_PER_SEC;
    printf("优化前耗时%lf秒\n",Total_time);
    free(b);
    return 0;
}


// 进行优化后，由于将全局变量定义为过程内的局部变量，该过程释放后可用的寄存器相比原程序多了一个，
// 在寄存器分配时可利用的寄存器数量增多，可以减少部分编译器的压力，可以更合理的分配寄存器，
// 但是这种方法是否能提升程序性能还有待考察
