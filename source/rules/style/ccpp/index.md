---
title: C/C++ - 编码样式
---

# 名家经验
特别声明: 感谢[@Ctkon](https://github.com/Ctkon)提供的经验
总结提炼即是:
1. #define 少使用宏定义, 定义常量时, 可以使用 const 关键字, 并且不适用 #define 定义关键词或者符号
2. 多次使用的常量一定要使用 const 关键字
3. 即使是 void 类型的函数也请使用 return 语句
4. 压缩代码行数不是一个好主意, 这并不能显示水平的高低, 建议使用注释来提示代码的结构
5. 在 OI 竞赛中, 命名请使用熟知的缩写, 在工程中要遵循命名规范
6. 循环语句中, 如果只有一条语句, 则可以不适用 {} , 并在一行内完成

以下是原文:
``` CPP
#include<iostream>
#define e 2.78
//define 的内容必须为公认的常量 拒绝"define int long long"
const int maxn=1e6+7;
//自己会多次用到的常量一定要const
void init(){
//大括号请打在括号后面 
    return ;
//即使是void也请打上return 
}
//请一定要有init()函数
int lowbit(int x){
    return x&-x;
}
//即使只有一行的函数也请换行出来
int trie_idx;
//多个单词请使用下划线连接
//一些缩写请使用大家公知的缩写
int main(){
    int rp;
    for(int i=1;i<=n;i++){
        rp++;
    }
    for(int i=1;i<=n;i++)rp++;
    for(int i=1;i<=n;i++){
        rp++;
        printf("%d ",rp); 
    }
//循环内容只有一行可以合并单行，但是多行不行 
    for(int i=1;i<=n;i++){
        for(int j=1;j<=n;j++){
            rp++;
        }
    }
//循环套循环请不要使用缩进代替括号 
    return 0;
}
```
