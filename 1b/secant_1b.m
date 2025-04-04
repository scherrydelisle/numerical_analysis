
function [x_sol] = secant_1b(a,x_0,x_1,MAX_N, TOL)
%% SECANT_1B: Uses the secant mathod to approximate the solution to f(x) =0,
% where f(x) = x^3-a   
%
% Inputs
% a        :  a scalar parameter of the function f(x) = x^3-a
% x_0      :  an initial approx for the soln to f(x)=0
% x_1      :  an initial approx for the soln to f(x)=0
% MAX_N    :  the maximum number of iterations of the while loop used to
%               compute the secant
% TOL      : the tolerance for the difference between the approximated soln
%           x_sol and the initial approximation x_1
% Outputs
% x_sol    :  the secant method approx for the soln to f(x)=0
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 1b) 
fprintf('For i=1, approx soln is x=%.11f\n', x_0);

i = 2;
y_0 = x_0^3-a;
x = y_0;
y_1 = x_1^3-a;

while i <= MAX_N
    x = x_1 - y_1*((x_1-x_0)/(y_1-y_0));
    x = vpa(x);
    exact_val = vpa(sqrt(3));
    approx_err = vpa(abs(x - exact_val)); 
    x_diff = abs(x - x_1);
    if x_diff < TOL
        fprintf('For i=%d, approx soln is x=%.11f\n', i, x);
        fprintf('   abs(x - x_exact) is %.11f\n\n', approx_err);
        x_sol = x;
        return
    end
    
    fprintf('For i=%d, approx soln is x=%.11f\n', i, x);
    fprintf('   abs(x - x_exact) is %.11f\n', approx_err);
    
    i = i + 1;
    x_0 = x_1;
    y_0 = y_1;
    x_1 = x;
    y_1 = x^3 - a;
end

fprintf('\n');
x_sol = x;
