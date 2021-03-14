% PROBLEM STATEMENT & MATLAB CODE :
% Find the half range Fourier sine series of f(x) = x^2 in (0,pi).
clc
clear all
syms x
ll = 0; ul =pi; L=ul-ll;
f=x^2;
N=3;
sum=0;
for n=1:N
b(n)=(2/L)*int(f*sin(n*pi*x/L),x,ll,ul);
s(n)=b(n)*sin(n*pi*x/L);
sum=sum+s(n);
F(n)=sum;
end
for n=1:N
figure(n)
Fs_S=F(n);
fprintf('Half range sine series of f upto %d harmonic terms is\n',n)
disp(vpa(Fs_S,3))
h1=ezplot(f,[ll,ul]); % graph of f in [ll,ul]
set(h1,'color','b')
hold on
h2=ezplot(Fs_S,[ll,ul]); % graph of Fourier series of f in [ll,ul]
set(h2,'color','r')
legend('f','F_s')
title('Half range sine series of f(x)')
axis tight
end