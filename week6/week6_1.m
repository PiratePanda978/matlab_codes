%Fourier Series of function given in tabular form
% PROBLEM STATEMENT & MATLAB CODE :
% Obtain the Fourier series of Y(x) given in the table below,
% upto first two harmonics.
% ------------------------------------------------------------------
% x : 0 pi/3 2*pi/3 pi 4*pi/3 5*pi/3
% y(x) : 0 2.5981 -0.8660 0 0.8660 -2.5981
% ------------------------------------------------------------------
clc
clear all
syms x
%Period
T=2*pi;
L=T/2;
%X-Vector
X=[0 pi/3 2*pi/3 pi 4*pi/3 5*pi/3];
u=1;
if (u==0)
X=X*pi/180;
end
%Y-Vector
Y=[0 2.5981 -0.8660 0 0.8660 -2.5981];
N=length(X);
%Harmonics
M=2;
a0=(2/N)*sum(Y);
for m=1:M
am=(2/N)*sum(Y.*cos(m*pi*X/L));
a(m)=round(am*100)/100;
bm=(2/N)*sum(Y.*sin(m*pi*X/L));
b(m)=round(bm*100)/100;
H(m)=a(m)*cos(m*pi*x/L)+b(m)*sin(m*pi*x/L);
end
HS=(a0)/2+sum(H);
HS=vpa(HS);
disp('Fourier series is')
disp(vpa(HS,3))
ezplot(HS,[X(1),X(end)])
hold on
plot(X,Y,'r*')