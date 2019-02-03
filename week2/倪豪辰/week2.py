#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Feb  3 20:52:41 2019

@author: nihaochen
"""

seq=""
with open("chr1.fa","r") as f:
    for line in f:
        if ">" in line:
            gene = line
        elif ">" not in line:
            seq = seq + line
    for i in ["A","T","C","G"]:
        nA = seq.count("A")
        nT = seq.count("T")
        nC = seq.count("C")
        nG = seq.count("G")
    nCG = (nC+nG)/(nA+nT+nC+nG)
    print("CG:",nCG)
    