% input: n, an odd positive integer
% output: s, sum of all the elements in the two doagonals of the n-by-n
% spiral matrix
%
% The formula is derived as in https://www.mathblog.dk/project-euler-28-sum-diagonals-spiral/

function s = spiral_diag_sum(n)
A = 3:2:n 
s = 1 + sum( 4*A.^2 - 6*(A-1)) % The formula "f(n) = 4n^2-6(n-1)+f(n-2)"
end