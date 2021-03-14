% PROBLEM STATEMENT
% find fourier series of f(x) = x^2 in (-1,1) in two harmonics
clc
clear all
syms x
ll = input("Enter lower limit : ");
ul = input("Enter Upper limit : ");
L=(ul-ll)/2;
f=input("Enter function : ");
N=2;
a0=int(f,x,ll,ul)
Fs=a0/2;
for n=1:N
a(n)=(1/L)*int(f*cos(n*pi*x/L),x,ll,ul);
b(n)=(1/L)*int(f*sin(n*pi*x/L),x,ll,ul);
Fs=Fs+a(n)*cos(n*pi*x/L)+b(n)*sin(n*pi*x/L)
end