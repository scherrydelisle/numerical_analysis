%% Test_TriLU.m
%
% The script Test_TriLU.m tests the function 
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 4b

a = [2;3;12;-10;10];
b = [4;-3;-6;-10];
c = [2;3;4;1];
n = 5;

[l,u] = TriLU(a,b,c,n);

l
u