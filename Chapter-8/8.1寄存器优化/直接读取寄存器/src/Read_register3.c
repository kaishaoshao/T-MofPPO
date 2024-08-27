// 代码 8-5
// 直接读取寄存器示例三

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <malloc.h>

int main(){
    int n, i, j;
    n = 10000;
    int *a, **b;
    double Total_time;
    clock_t start, end;
    a = (int*)malloc(n * sizeof(int));
    b = (int**)malloc(n * sizeof(int*));
    for(i = 0;i < n; i++){
         a[i] = 0;
         b[i] = (int*)malloc(n * sizeof(int));
    }
    for (i = 0; i < n; i++){
        for ( j = 0; j < n;  j++)
        {
            b[i][j] = rand() % 10;
        }
        
    }
    
    // 优化前
    start = clock();
    for (i = 0; i < n; i++) 
        for (j = 0; j < n; j++)
            a[i] = a[i] + b[i][j]; // 每次迭代都需要访问数组a
    
    end = clock();
    
    Total_time = (double)(end - start) / CLOCKS_PER_SEC;
    printf("标量替换优化前:%lf\n",Total_time);
    for ( i = 0; i < n; i++)
    {
        free(b[i]);
    }
    
    free(a);
    free(b);

    return 0;
}


