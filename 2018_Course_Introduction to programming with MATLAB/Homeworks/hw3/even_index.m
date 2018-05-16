% input: M, matrix
% output: N, matrix with the elements of M that are in even rows and columns

% My function chooses the row/column with index two and then all the rows
% and columns that have an index i+2 up until the last column.

function N = even_index(M)
N = M(2:2:end,2:2:end); 
end

% Solution:

function E = even_index(A)
    E = A(2:2:end,2:2:end);
end