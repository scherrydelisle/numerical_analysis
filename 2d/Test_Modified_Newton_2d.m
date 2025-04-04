%% Test_Modified_Newton_2d.m
%
% The script Test_Modified_Newton_2d.m tests the function 
% modified_newton_2d() with x_0 = 0, MAX_N = 20, and TOL = 1.0e-10 
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 2d

x_0 = 0;
MAX_N = 20;
TOL = 1.0e-10;

x_sol = modified_newton_2d(x_0, MAX_N, TOL);
fprintf('The modified Newton approx for root of f(x)=0 is x=%.20f\n',...
    x_sol);