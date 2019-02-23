#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Feb 23 16:33:28 2019

@author: nihaochen
"""
import re
numList = list()
regex = re.compile('\d+')
with open(r'./SCU49845.gb') as f:
    for line in f.readlines():
        x = line.strip()
        if x.startswith("CDS"):
            n1,n2 = regex.findall(x)
            n = float(n2) - float(n1) + 1
            numList.append(n)
sum(numList)

#3416
