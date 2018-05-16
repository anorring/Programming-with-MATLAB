function s = corner_sum(M)
s = M(1,1) + M(1,end) + M(end,1) + M(end,end);

% Note: Do not define a matrix inside the function - then the answer will
% be the same no matter what matrix used as an input.

% Important to assign the function to a variable.