%% Test_myJacobi_6vii.m
%
% The script Test_myJacobi_6vii.m applies the function myJacobi()
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 6 vii)

A = [1, 2, -2; 1, 1, 1; 2, 2, 1];
tol = 10e-3;
x0 = zeros(3,1);
b = [7; 2; 5];
nmax = 25;

[x,niter] = myJacobi(A, b, x0, nmax, tol);

if niter <= nmax
    fprintf('The Jacobi method converged to the following solution ')
    fprintf('in %d iterations: \n', niter);
    x
else 
    fprintf('The Jacobi method failed to converge in ');
    fprintf('< %d iterations. The result obtained was: \n', nmax);
    x
end