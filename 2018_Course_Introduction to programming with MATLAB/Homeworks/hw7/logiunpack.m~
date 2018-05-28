% An n-by-n square logical matrix can be represented by a cell vector of n 
%   elements where the kth element corresponds to the kth row of the 
%   matrix. Each element of the cell vector is a row vector of positive 
%   integers in increasing order representing the column indexes of the 
%   logical true values in the given row of the matrix. All other elements
%   in the given row of the logical matrix are false. 
% 
% Write a function called logiunpack that takes such a cell vector as its 
%   only input and returns the corresponding square logical matrix. 
%
% For example, such a cell vector representation of a 100-by-100 logical 
%   matrix with the only true elements at indexes (10,20) and (10,75) would 
%   have only one non-empty element of the cell vector at index 10. That 
%   element is the vector [20 75].
%
% input: C, a cell vector
% output: X, the corresponding square logical matrix

function X = logiunpack(C)
X = false(numel(C));
for k = 1:numel(C)
    X(k,C{k}) = true;
end
end