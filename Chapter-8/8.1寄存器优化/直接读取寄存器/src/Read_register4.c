// 代码 8-6
// 直接读取寄存器示例四

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
    
    // 优化后
    int sum;                       //使用sum将数组a的数据保存在寄存器中
    start = clock();
    for (i = 0; i < n; i++){
        sum = a[i];                //这样就可以减少对内存写操作
        for (j = 0; j < n; j++)
           sum = sum + b[i][j]; // 每次迭代都需要访问数组a
        a[i] = sum;
        printf("sum=%d\n",sum);
    } 
        
    
    end = clock();
    
    Total_time = (double)(end - start) / CLOCKS_PER_SEC;
    printf("标量替换优化后:%lf\n",Total_time);
    for ( i = 0; i < n; i++)
    {
        free(b[i]);
    }
    
    free(a);
    free(b);

    return 0;
}


// 可见对内存写操作的减少可以提升程序的性能，优化人员除了需要考虑寄存器合理分配的
// 问题之外，还需要防止寄存器溢出。当所需寄存器的数量大与可分配寄存器数量时，就会
// 出现寄存器溢出，当发生寄存器溢出时，程序需要在内存中读写变量，可能会抵消前期积
// 累的性能优势