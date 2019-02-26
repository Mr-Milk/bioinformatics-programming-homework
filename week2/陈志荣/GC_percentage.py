#!/usr/bin/python
with open('E:/github/bioinformatics-programming-homework/week2/陈志荣/chr1.fa', 'r') as f:
	str=f.read()

str=str.lower()
str_list=list(str)
dict={}

for i in str:
	if i in dict:
		count=dict[i]
	else:
		count=0
	count=count+1
	dict[i]=count

GC=dict['c']+dict['g']
total=dict['c']+dict['g']+dict['a']+dict['t']
GC_per=GC/total
print("GC percentage is:",GC_per)

#GC percentage is: 0.417242924908526
#[Finished in 162.8s]
#
#
#
#
#
#
#
#{'>': 1, 'c': 48055044, 'h': 1, 'r': 1, '1': 1, '\n': 4979130, 'n': 18475410, 't': 67244164, 'a': 67070277, 'g': 48111528}
#
#sep=''
#str=sep.join(str)
#resoult={}
#for i in str:
#    resoult[i]=str.count(i)
#print(resoult)
#

#str_list = ['Python','Tab']
#a = ''
#print (a.join(str_list))


#print("Loadding data")
#try:
#    f = open('E:/github/bioinformatics-programming-homework/week2/陈志荣/chr1.fa', 'r')    # 打开文件
#    data = f.read()                   # 读取文件内容
#finally:
#    if f:
#        f.close()                     # 确保文件被关闭

#or :
#with open('E:/github/bioinformatics-programming-homework/week2/陈志荣/chr1.fa', 'r') as f:
#    data= f.read()
#data=data.lower()
#print(type(data))
#resoult={}
#for i in data:
#    resoult[i]=data.count(i)
#print("result",resoult)

#

#def count_GC(input):
#	for i in input:
#		res={}
#		
