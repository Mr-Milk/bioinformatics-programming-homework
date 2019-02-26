# 编程练习第二周（2019.01.21-2019.01.26）
# 任务：
# 计算人类1号染色体的GC含量
# 
# 输入：人类hg38版本基因组中1号染色体的序列（fasta格式）
# 输出：GC含量
# GC含量是在所研究的对象（例如放线菌）的全基因组中，（鸟嘌呤）（Guanine）和胞嘧啶（Cytosine）所占的比例。
# 
# 输入文件：
# cd week2
# chr1.fa.gz

setwd("E:\\github\\bioinformatics-programming-homework\\week2\\陈志荣")
library(data.table)#data.table::fread can read large data quickly
library(stringr)#str_count
help(fread)
chr1<- fread("chr1.fa")
chr1<-paste(chr1$`>chr1`,collapse = "")
chr1<-str_replace_all(chr1, "N", "")
G_C=sum(attr(gregexpr("G|C",chr1,ignore.case=TRUE)[[1]], "match.length"))
G_C_per=paste(round(G_C/str_length(chr1),2)*100,"%")
print(paste("GC percentage:",G_C_per))
