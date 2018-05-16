% input: N, a n-by-m matrix
% output: S, a k-by-4 matrix s.t. 
%               - k = n, ie. S has the same number of rows as N
%               - column 1: mean of rows in N
%               - column 2: median value of rows in N
%               - column 3: minimums of rows in N
%               - column 4: maximums of rows in N

function S = simple_stats(N)
a = mean(N,2);               %mean() over the second dimension, i.e. rows
b = median(N,2);
c = min(N,[],2);
d = max(N,[],2);
S = [a b c d];
end

% SOLUTION:

%function S = simple_stats(N)
%    S = [mean(N,2) median(N,2) min(N,[],2) max(N,[],2)];
%end