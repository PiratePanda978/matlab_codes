%Problem Statement
%Find Fourier Series of f(x) = cos(x)+sin(2*x) in (0,2*pi) considering 1
%harmonic
clc
clear all
syms x
ll = 0; ul =2*pi; L=(ul-ll)/2;
f=cos(x)+sin(2*x);
N=1;
a0=int(f,x,ll,ul);
sum=0;
for n=1:N
a(n)=(1/L)*int(f*cos(n*pi*x/L),x,ll,ul);
b(n)=(1/L)*int(f*sin(n*pi*x/L),x,ll,ul);
s(n)=a(n)*cos(n*pi*x/L)+b(n)*sin(n*pi*x/L);
sum=sum+s(n);
F(n)=a0/2+sum; % F(n) - Fourier series considering n harmonics
end
% comparision of f and F with n harmonics
for n=1:N
figure(n)
F_S=F(n);
fprintf('Fourier series of f upto %d harmonic terms is\n',n)
disp(vpa(F_S,3))
h1=ezplot(f,[ll,ul]); % graph of f in [ll,ul]
set(h1,'color','b')
hold on
h2=ezplot(F_S,[ll,ul]); % graph of Fourier series of f in [ll,ul]
set(h2,'color','r')
g1=ezplot(a0/2,[ll,ul]); % graph of average value of f in [ll,ul]
set(g1,'color','k')
legend('f','F_s')
title('Fourier series of f(x)')
end