% Write a function called zero_stat that takes a matrix as an input that 
%   only has 0 and 1 elements. The function needs to compute and return 
%   the percentage of 0 elements in the matrix. For example, if there are 
%   10 zeros and 15 ones in a 5-by-5 matrix that is provided as an input 
%   to zero_stat, it would return 40 because 40% of the elements are zero.
%
% input: A, a matrix with only 0 and 1 elements
% output: z, the percentage share of zero elements

function z = zero_stat(A)
z = 100*(1-(nnz(A))/(numel(A))) % nnz gives the number of nonzero matrix elements
end                             % numel gives the number of elements in an array    
                                    
% SOLUTION:

%function pct = zero_stat(A)
%    pct = 100 * (numel(A) - sum(A(:))) / numel(A); % this works because A has only elements 0 or 1
%end


