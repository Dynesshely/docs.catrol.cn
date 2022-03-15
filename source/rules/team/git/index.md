---
title: 使用 Git 的项目合作
---

# 目录


# Git 简介
> Git 是一个开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。  
> Git 是 Linus Torvalds 为了帮助管理 Linux 内核开发而开发的一个开放源码的版本控制软件。  
> Git 与常用的版本控制工具 CVS, Subversion 等不同，它采用了分布式版本库的方式，不必服务器端软件支持。  

以上简介来自[菜鸟教程](https://www.runoob.com/git/git-tutorial.html)

# Git 初体验
## Git 安装与卸载 (bushi)
### Windows
前往 [Git 官网](https://git-scm.com/) 下载最新版本的 Git 安装包  
执行该安装包, 一路默认即可 (有能力的可以修改一些配置)
执行完毕之后检查是否安装成功:
1. 打开 PowerShell 窗口
2. 输入 git 并回车执行
3. 检查输出, 如果输出正常, 则表示安装成功

### Linux
#### Debian
> 此分类特指 Debian 系 Linux, 如: [Ubuntu, Mint, Elementary, Zorin, ...]
``` bash
sudo apt update
sudo apt upgrade # 此行是可选的
sudo apt install git
```
若安装失败, 尝试安装以下库之后再试:
``` bash
sudo apt install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
```

#### Red Hat
> 此分类特指 Red Hat 系 Linux, 如: [CentOS, Fedora, RHEL, ...]
``` bash
sudo yum update
sudo yum upgrade # 此行是可选的
sudo yum -y install git-core
```
若安装失败, 尝试安装以下库之后再试:
``` bash
sudo yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel
```

#### 使用源码进行安装
前往 [Git 官网](https://git-scm.com/) 下载最新版本的 Git 的源码包  
依照前两小节, 安装指定系统的依赖包, 并解压源码包  
``` bash
tar -zxf git-1.7.2.2.tar.gz
cd git-1.7.2.2
make prefix=/usr/local all
sudo make prefix=/usr/local install
```

----



# 工作区, 暂存区和版本库

# 代码更改与文件追踪

# 提交消息规范

# 分支简介

# 关于 Pull Request

# 标签

# 搭建私有 Git 服务器

# 使用 Git 的团队协作

