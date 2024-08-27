// 代码 8-5
// 直接读取寄存器示例五

#include <stdio.h>

#define N 100
int a[N],b[N],c[N];
int i;

int main(){
    for (i = 0; i < N; i++)
    {
        a[i] = b[i] * c[i];
    }
    
}

