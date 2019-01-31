## 编程作业

### 作业要求

- 编程语言不限

- 作业每周会放在该周的文件夹下，请查阅

  > 例如本周是Week1，作业内容会放在week1文件夹下

- 请每位同学上传作业前将自己的文件放进一个文件夹，并以自己的名字命名



### Git的简单使用

<p align="left"><img src="https://d1dwq032kyr03c.cloudfront.net/upload/images/20181017/20110334Zr0YyqauG2.png" width="300"></p>

[什么是Git？](http://blog.a0z.me/2014/05/21/GitBeginning/)

1. [注册一个GitHub账号](https://github.com/)
2. [申请学生高级账户享受免费的高级功能](https://education.github.com/pack) （可选）
3. 开始使用GitHub
4. [Git的简单命令](http://www.bootcss.com/p/git-guide/)



### 如何提交作业

1. 首先联系Milk将你添加至Collaborators以获得权限

2. 在本地一个你打算保存作业的地方，打开终端(MacOS, Linux)或CMD(Windows)

   ```shell
   git clone https://github.com/Mr-Milk/bioinformatics-programming-homework.git
   
   # 进入这个文件夹
   cd bioinformatics-programming-homework
   ```

3. 当你完成你的作业之后

   ```shell
   # 先更新你本地的仓库
   git pull origin master
   
   # 如果这一周是周一，则进入week1这个文件夹
   cd week1
   
   # 创建你自己名字的文件夹，在这个目录下保存你的作业
   mkdir 你的名字
   cd 你的名字
   
   # 以下命令可以查看那些文件发生了更改
   git status
   
   # 把所有改变添加到staging
   git add .
   
   # commit到本地仓库
   git commit -m "commit内容（通常描述做了哪些更改）"
   
   # push到远端仓库
   git push origin master
   ```




### 关于.gitignore

用于忽略各种语言产生的编译文件，现阶段已添加的忽略规则覆盖以下语言

- Python
- R
- Perl
- Java
- C/C++

若使用其他语言进行编程，请参考[GitHub官方.gitignore](https://github.com/github/gitignore)自行添加规则