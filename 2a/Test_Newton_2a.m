%% Test_Newton_2a.m
%
% The script Test_Secant_1b.m tests the function newton_2a() with a = 3, 
% x_0 = 0, MAX_N = 20, and TOL =  
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 2a

x_0 = 0;
MAX_N = 20;
TOL = 1.0e-10;

x_sol = newton_2a(x_0, MAX_N, TOL);
fprintf('The Newton approx for the root of f(x)=0 is x=%.20f\n',x_sol);