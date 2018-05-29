% Write a function called odd_rms that returns orms, which is the square 
%   root of the mean of the squares of the first nn positive odd integers, 
%   where nn is a positive integer and is the only input argument. For 
%   example, if nn is 3, your function needs to compute and return the 
%   square root of the average of the numbers 1, 9, and 25. You may use 
%   built-in functions including, for example, sum and sqrt, except for 
%   the built-in function rms, which is not allowed.
%
% input: nn, a positive integer
% output: orms, square root of the mean of the squares of the first nn
%           positive odd integers

function orms = odd_rms(nn)
a = [1:2:(2*nn)];           % a vector with the first nn positive odd integers, i.e. starting from one, adding to, until double of n
b = mean(a.^2);             % squares the elements in a and calculates their mean
orms = sqrt(b);             % takes the square root of b
end

% ONE ROW SOLUTION:

%function or = odd_rms(nn)
%    or = sqrt(mean((1:2:2*nn).^2));
%end