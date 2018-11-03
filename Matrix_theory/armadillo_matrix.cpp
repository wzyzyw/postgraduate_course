#include<armadillo>
#include<stdlib.h>
#include <iostream>
#pragma comment(lib , "blas_win32_MT.lib")
#pragma comment(lib , "lapack_win32_MT.lib")

using namespace arma;
using namespace std;
void armadillo();

int main()
{
	armadillo();
	system("pause");
}

void armadillo()
{
	mat my_matrix = randi<mat>(3, 3);
	cout << "Here is my matrix:" << endl << my_matrix << endl;
	cout << "*******************************" << endl;
	//LU factorization
	mat L, U, P;
	lu(L, U, P, my_matrix);//PA=LU
	cout << "Here is the L part:" << endl;
	cout << L << endl;
	cout << "*******************************" << endl;
	cout << "Here is the U part:" << endl;
	cout << U << endl;
	cout << "*******************************" << endl;
	cout << "Reconstruct the original matrix:" << endl;
	cout << inv(P)*L*U << endl;
	//QR factorization
	cout << "Here is my matrix:" << endl << my_matrix << endl;
	cout << "*******************************" << endl;
	mat Q, R;
	qr(Q, R, my_matrix);
	cout << "Here is the Q part:" << endl;
	cout << Q << endl;
	cout << "*******************************" << endl;
	cout << "Here is the R part:" << endl;
	cout << R << endl;
	cout << "*******************************" << endl;
	cout << "Reconstruct the original matrix:" << endl;
	cout << Q*R << endl;
	//SVD factorization
	cout << "Here is my matrix:" << endl << my_matrix << endl;
	cout << "*******************************" << endl;
	mat svd_U, svd_V;
	colvec svd_s;
	svd(svd_U, svd_s, svd_V, my_matrix);
	mat svd_S = eye(3, 3);
	svd_S(0, 0) = svd_s(0);
	svd_S(1, 1) = svd_s(1);
	svd_S(2, 2) = svd_s(2);
	cout << "Here is the U part:" << endl;
	cout << svd_U<< endl;
	cout << "*******************************" << endl;
	cout << "Here is the V part:" << endl;
	cout << svd_V<< endl;
	cout << "*******************************" << endl;
	cout << "Here is the S part:" << endl;
	cout << svd_S << endl;
	cout << "*******************************" << endl;
	cout << "Reconstruct the original matrix:" << endl;
	cout << svd_U*svd_S*svd_V.t()<< endl;

}
