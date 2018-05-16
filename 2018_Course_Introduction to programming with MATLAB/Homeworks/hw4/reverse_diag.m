% input: n, positive integer, the size of the matrix
% output: M, square matrix with 1s one the reverse diagonal and 0s
%           otherwise

function D = reverse_diag(n)
    D = zeros(n);
    D(n:max([1,n-1]):max([n,n^2-1])) = 1;
end

% ALT. SOLUTION:

%function D = reverse_diag(n)
%    D = zeros(n);
%    D(1:n+1:end) = 1;
%    D = flip(D);
%end