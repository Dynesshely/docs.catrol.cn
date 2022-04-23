---
title: Algorithm - 通用算法库
mathjax: true
---

<a id="markdown-markdown-header-📜-目录" name="markdown-header-📜-目录"></a>
# 📜 目录
<!-- TOC -->

- [📜 目录](#markdown-header-📜-目录)
- [🔰 Interop - 内部接口互操作库](#markdown-header-🔰-interop-内部接口互操作库)
    - [📒 结构](#markdown-header-📒-结构)
    - [🌏 Environment.cs](#markdown-header-🌏-environmentcs)
        - [💾 Functions](#markdown-header-💾-functions)
    - [📛 Hash.cs](#markdown-header-📛-hashcs)
        - [💾 公共方法/函数](#markdown-header-💾-公共方法函数)
        - [🔢 枚举值定义](#markdown-header-🔢-枚举值定义)
    - [💢 Exceptions](#markdown-header-💢-exceptions)
        - [🧱 BasicException](#markdown-header-🧱-basicexception)
        - [📛 HashException](#markdown-header-📛-hashexception)
- [🧱 Base - 基础库](#markdown-header-🧱-base-基础库)
    - [💾 全局宏定义](#markdown-header-💾-全局宏定义)
- [📐 Math - 数学库](#markdown-header-📐-math-数学库)
    - [💾 Functions - 函数列表](#markdown-header-💾-functions-函数列表)
- [📛 Hash - 哈希库](#markdown-header-📛-hash-哈希库)
    - [💾 Functions - 函数列表](#markdown-header-💾-functions-函数列表_1)

<!-- /TOC -->

----

<a id="markdown-markdown-header-🔰-interop-内部接口互操作库" name="markdown-header-🔰-interop-内部接口互操作库"></a>
# 🔰 Interop - 内部接口互操作库
<a id="markdown-markdown-header-📒-结构" name="markdown-header-📒-结构"></a>
## 📒 结构
- [Environment.cs](#markdown-markdown-header-🌏-environmentcs) 环境类
- [Hash.cs](#markdown-markdown-header-📛-hashcs) 哈希交互类
- [~~Math.cs~~ Developing]() 数学交互类
- [Exceptions](#markdown-markdown-header-💢-exceptions) 异常部分
  - [BasicException](#markdown-markdown-header-🧱-basicexception) 基础异常
    - [HashException](#markdown-markdown-header-📛-hashexception) 哈希异常

<a id="markdown-markdown-header-🌏-environmentcs" name="markdown-header-🌏-environmentcs"></a>
## 🌏 Environment.cs
<a id="markdown-markdown-header-💾-functions" name="markdown-header-💾-functions"></a>
### 💾 Functions
| Name               | Args | Description                                                         |
|--------------------|------|---------------------------------------------------------------------|
| CheckEnvironment   |      | Make sure all environment and core file are installed, return bool. |
| InstallEnvironment |      | Download all environment and core file to install to localhost.     |

* `使用`:
  1. 先 CheckEnvironment() , 如果为 false , 执行 `2`
  2. 执行 InstallEnvironment() , 等待安装完毕
* `安全性`:
  常青园保证存储在云端的所有 dll 文件不会被常青园篡改, 也不会被常青园投毒
  如果对安全性持有疑问, 建议在本地手动构建, 毕竟这是开源的算法库

<a id="markdown-markdown-header-📛-hashcs" name="markdown-header-📛-hashcs"></a>
## 📛 Hash.cs
<a id="markdown-markdown-header-💾-公共方法函数" name="markdown-header-💾-公共方法函数"></a>
### 💾 公共方法/函数
| Name                           | Args                                             | Description                                             |
|--------------------------------|--------------------------------------------------|---------------------------------------------------------|
| HashCompressLevelParse         | `string` compressed, src; `bool` lnk = true      | Parse compress level, return `CompressLevel`            |
| FromString                     | `string` str; `CompressLevel` clv                | Hash a string and compress it in clv, return byte[]     |
| FromString2Hex                 | `string` str; `bool` rmLink; `CompressLevel` clv | Hash a string and compress it in clv, return hex string |
| FromString_WithoutCompress     | `string` str                                     | Hash a string and return byte[]                         |
| FromString2Hex_WithoutCompress | `string` str; `bool` rmLink                      | Hash a string and return hex string                     |

<a id="markdown-markdown-header-🔢-枚举值定义" name="markdown-header-🔢-枚举值定义"></a>
### 🔢 枚举值定义
| Name          | Values                                  | Description                                   |
|---------------|-----------------------------------------|-----------------------------------------------|
| CompressLevel | `x128`, `x64`, `x32`, `x16`, `x8`, `x4` | Compress to x128, x64, x32, x16, x8, x4 bytes |
| ~~HashMode~~  | `StringHash`, `FileHash`                | Hash mode                                     |

<a id="markdown-markdown-header-💢-exceptions" name="markdown-header-💢-exceptions"></a>
## 💢 Exceptions

<a id="markdown-markdown-header-🧱-basicexception" name="markdown-header-🧱-basicexception"></a>
### 🧱 BasicException

<a id="markdown-markdown-header-📛-hashexception" name="markdown-header-📛-hashexception"></a>
### 📛 HashException

----

<a id="markdown-markdown-header-🧱-base-基础库" name="markdown-header-🧱-base-基础库"></a>
# 🧱 Base - 基础库
<a id="markdown-markdown-header-💾-全局宏定义" name="markdown-header-💾-全局宏定义"></a>
## 💾 全局宏定义
``` CPP
typedef __int64 i64;
typedef unsigned __int64 ull;

typedef __int32 i32;
typedef unsigned __int32 uint;

typedef unsigned char uchar;
typedef long double ld;
```

----

<a id="markdown-markdown-header-📐-math-数学库" name="markdown-header-📐-math-数学库"></a>
# 📐 Math - 数学库
<a id="markdown-markdown-header-💾-functions-函数列表" name="markdown-header-💾-functions-函数列表"></a>
## 💾 Functions - 函数列表
| Name  | Argv                     | Function                                                                                       |
|-------|--------------------------|------------------------------------------------------------------------------------------------|
| max   | `i64` x, ...             | Return max num in args, `x` is the count.                                                      |
| min   | `i64` x, ...             | Return min num in args, `x` is the count.                                                      |
| mid   | `i64` a, b, c            | Return middle num in 3 args.                                                                   |
| mixin | `i64` *max, *min, x, ... | Find both max and min num in args, put to `&max` and `&min`, `x` is the count.                 |
| abs   | `i64` x                  | Return the absolute value of x.                                                                |
| pow   | `i64` x, t               | Return $x^t$.                                                                                  |
| gcd   | `i64` a, b               | Return gcd(a, b), gcd means -> greatest common divisor.                                        |
| gobit | `i64` x; `i32` len       | Return part of the x in binary, length was len. For example, $gobit(110_{(2)}, 3) = 10_{(2)}$. |

----

<a id="markdown-markdown-header-📛-hash-哈希库" name="markdown-header-📛-hash-哈希库"></a>
# 📛 Hash - 哈希库
<a id="markdown-markdown-header-💾-functions-函数列表_1" name="markdown-header-💾-functions-函数列表_1"></a>
## 💾 Functions - 函数列表
| Name                  | Argv                             | Function                                                           |
|-----------------------|----------------------------------|--------------------------------------------------------------------|
| extern_test_getnum    |                                  | To test if the dll was succeeded imported, if succeeded, return 1. |
| hash_str              | `uchar` *src, *rst; `i32` length | Calculate the hash value of the src and put to rst.                |
| hash_compress_128_str | `uchar` *src, *rst               | Compress the hash value to 128 bytes and put to rst.               |
| hash_compress_64_str  | `uchar` *src, *rst               | Compress the hash value to 64 bytes and put to rst.                |
| hash_compress_32_str  | `uchar` *src, *rst               | Compress the hash value to 32 bytes and put to rst.                |
| hash_compress_16_str  | `uchar` *src, *rst               | Compress the hash value to 16 bytes and put to rst.                |
| hash_compress_8_str   | `uchar` *src, *rst               | Compress the hash value to 8 bytes and put to rst.                 |
| hash_compress_4_str   | `uchar` *src, *rst               | Compress the hash value to 4 bytes and put to rst.                 |
| hash_file             | `uchar` *fileName; `int` type    | Developing ...                                                     |

