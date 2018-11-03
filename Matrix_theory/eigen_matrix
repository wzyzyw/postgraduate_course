#include <Eigen\Dense>
#include<stdlib.h>
#include <iostream>
using namespace Eigen;
using namespace std;
void eigen();

int main()
{
	eigen();
	system("pause");
}

void eigen()
{
	MatrixXf my_matrix = MatrixXf::Random(4, 4);
	cout << "Here is my matrix:" << endl << my_matrix << endl;
	cout << "*******************************" << endl;
	//LU factorization
	FullPivLU<Matrix4Xf> lu(my_matrix);
	cout << "Here is the L part:" << endl;
	Matrix4Xf L = MatrixXf::Identity(4, 4);
	L.block<4, 4>(0, 0).triangularView<StrictlyLower>() = lu.matrixLU();
	cout << L << endl;
	cout << "*******************************" << endl;
	cout << "Here is the U part:" << endl;
	Matrix4Xf U = lu.matrixLU().triangularView<Upper>();
	cout << U << endl;
	cout << "*******************************" << endl;
	cout << "Reconstruct the original matrix:" << endl;
	cout << lu.permutationP().inverse() * L * U  * lu.permutationQ().inverse() << endl;
	cout << "*******************************" << endl;
	//QR factorization
	cout << "Here is my matrix:" << endl << my_matrix << endl;
	cout << "*******************************" << endl;
	HouseholderQR<Matrix4Xf>  qr(my_matrix);
	Matrix4Xf R = qr.matrixQR().triangularView<Upper >();
	Matrix4Xf Q = qr.householderQ();
	cout << "Here is the Q part:" << endl;
	cout << Q << endl;
	cout << "*******************************" << endl;
	cout << "Here is the R part:" << endl;
	cout << R << endl;
	cout << "*******************************" << endl;
	cout << "Reconstruct the original matrix:" << endl;
	cout << Q*R << endl;
	cout << "*******************************" << endl;
	//SVD factorization
	cout << "Here is my matrix:" << endl << my_matrix << endl;
	cout << "*******************************" << endl;
	JacobiSVD<MatrixXf> svd(my_matrix, ComputeThinU | ComputeThinV);
	MatrixXf svd_U = svd.matrixU();
	MatrixXf svd_V = svd.matrixV();
	MatrixXf svd_S = svd_U.inverse()*my_matrix*svd_V.transpose().inverse();
	//Vector4f svd_s = svd.singularValues();
	//MatrixXf svd_S(svd_s.asDiagonal());
	cout << "Here is the U part:" << endl;
	cout << svd_U << endl;
	cout << "*******************************" << endl;
	cout << "Here is the V part:" << endl;
	cout << svd_V << endl;
	cout << "*******************************" << endl;
	cout << "Here is the S part:" << endl;
	cout << svd_S << endl;
	cout << "*******************************" << endl;
	cout << "Reconstruct the original matrix:" << endl;
	cout << svd_U*svd_S*svd_V.transpose() << endl;
	cout << "*******************************" << endl;
}

