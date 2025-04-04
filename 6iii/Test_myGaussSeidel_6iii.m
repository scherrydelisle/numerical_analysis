%% Test_myGaussSeidel_6iii.m
%
% The script Test_myGaussSeidel.m tests the function myGaussSeidel()
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 6 iii)

A = [2, -1, 1; 2, 2, 2; -1, -1, 2];
tol = 10e-3;
x0 = zeros(3,1);
b = [-1; 4; -5];
nmax = 25;

[x,niter] = myGaussSeidel(A, b, x0, nmax, tol)


if niter <= nmax
    fprintf('The Gauss Seidel method converged to the following solution ')
    fprintf('in %d iterations: \n', niter);
    x
else 
    fprintf('The Gauss Seidel method failed to converge in ');
    fprintf('< %d iterations. The result obtained was: \n', nmax);
    x
end