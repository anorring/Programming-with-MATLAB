% 2520 is the smallest number that can be divided by each of the numbers 
%   from 1 to 10 without any remainder. Write a function called 
%   smallest_multiple that returns a uint64, the smallest positive number 
%   that is evenly divisible by all of the numbers from 1 to n where n is
%   a positive integer scalar and is the only input argument of the 
%   function. If the result would be greater than what can be represented 
%   as a uint64, the function returns 0.
%
% input: n, positive integer scalar
% output: output, the smallers positive number divisible by 1:n

function [output] = smallest_multiple(n)

% Check for valid input:
if ~isscalar(n) || n < 1 || n ~= floor(n)
    fprintf('Input must be a positive integer scalar');
    return
end

maxval = intmax('uint64');

plist = primes(n);

for i = 1:length(plist)
    powers(i) = 1;
    while plist(i)^(powers(i)+1) <= n
        powers(i) = powers(i)+1;
    end
end
   
pplist = uint64(plist) .^uint64(powers);   

prod = uint64(1)
for i = 1:length(pplist)
    prod = prod*pplist(i)
end

output = prod

if output >= maxval
    output = uint64(0);
    return
end
end
