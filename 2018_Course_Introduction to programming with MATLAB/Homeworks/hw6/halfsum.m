% The function computes the sum of the elements of A that are in the lower
% right triangular part of A.
% input: A, an at most two-dimensional array
% output: hsum, the sum of elements in the lower right triangular of A

%function hsum = halfsum(A)
%    flip = A(end:-1:1, 1:end);  % flip the array upside down row-wise (columns stay put)
%    triang = triu(flip);        % use triu to extract the upper triangluar part (tril not applicable here), elements not in the triangular will be zeros
%    hsum = sum(triang(:));      % calculate the sum of elements in triang
%end

% The two given solutions:

function h = halfsum(A)
    h = sum(sum(triu(flipud(A))))   % flipud Flip array in up/down direction
end

%function s = halfsum(A)
%    [r c] = size(A);
%    for ii = 1:r
%        for jj = 1:c
%            if ii < r-jj+1
%                A(ii,jj) = 0;
%            end
%        end
%    end
%    s = sum(A(:));
%end