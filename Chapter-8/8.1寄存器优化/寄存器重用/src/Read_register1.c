// 代码 8-3
// 直接读取寄存器示例一

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
    // 优化前
    start = clock();
    for (i = 0; i < n; i++)
    {
        c[i] = a[i] + b[i];
        d[i] = a[i] - b[i];
    }
    end = clock();
    
    Total_time = (double)(end - start) / CLOCKS_PER_SEC;
    printf("标量替换优化前:%lf\n",Total_time);
    free(a);
    free(b);
    free(c);
    free(d);
    
    return 0;
}

