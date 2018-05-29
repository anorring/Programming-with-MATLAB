% Write a function called intquad that takes as its input arguments two 
%   scalar positive integers named n and m in that order. The function 
%   returns Q, a 2n-by-2m matrix. Q consists of four n-by-m submatrices. 
%   The elements of the submatrix in the top left corner are all 0s, the 
%   elements of the submatrix at the top right are 1s, the elements in the
%   bottom left are 2s, and the elements in the bottom right are 3s.
%
% input 1: n, a positive integer scalar
% input 2: m, a positive integer scalar
% output: Q, a 2n-by2m-matrix with four n-by-m submatrices: top-left with
%           all 0s, top-right with all 1s, bottom-left with all 2s,
%           bottom-right with all 3s

function Q = intquad(n,m)
Q = [zeros(n,m) ones(n,m); 2*ones(n,m) 3*ones(n,m)] % Q is built submatrix by submatrix
end

% ANOTHER SOLUTION:

%function Q = intquad(n,m)
%    Q = zeros(n,m);        % the all-zeros submatrix is initialized
%    Q = [Q Q+1; Q+2 Q+3];  % the final matrix is built sub-matrix by sub-matrix by manipulating the initial matrix
%end