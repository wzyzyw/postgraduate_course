%���ɹ۲�����
x=0:0.2:10;
y=2*sin(x)+3*cos(x)+1+wgn(length(x),1,10*log(0.2))';
%5�ζ���ʽ���
H_poly=zeros(length(x),6);
%�����۲����
for n=1:length(x)
    for p=0:5
        H_poly(n,p+1)=x(n)^(5-p);
    end
end
%�õ����Ʋ��������ƽ����Э�������
theta_poly=inv(H_poly'*H_poly)*H_poly'*y';
y_poly=H_poly*theta_poly+wgn(length(x),1,10*log(0.2));
C_poly=0.2*inv(H_poly'*H_poly);
%��ͼ
figure;
subplot(211);
plot(x,y,'.',x,y_poly','r');
xlabel('x')
ylabel('y')
title('5�ζ���ʽ���')
%���������
H_sin=ones(length(x),3);
%�����۲����
for n=1:length(x)
    H_sin(n,1)=sin(x(n));
    H_sin(n,2)=cos(x(n));
end
%�õ����Ʋ��������ƽ����Э�������
theta_sin=inv(H_sin'*H_sin)*H_sin'*y';
C_sin=0.2*inv(H_sin'*H_sin);
y_sin=H_sin*theta_sin+wgn(length(x),1,10*log(0.2));
%��ͼ
subplot(212)
plot(x,y,'.',x,y_sin','r');
xlabel('x')
ylabel('y')
title('���������')
trace(C_poly)
trace(C_sin)

    