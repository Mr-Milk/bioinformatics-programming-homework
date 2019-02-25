# 编程练习第一周（2019.01.21-2019.01.26）
# 任务：
# 计算一段DNA序列的碱基组成情况
# 输入：一段DNA序列s，长度不超过1000nt
# 输出：其中每种碱基所占比例

# 输入样例：# 1 AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC
# 输出样例：# 1 A:20 C:12 G:17 T:21



seq="AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
library(stringr)
A=str_count(seq,"A")
C=str_count(seq,"C")
G=str_count(seq,"G")
T=str_count(seq,"T")
seq_dat=data.frame(A,C,G,T)
str_c(colnames(seq_dat),seq_dat,sep=":")
