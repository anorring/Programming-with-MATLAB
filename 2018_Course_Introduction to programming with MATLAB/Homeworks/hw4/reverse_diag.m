% Write a function called reverse_diag that creates a square matrix whose 
%   elements are 0 except for 1s on the reverse diagonal from top right to
%   bottom left. The reverse diagonal of an n- by-n matrix consists of the
%   elements at the following indexes: (1, n), (2, n-1), (3, n-2), ... 
%   (n, 1). The function takes one positive integer input argument named n,
%   which is the size of the matrix, and returns the matrix itself as an 
%   output argument. Note that using the built-in functions eye and diag 
%   are not allowed. (Hint: you can index into a matrix with a single 
%   index and MATLAB will handle it as if it was a vector using 
%   column-major order. Note that the grader will not test for n = 1, but
%   try to solve it for that case too.)
%
% input: n, positive integer, the size of the matrix
% output: M, square matrix with 1s one the reverse diagonal and 0s
%           otherwise

% This function does not work for n = 1:
%function D = reverse_diag(n)
%    D = zeros(n);
%    D(n:max([1,n-1]):max([n,n^2-1])) = 1;
%end

% ALT. SOLUTION:

function D = reverse_diag(n)
    D = zeros(n);
    D(1:n+1:end) = 1;
    D = flip(D);
end