% Test_Secant_1b.m
%
% The script Test_Secant_1b.m tests the function secant_1b() with a = 3, 
% x_0 = 1, x_1 = 2, and MAX_N = 10
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 1b

a = 3;
x_0 = 1;
x_1 = 2;
MAX_N = 10;
TOL = 1.0e-13;

x_sol = secant_1b(a,x_0,x_1,MAX_N, TOL);
fprintf('The secant approx for the root of f(x)=0 is x=%.11f\n',x_sol);