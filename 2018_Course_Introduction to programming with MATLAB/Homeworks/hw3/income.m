% Write a function called income that takes two row vectors of the same 
%   length as input arguments. The first vector, rate contains the number 
%   of various products a company manufactures per hour simultaneously. 
%   The second vector, price includes the corresponding per item price 
%   they sell the given product for. The function must return the overall
%   income the company generates in a week assuming a 6-day work week and 
%   two 8-hour long shifts per day.
%
% input1: rate, a row vector containing the number of various products the
%           company manufactures per hour
% input2: price, a row vector containing the price of the products
% output: income, overall income in a week assuming 6 days of two 8-hour
%           shifts

function inc = income(rate, price)
inc = 2*8*6*sum(rate .* price);     % the element-wise product of the two vectors is summed
end

% An alternative solution with price transposed, no need to sum:

%function s = income(rate,price)
%    s = 6 * 2 * 8 * rate * price';
%end
