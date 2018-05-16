% input 1: n, a positive integer scalar
% input 2: m, a positive integer scalar
% output: Q, a 2n-by2m-matrix with four n-by-m submatrices: top-left with
%           all 0s, top-right with all 1s, bottom-left with all 2s,
%           bottom-right with all 3s

function Q = intquad(n,m)
Q = [zeros(n,m) ones(n,m); 2*ones(n,m) 3*ones(n,m)]
end

%SOLUTION:

%function Q = intquad(n,m)
%    Q = zeros(n,m);
%    Q = [Q Q+1; Q+2 Q+3];
%end