#!/usr/bin/python
import re
with open('E:/github/bioinformatics-programming-homework/week3/SCU49845.gb', 'r') as f:
	str=f.read()
#print(type(str))

pattern = re.compile(r'CDS.*\d+')
mylist = re.findall(pattern, str)
#print(mylist)
CDS_region=[]
for i in mylist:
	cds_info=re.search(r'(\d+)\.\.(\d+)',i)
	cds_len=int(cds_info.group(2))-int(cds_info.group(1))+1
	CDS_region.append(cds_len)

print("CDS length is :",sum(CDS_region))
