%Problem Statement
%Find the Characteristics polynomial of A matrix and also it's eigen values
clc
clear all
syms x
A = input("Enter a Matrix : ");
I = eye(size(A));
%Characteristics polynomial of A
cpA = det(A-x*I)
% EigenValues of A
cp = coeffs(cpA,'ALL');
eigA=roots(cp)