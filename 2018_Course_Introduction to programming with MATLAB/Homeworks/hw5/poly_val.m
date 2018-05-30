% Write a function called poly_val that is called like this 
%   p = poly_val(c0,c,x), where c0 and x are scalars, c is a vector, and 
%   p is a scalar. If c is an empty matrix, thenp = c0. If c is a scalar, 
%   thenp = c0 + c*x . Otherwise, p equals the polynomial
%   c0+c(1)x^1 + c(2)x^2 + ... + c(N)x^N,
%   where N is the length of the vector c. Hint: you may want to use the 
%   .^ operator. Here are three example runs:
%   >> format long
%   >> p = poly_val(-17,[],5000)
%   p =-17
%   >> p = poly_val(3.2,[3,-4,10],2.2)
%   p =96.920000000000030
%   >> p = poly_val(1,[1,1,1,1],10)
%   p =11111
%
% input1: c0, scalar
% input2: c, vector
% input3: x, scalar
% output: p, scalar

function p = poly_val(c0,c,x)
if isempty(c) == true 
    p = c0;
elseif isscalar(c) == true
    p = c0 + c*x;
elseif iscolumn(c) == true
    p = c0 + sum(c' .* (x .^ (1:(length(c)))) );
else 
    p = c0 + sum(c .* (x .^ (1:(length(c)))) ); 
end

% The given solution:

%function p = poly_val(c0,c,x)
%    c = c(:);           % make sure c and x are column vectors
%    x = x(:);
%    if isempty(c)
%        p = c0;
%    else
%        p = c0 + sum(c' .* x .^ (1:length(c)));
%    end
%end