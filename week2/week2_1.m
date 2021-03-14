% PROBLEM STATEMENT & MATLAB CODE :
% Reduce the matrix A = [1 1 3;1 5 1;3 1 1]
% to a diagonal matrix using similarity transformation.

clear all
clc
syms x
A=input('Enter a real square matrix A:');
[N,D]= eig(A);
option=isequal(A,A');
if(option==0)
disp('A is not a symmetric matrix.')
disp('A is reduced to D through similarity transformation.')
else
disp('A is symmetric matrix.')
disp('A is reduced to D through orthogonal transformation.')
end
D
fprintf('\n%s','The eigenvalues of A are')
disp(diag(D)')
fprintf('\n%s','The eigenvectors of A are the columns of modal matrix N')
N