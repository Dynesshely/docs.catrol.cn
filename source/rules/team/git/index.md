---
title: 使用 Git 的项目合作
---

<a id="markdown-markdown-header-目录" name="markdown-header-目录"></a>
# 目录
<!-- TOC -->

- [目录](#markdown-header-目录)
- [Git 简介](#markdown-header-git-简介)
- [Git 初体验](#markdown-header-git-初体验)
    - [Git 安装与卸载 (bushi)](#markdown-header-git-安装与卸载-bushi)
        - [Windows](#markdown-header-windows)
        - [Linux](#markdown-header-linux)
            - [Debian](#markdown-header-debian)
            - [Red Hat](#markdown-header-red-hat)
            - [使用源码进行安装](#markdown-header-使用源码进行安装)
            - [配置](#markdown-header-配置)
                - [用户信息](#markdown-header-用户信息)
                - [配置代理](#markdown-header-配置代理)
                - [查看配置信息](#markdown-header-查看配置信息)
- [代码更改与文件追踪](#markdown-header-代码更改与文件追踪)
- [提交消息规范](#markdown-header-提交消息规范)
    - [格式](#markdown-header-格式)
    - [多行补充内容](#markdown-header-多行补充内容)
- [分支简介](#markdown-header-分支简介)
- [关于 Pull Request](#markdown-header-关于-pull-request)
- [标签](#markdown-header-标签)
- [搭建私有 Git 服务器](#markdown-header-搭建私有-git-服务器)
- [使用 Git 的团队协作](#markdown-header-使用-git-的团队协作)

<!-- /TOC -->

<a id="markdown-markdown-header-git-简介" name="markdown-header-git-简介"></a>
# Git 简介
> Git 是一个开源的分布式版本控制系统, 用于敏捷高效地处理任何或小或大的项目.  
> Git 是 Linus Torvalds 为了帮助管理 Linux 内核开发而开发的一个开放源码的版本控制软件.  
> Git 与常用的版本控制工具 CVS, Subversion 等不同, 它采用了分布式版本库的方式, 不必服务器端软件支持.  

以上简介来自[菜鸟教程](https://www.runoob.com/git/git-tutorial.html)

<a id="markdown-markdown-header-git-初体验" name="markdown-header-git-初体验"></a>
# Git 初体验
<a id="markdown-markdown-header-git-安装与卸载-bushi" name="markdown-header-git-安装与卸载-bushi"></a>
## Git 安装与卸载 (bushi)
<a id="markdown-markdown-header-windows" name="markdown-header-windows"></a>
### Windows
前往 [Git 官网](https://git-scm.com/) 下载最新版本的 Git 安装包  
执行该安装包, 一路默认即可 (有能力的可以修改一些配置)
执行完毕之后检查是否安装成功:
1. 打开 PowerShell 窗口
2. 输入 git 并回车执行
3. 检查输出, 如果输出正常, 则表示安装成功

<a id="markdown-markdown-header-linux" name="markdown-header-linux"></a>
### Linux
<a id="markdown-markdown-header-debian" name="markdown-header-debian"></a>
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

<a id="markdown-markdown-header-red-hat" name="markdown-header-red-hat"></a>
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

<a id="markdown-markdown-header-使用源码进行安装" name="markdown-header-使用源码进行安装"></a>
#### 使用源码进行安装
前往 [Git 官网](https://git-scm.com/) 下载最新版本的 Git 的源码包  
依照前两小节, 安装指定系统的依赖包, 并解压源码包  
参照以下指令安装  
``` bash
tar -zxf git-1.7.2.2.tar.gz
cd git-1.7.2.2
make prefix=/usr/local all
sudo make prefix=/usr/local install
```

<a id="markdown-markdown-header-配置" name="markdown-header-配置"></a>
#### 配置

<a id="markdown-markdown-header-用户信息" name="markdown-header-用户信息"></a>
##### 用户信息
配置个人的用户名称与电子邮件地址
``` bash
git config --global user.name "<用户名>"
git config --global user.email "<电子邮件地址>"
```
请将 `<用户名>` 和 `<电子邮件地址>` 替换为你的用户名称和电子邮件地址  
同时要求该电子邮件地址尽可能与 GitHub 绑定的电子邮件地址一致(如果你使用 GitHub 来团队协作的话)  

----

<a id="markdown-markdown-header-配置代理" name="markdown-header-配置代理"></a>
##### 配置代理
因为一些众所周知的原因, 大陆访问 GitHub 的速度可以以亿万分之一个光速来计量  
因此, 我们往往会使用一些魔法来让 Git 可以访问 GitHub  
``` bash
git config --global http.proxy "http://<代理服务器地址>:<代理服务器端口>"
git config --global https.proxy "https://<代理服务器地址>:<代理服务器端口>"
```
请将 `<代理服务器地址>` 和 `<代理服务器端口>` 替换为你的代理服务器地址和端口

----

<a id="markdown-markdown-header-查看配置信息" name="markdown-header-查看配置信息"></a>
##### 查看配置信息
要检查已有的配置信息, 可以使用 `git config --list` 命令  
有时候会看到重复的变量名, 那就说明它们来自不同的配置文件（比如 /etc/gitconfig 和 ~/.gitconfig）, 不过最终 Git 实际采用的是最后一个.  
这些配置我们也可以在 ~/.gitconfig 或 /etc/gitconfig 看到.  

<a id="markdown-markdown-header-代码更改与文件追踪" name="markdown-header-代码更改与文件追踪"></a>
# 代码更改与文件追踪
对于 Git 而言, 仓库下的文件有四种状态
```TXT
Untrack  ->  未追踪     ->  一般是新创建的文件, 需要通过 `git add` 来追踪
Modified ->  修改过的   ->  需要通过 `git commit` 来提交更改
Normal   ->  正常       ->  需要通过 `git commit` 来提交更改
Delete   ->  已删除     ->  一般是已追踪的但是被删除的文件, 需要通过 `git commit` 来提交更改
```
* 通过 `git add` 添加的文件, Git 会追踪器更改, 一旦发生更改, Git 会将其标记为 `Modified` 状态  
* 通过 `git rm` 移除的文件, Git 不再追踪其更改, 但是仍然会保留其历史记录  
* 通过 `git commit` 提交的文件, Git 会将其标记为 `Normal` 状态, 并且从暂存区或者工作区直接加入版本库  

<a id="markdown-markdown-header-提交消息规范" name="markdown-header-提交消息规范"></a>
# 提交消息规范
在 Git 的使用中, 我们会使用 `git commit` 来提交我们的更改  
这个命令可以使用 `-m "<消息>"` 参数指定提交消息  
这个消息会被记录在提交记录中, 同时也会被显示在 GitHub 中  
那么这个消息的格式便显得极为重要, 因为这能让协作者更好的理解你的更改  
同时方便日后查错以及紧急回滚  
以下是常青园使用的消息规范:  
<a id="markdown-markdown-header-格式" name="markdown-header-格式"></a>
## 格式
``` GIT
<EMOJI> <TYPE>(<SCOPE>): <SUBJECT>
```
其中: 
* `<EMOJI>` 可选项, 表示一个表情符号, 与 `<TYPE>` 相对应, 使用它能够方便查找, 而且增加了趣味性
* `<TYPE>` 表示提交类型, 可选项如下:
    * 💾 `Feat`: 表示这次更改增加了新功能或者削减了原有的功能
    * 🔧 `Fix`: 表示这次更改修复了一个 bug, 此类提交往往还携带 `Close #7.` 此类语句, 用于在 GitHub 上关闭一个 `issue`.
    * 📄 `Docs`: 表示这次更改修改了文档
    * 🎇 `Style`: 表示这次更改修改了代码风格, 但没有影响实质性的逻辑
    * 🧩 `Refactor`: 表示这次更改重构了代码
    * ✔️ `Test`: 表示这次更改测试了一个功能, 往往是单元测试, 同时在 `<SUBJECT>` 中也会包含测试的结果, 是否通过, 若未通过请将 `<EMOJI>` 更换为 ❌
    * 📝 `Chore`: 表示这次更改修改了构建文件, 一般是项目维护程序或者是 IDE 生成的文件, 例如: .sln, .gitignore, makefile 等等
    * 📦 `Struct`: 表示这次更改调整了目录结构, 移动文件, 但不涉及到代码的改动
* `<SCOPE>`: 可选项, 表示这次更改作用的范围, 可以是单个文件或者是文件夹的名称
* `<SUBJECT>`: 主题消息, 用于大致描述更改的内容, 且与 `<TYPE>` 对应

以下是几个 message 样例:  
1. 💾 Feat(MainWindow.xaml.cs): Added a new view for user login.
2. 🔧 Fix: Error on no clients was soluted. Close #14.
3. 📄 Docs(README): New items added.
4. 🎇 Style(All): Move '{' after function to new line.
5. 🧩 Refactor: All `Student` class was created from `Human`.
6. ✔️ Test: Fibonacci sequence gennerator passed test.
7. ❌ Test: Fibonacci sequence gennerator didn't passed test.
8. 📝 Chore: Updated .gitignore, added `.exe` .
9. 📦 Struct: Moved `Human` class to `Human` folder.

<a id="markdown-markdown-header-多行补充内容" name="markdown-header-多行补充内容"></a>
## 多行补充内容
在 [`格式`](#markdown-markdown-header-格式) 一节中, 简述了单行 message 的格式要求  
本节简述一下多行 message 中的格式要求  
一般而言, 仅要求 message 第一行要按照前一节版式进行, 对多行 message 后文的版式不做要求  
所以仅在此提出几点建议: 
1. 对于涉及到的协作人员, 请 `@` TA, 同时请写完整 TA 的提交名称, 以便于 GitHub 能够正确给出指向链接

<a id="markdown-markdown-header-分支简介" name="markdown-header-分支简介"></a>
# 分支简介
请参阅[`Git 工作区, 暂存区和版本库`](https://www.runoob.com/git/git-workspace-index-repo.html), 感谢菜鸟教程

<a id="markdown-markdown-header-关于-pull-request" name="markdown-header-关于-pull-request"></a>
# 关于 Pull Request

<a id="markdown-markdown-header-标签" name="markdown-header-标签"></a>
# 标签

<a id="markdown-markdown-header-搭建私有-git-服务器" name="markdown-header-搭建私有-git-服务器"></a>
# 搭建私有 Git 服务器

<a id="markdown-markdown-header-使用-git-的团队协作" name="markdown-header-使用-git-的团队协作"></a>
# 使用 Git 的团队协作

