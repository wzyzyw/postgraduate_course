%generate 6x6 matric
my_matrix=[5,4,9,12,3,6;4,8,4,7,5,10;7,11,4,6,15,19;13,17,5,20,23,16;31,27,17,36,12,18;41,37,29,16,51,23];
%LU factorization
[L,U]=lu(my_matrix);
reconstructed_My_matrix_LU=L*U;
% display(L);
% display(U);
%QR factorization
[Q,R]=qr(my_matrix);
reconstructed_My_matrix_QR=Q*R;
%SVD factorization
[U,S,V]=svd(my_matrix);
reconstructed_My_matrix_SVD=U*S*V';
