% Write a function called simple_stats that takes a matrix N as an input 
%   and returns the matrix S as the output. S has the same number of rows 
%   as N. Each element of the first column of S contains the mean of the 
%   corresponding row of N. Similarly, the second column contains the 
%   median values; while the third column has the minimums. Finally, each
%   element of the fourth column of S is equal to the maximum value of 
%   given row of N. (Hint: note that the grader will not test this with 
%   column vectors, but you should try to solve it for that case too. 
%   Remember, help is your friend.)
%
% input: N, a n-by-m matrix
% output: S, a k-by-4 matrix s.t. 
%               - k = n, ie. S has the same number of rows as N
%               - column 1: mean of rows in N
%               - column 2: median value of rows in N
%               - column 3: minimums of rows in N
%               - column 4: maximums of rows in N

function S = simple_stats(N)
a = mean(N,2);                  % column vector of means over the second dimension, i.e. rows
b = median(N,2);                % column vector of medians over the second dimension, i.e. rows
c = min(N,[],2);                % column vector of mins along the second dimension
d = max(N,[],2);                % column vector of maxs along the second dimension
S = [a b c d];
end

% Note: min(N,2) would return the elements in N that are smaller than 2,
% and 2 for the other elements. I.e. this call compares the two inputs. One
% needs to add the empty array as one input to compare the elements of the
% first input only. The third input specifies the dimension along which the
% comparison happens, here rows.

% SOLUTION:

%function S = simple_stats(N)
%    S = [mean(N,2) median(N,2) min(N,[],2) max(N,[],2)];
%end