% input: A, matrix
% output: s, sum of elements that are on the perimeter of A (i.e. in the
%           first and last rows and columns)

function s = peri_sum(A)
s = sum(A(1,:)) + sum(A(end,:)) + sum(A(2:end-1,1)) + sum(A(2:end-1,end));
end

%% Solution:

function s = peri_sum(A)
    B = A(2:end-1,2:end-1);
    s = sum(A(:)) - sum(B(:));
end