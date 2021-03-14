% PROBLEM STATEMENT & MATLAB CODE :
% Find the half range Fourier cosine series of f(x) = x^2 in (0,pi).
clc
clear all
syms x
ll = 0; ul =pi; L=ul-ll;
f=x^2;
N=3;
a0=(2/L)*int(f,x,ll,ul);
sum=0;
for n=1:N
a(n)=(2/L)*int(f*cos(n*pi*x/L),x,ll,ul);
s(n)=a(n)*cos(n*pi*x/L);
sum=sum+s(n);
F(n)=a0/2+sum;
end
% Fourier series as an approximation function
for n=1:N
figure(n)
Fc_S=F(n);
fprintf('Fourier series of f upto %d harmonic terms is\n',n)
disp(vpa(Fc_S,3))
h1=ezplot(f,[ll,ul]); % graph of f in [ll,ul]
set(h1,'color','b')
hold on
h2=ezplot(Fc_S,[ll,ul]); % graph of Fourier series of f in [ll,ul]
set(h2,'color','r')
g1=ezplot(a0/2,[ll,ul]); % graph of average value of f in [ll,ul]
set(g1,'color','k')
legend('f','F_s')
title('Fourier series of f(x)')
axis tight
end