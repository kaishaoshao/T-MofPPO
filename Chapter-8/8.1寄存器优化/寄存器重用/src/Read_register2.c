// 代码 8-4
// 直接读取寄存器示例二

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <malloc.h>

int main(){
    int n , i;
    n = 100000000;
    int *a, *b, *c, *d;
    double Total_time;
    clock_t start, end;
    a = (int*)malloc(n * sizeof(int));
    b = (int*)malloc(n * sizeof(int));
    c = (int*)malloc(n * sizeof(int));
    d = (int*)malloc(n * sizeof(int));
    for(i = 0;i < n; i++)
    {
         a[i] = rand() % 10;
         b[i] = rand() % 10;
    }
    // 优化后
    int x, y;
    start = clock();
    for (i = 0; i < n; i++){  // 标量替换
        x = a[i];                 // 将数组a[i]的
        y = b[i];
        c[i] = x + y;
        d[i] = x - y;
    }
    end = clock();
    
    Total_time = (double)(end - start) / CLOCKS_PER_SEC;
    printf("标量替换优化后:%lf\n",Total_time);
    free(a);
    free(b);
    free(c);
    free(d);
    
    return 0;
}

// 优化后的代码在每一次迭代可以减少一次a数组和b数组的内存访问，从而减少了
// 从内存中读取数据的次数。
// 除此之外，还可以通过减少内存写的次数进行优化
