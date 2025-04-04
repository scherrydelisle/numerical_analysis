function [x,niter] = myJacobi(A,b,x0,nmax,tol)
%% myJacobi: Solves Ax=b given an initial approx x0
%
% Inputs
% A        :  an n x n real-valued matrix with non-zero diagonal entries
% b        :  an n-dimensional, real-valued column vector
% x0      :  an n-dimensional column vector that is the initial guess 
%             for the solution to the matrix eq Ax=b
% nmax     :  the max number of iterations
% tol      :  the tolerance level at which iterating stops

% Outputs
% x        :  an n-dimension column vector that is the approx of the
%             solution to the matrix equation Ax=b
% n        :  the number of iterations taken for the method to converge
%

% AUTHOR: Simone Cherry-Delisle
% UCID: 10144438
% COURSE: MATH 391
% ASSIGNMENT: Assignment 3 Q 5) 

n= size(A,1);
x = zeros(1,n);
x0 = transpose(x0);
b = transpose(b);
k = 1;

while k <= nmax
    for i = 1:n
        sum = 0;
        b_i = b(i);
        a_ii = A(i,i);
        for j = 1:n
            if j ~= i
                a_ij = A(i,j);
                x0_j = x0(j);
                sum = sum + a_ij * x0_j;
            end
        end
        x_i = (b_i - sum) / a_ii;
        x(i) = x_i;        
    end
    xksub1 = x0(:); 
    for i = 1:n
        x_i = x(i);
        x0(i) = x_i;
    end
    
    xk = x0(:);
    num_rel_err = vpa(norm(xk-xksub1));
    denom_rel_err = vpa(norm(xk));
    rel_err = vpa(num_rel_err / denom_rel_err);

    if rel_err < tol
        x = x0;
        niter = k;
        return
    end
    k = k + 1;
end
x = x0;
niter = k;
end
