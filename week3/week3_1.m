% PROBLEM STATEMENT & MATLAB CODE :
% Verify Cayley-Hamilton Theorem for the matrix
% A = [1 1 3;1 5 1;3 1 1].

clear all
clc
syms x
A=input('Enter a matrix A:');
I=eye(size(A))
cpA=det(A-x*I) 
cp=coeffs(cpA,'ALL')
cht=cp(1)*A^3 +cp(2)*A^2+cp(3)*A +cp(4)*I
cht=double(cht)