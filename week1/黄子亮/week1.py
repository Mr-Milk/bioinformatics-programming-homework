#!/usr/bin/env python3
#### test.txt is a certain DNA sequence.

cnts = {c:0 for c in 'ATCG'}
for line in open("test.txt"):
  for c in line.rstrip():
    cnts[c] += 1
print (cnts)
