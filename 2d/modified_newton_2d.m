
function [x_sol] = modified_newton_2d(x_0,MAX_N, TOL)
%% MODIFIED_NEWTON_2D: Uses the modified Newton mathod to approx the 
% solution to f(x)=0 where f(x) = e^x-ex.
%
% Inputs
% a        :  a scalar parameter of the function f(x) = x^3-a
% x_0      :  an initial approx for the soln to f(x)=0
% MAX_N    :  the maximum number of iterations of the while loop used to
%           compute the modified Newton terms
% TOL      : the tolerance for the difference between the approximated soln
%           x_sol and the initial approximation x_0
% Outputs
% x_sol    :  the modified Newton method approx for the soln to f(x)=0
%
% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 2d) 

p = 2; 
x_exact = 1; 
i = 1;

while i <= MAX_N
    f_x_0 = vpa(exp(x_0)-exp(1)*x_0);
    df_x_0 = vpa(exp(x_0)-exp(1));
    f_df = vpa(f_x_0/df_x_0);
    x = vpa(x_0 - p*f_df);
    x_exact = 1;
    
    x_diff = vpa(abs(x-x_0));
    approx_err = vpa(abs(x - x_exact));
    if x_diff < TOL
        fprintf('For i=%d, approx soln is x=%.20f\n', i, x);
        fprintf('   abs(x - x_exact) is %.20f\n\n', approx_err);
        x_sol = x;
        return
    end
    
    fprintf('For i=%d, approx soln is x=%.20f\n', i, x);
    fprintf('   abs(x - x_exact) is %.20f\n', approx_err);
    
    i = i + 1;
    x_0 = x;
end

fprintf('\n');
x_sol = x;

