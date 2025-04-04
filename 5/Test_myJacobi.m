%% Test_myJacobi.m
%
% The script Test_myJacobi.m tests the function myJacobi()
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 5

A = [10, -1, 2, 0; -1, 11, -1, 2; 2, -1, 10, -1; 0, 3, -1, 8];
tol = 10e-3;
x0 = zeros(4,1);
b = [6; 25; -11; 15];
nmax = 1000;

[x,niter] = myJacobi(A, b, x0, nmax, tol)