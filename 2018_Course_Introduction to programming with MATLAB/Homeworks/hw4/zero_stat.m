% input: A, a matrix with only 0 and 1 elements
% output: z, the percentage share of zero elements

function z = zero_stat(A)
z = 100*(1-(nnz(A))/(numel(A)))
end

% SOLUTION:

%function pct = zero_stat(A)
%    pct = 100 * (numel(A) - sum(A(:))) / numel(A);
%end


