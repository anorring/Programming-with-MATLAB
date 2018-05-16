function f = fibo(n)
if (~isscalar(n) || n <1 || n ~= fix(n))      %to check that the input is a positive integer
    error('n must be a positive integer!');
end

f(1) = 1;
f(2) = 1;
for ii = 3:n
    f(ii) = f(ii-2) + f(ii-1);
end

%to compute the fibonacci series one need an explicit loop