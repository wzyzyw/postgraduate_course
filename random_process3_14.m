%generate gaussian sequency
%mu is mean of genrated gaussian sequency
%sigma is standard deviation of genrated gaussian sequency
N=100;
mu=2;
sigma=0.1;
gaussian_sequency=mu+sigma*randn(1,N);
sequency_mean=mean(gaussian_sequency);
sequency_var=var(gaussian_sequency);
%check white sequency by checking its autocorr funtion
sequency_autocorr=autocorr(gaussian_sequency);
%plot histogram
histogram(gaussian_sequency);
%chi sequency test
%if h=1,reject the hypothesis at 5% significance level
%if h=0,receive
%hypothesis:chi2gof(x)£¬x are from normal distribution
h=chi2gof(gaussian_sequency);

