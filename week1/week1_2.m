% Problem Statement
% Find the Eigen Values and Eigen Vectors of Matrix.
clc
clear all
A = input("Enter a matrix : ");
[V,D]= eig(A);   % Diagonal 
eA = diag(D);
evA = V ;    % Modal Matrix
e1=D(1,1)
x1 = V(:,1)
e2=D(2,2)
x2 = V(:,2)
e3=D(3,3)
x3 = V(:,3)