#!/usr/bin/python
import operator
seq="AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
def count_each_char_1(string):
    res = {}
    for i in string:
        if i not in res:
            res[i] = 1
        else:
            res[i] += 1
    return res
 
print(count_each_char_1(seq))

#how to see pydoc
#>>> help()
#help> modules
#>>> import math
#>>> help(math)
#>>> import sys
#>>> sys.builtin_module_names
#('_ast', '_bisect', '_codecs', '_codecs_cn', '_codecs_hk', ... 'zlib')
#>>> 
#>>> dir(math)
#['__doc__', '__loader__', '__name__',...]
#>>>
#>>> help(math.sin)
#>>> print(print.__doc__)
