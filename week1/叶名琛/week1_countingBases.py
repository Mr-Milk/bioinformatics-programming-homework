##### This script is for counting the number  
##### of each type of bases of a certain sequence  
##### no longer than 1000nt.

##### [Input] AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC
##### [Output] A:20 C:12 G:17 T:21

s = list('AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC')

countA = 0
countT = 0
countC = 0
countG = 0

for i in s:
    if i == "A":
        countA = countA + 1
    if i == "T":
        countT = countT + 1 
    if i == "G":
        countG = countG + 1
    if i == "C":
        countC = countC + 1 

print('A:',countA,'C:',countC,'G:',countG,'T:',countT)