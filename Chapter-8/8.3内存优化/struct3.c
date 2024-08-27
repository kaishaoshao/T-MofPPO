#include <stdio.h>

// 代码8-19 结构体示例
struct Aligna{
  char a;
  long b;
  int c;
};

// 代码8-20 调整结构体成员前
struct BeforeAdjust{
  char a;
  int b;
  char c;
  short d;
};

// 代码8-21 调整结构体成员后
struct AfterAdjust{
  char a;
  char c;
  short d;
  int b;
};

int main()
{
  char a;
  long b;
  int  c;
  // 代码8-19 结构体示例
  printf("Aligna中各个成员所占空间大小和为:%ld\n",sizeof(a) + sizeof(b) + sizeof(c));
  printf("整个Aligna结构体所占大小为:%d\n",sizeof(struct Aligna));
  // 代码8-20 调整结构体成员前
  printf("BeforeAdjust结构体所占大小为:%d\n",sizeof(struct BeforeAdjust));
  // 代码8-21 调整结构体成员后
  printf("AfterAdjust结构体所占大小为:%d\n",sizeof(struct AfterAdjust));
  return 0;
}

