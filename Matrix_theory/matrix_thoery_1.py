# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import numpy as np
 
#generate 6x6 matrix
matrix=[[5,4,9,12,3,6],[4,8,4,7,5,10],[7,11,4,6,15,19],[13,17,5,20,23,16],[31,27,17,36,12,18],[41,37,29,16,51,23]]
my_matrix=np.mat(matrix)
#LU factorization
#[L,U]=np.linalg.(my_matrix)
#QR factorization
[Q,R]=np.linalg.qr(my_matrix)
#SVD factorization
[U,S,V]=np.linalg.svd(my_matrix)
