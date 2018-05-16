%input1: c0, scalar
%input2: c, vector
%input3: x, scalar
%output: p, scalar

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