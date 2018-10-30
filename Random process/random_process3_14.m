%generate gaussian sequency
%mu is mean of genrated gaussian sequency
%sigma is standard deviation of genrated gaussian sequency

%3.22
N=100;
mu=2;
sigma=0.1;
gaussian_sequency=mu+sigma*randn(1,N);
sequency_mean=mean(gaussian_sequency);
sequency_var=var(gaussian_sequency);

%3.23
%check white sequency by checking its autocorr funtion

sequency_autocorr=autocorr(gaussian_sequency);
plot(sequency_autocorr);

%3.24
%plot histogram
gaussian_sequency_2=mu+sigma*randn(1,2*N);
figure;
histogram(gaussian_sequency_2);
%chi sequency test
%if h=1,reject the hypothesis at 5% significance level
%if h=0,receive
%hypothesis:chi2gof(x)£¬x are from normal distribution
h=chi2gof(gaussian_sequency_2);

