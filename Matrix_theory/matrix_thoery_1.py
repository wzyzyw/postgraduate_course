# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import numpy as np
 
#generate 6x6 matrix
matrix=[[6,-3,1],[-3,2,0],[1,0,4]]
#S = np.zeros([5,5])
#my_matrix=np.random.randint(1,25,[5,5])
my_matrix=np.mat(matrix)
#LU factorization
H=np.linalg.cholesky(my_matrix)
reconstructed_My_matrix_LU=np.dot(H,H.T)
#QR factorization
[Q,R]=np.linalg.qr(my_matrix)
reconstructed_My_matrix_QR=np.dot(Q,R);
#SVD factorization
[U,S,VT]=np.linalg.svd(my_matrix)
re_S=np.diag(S)
reconstructed_My_matrix_SVD=np.dot(np.dot(U,re_S),VT)