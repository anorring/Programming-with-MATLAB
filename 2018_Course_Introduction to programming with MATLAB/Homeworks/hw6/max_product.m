% input 1: v, vector
% input 2: n, positive integer
% output 1: product, the largest product of n consecutive elements of v
% output 2: ind, the index of the element of v that is the first term of
% the product

%function [product, ind] = max_product(v,n)
%if length(v) < n                            % if the length of v is less than n
%    product = 0;
%    ind = -1;
%elseif 
%else                                        % else perform a loop:
%    product = 0;                            % initial value for product
%    ind = -1;                               % initial value for ind
%    for i = 1:(length(v) - n + 1)           % loop through the possible 
%        tmp = prod(v(i:i+n-1));             % the product of n consecutive elements of v
%        if tmp > product
%            product = tmp
%            ind = i
%        end
%    end
%end

function [product, ind]=max_product(v,n)
    try
        [product, ind] = max(prod(hankel(v(1:end-n+1), v(end-n+1:end)),2))
    catch
        product = 0
        ind = -1
    end
end


