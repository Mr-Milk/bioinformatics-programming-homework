# 编程练习第三周（2019.02.18-2019.02.22）
# 任务：
# 统计酵母基因组SCU49845位置的CDS区域的长度
# 输入：酵母基因组SCU49845位置的序列（genbank格式）
# 输出：序列长度
# GenBank是美国国立卫生研究院维护的基因序列数据库，汇集并注释了所有公开的核酸以及蛋白质序列。每
# 个记录代表了一个单独的、连续的、带有注释的DNA或RNA片段。
# 输入文件：
# cd week3
# SCU49845.gb
# 1 2

#calculate CDS length
setwd("E:\\github\\bioinformatics-programming-homework\\week3")
con <- file("SCU49845.gb", "r")
line<-readLines(con,n=1)
fileout<-capture.output(while( length(line) != 0 ) {
  print(line)
  line=readLines(con,n=1)
})
close(con)
CDS_line<-fileout[grep("CDS",fileout)]
see <- function(rx) str_view_all(CDS_line, rx)
see("\\d+")
CDS_num=str_extract_all(CDS_line,"\\d+")
deduce_fun<-function(x){
  len<-length(x)
  tmp<-NULL
  for(i in 1:len){
    tmp[i]<-as.numeric(x[[i]][3])-as.numeric(x[[i]][2])
  }
  return(sum(tmp)+length(tmp))
  
}
res<-deduce_fun(CDS_num)
paste("CDS length is:",res,"bp")




#calculate amino acid total
setwd("E:\\github\\bioinformatics-programming-homework\\week3")
library(stringr)
SCU_49845=readLines("SCU49845.gb",encoding="UTF-8")
SCU_49845=paste(SCU_49845,collapse = "")
see <- function(rx) str_view_all(SCU_49845, rx)
see("translation.\"[A-Z\\s+]+\"")
extracted=str_extract_all(SCU_49845,"translation.\"[A-Z\\s+]+\"")
result=str_length(str_extract_all(extracted,"[:upper:]"))
paste("amino acid total:",result)


