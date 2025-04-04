function [l,u] = TriLU(a,b,c,n)
%% TriLU: Computes the LU decomp of a tridiagonal matrix A
%
% Inputs
% a        :  a col vector containing the n diagonal elements of the
%           tridiagonal matrix A, where a = [a_1, ..., a_n]^T
% b        :  a col vector containing the n-1 subdiagonal elements of the
%           tridiagonal matrix A, where b = [b_2, ..., b_n]^T
% c        :  a col vector containing the n-1 superdiagonal elements of
%           the tridiagonal matrix A, where c = [c_1, ..., c_n-1]^T
% n        :  the size of the (square) tridiagonal matrix A

% Outputs
% l        :  a col vector containing the n-1 subdiagonal elements of the
%           lower tridiagonal matrix L, where l = [l_2, ... l_n]^T
% u        :  a col vector containing the n diagonal elements of
%           the upper tridiagonal matrix U, where u = [u_1, ..., u_n]^T
%

% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 4b) 

a = transpose(a);
b = transpose(b);
c = transpose(c);

l = zeros(n-1, 1);
u = zeros(n-1, 1);

u(1) = a(1);

for i=2:n
    l(i-1) = b(i-1)/u(i-1);
    u(i) = a(i)-l(i-1)*c(i-1);
end 

l = transpose(l);
u = transpose(u);
end

