% the function finds the elements of X that are smaller than the product of
% their two indexes, i.e. ii < m*n, and gives the indixes in column-major
% order in a 2-column matrix: first column contains the the row indexes,
% the second contains the column indexes. 
%
% input: X, an array (matrix or a vector)
% output: indexes, 2-column matrix

%function indexes = small_elements(X)
%[r, c] = size(X);                       % find the dimensions of X
%ind = 0;                                % set the beginning value for loop at zero
%indexes = [];                           % define indexes as an empty array in case if never true
%for jj = 1:c                            % loop across columns (for column-major ordering, outside loop has to be for columns)
%    for ii = 1:r                        % loop across rows
%        if X(ii,jj) < ii*jj             % body of for-loop: an if-statement checking whether an element of X is smaller than the product of its row and column index
%            ind = ind + 1               % gives the number of rows in the final array, a cumulative number for the times the if-statement true
%            indexes(ind,:) = [ii jj];   % defines the output array as having in rows and columns of ii and jj            
%        end
%   end  
%end

% The two given solutions:

function I = small_elements(X)
%   The matrix multiplication of a column vector of the row numbers and 
%   a row vector of the column numbers gives the indices of the matrix. 
    [r,c] = size(X);
    [x,y] = find(X < ((1:r)' * (1:c))); % 
    I = [x(:), y(:)];
end

