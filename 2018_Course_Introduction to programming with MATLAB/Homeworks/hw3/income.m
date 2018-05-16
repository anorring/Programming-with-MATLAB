% input 1: rate, a row vector containing the number of various products the
%           company manufactures per hour
% input 2: price, a row vector containing the price of the products
% output: income, overall income in a week assuming 6 days of two 8-hour
%           shifts

function inc = income(rate, price)
inc = 2*8*6*sum(rate .* price);
end

% Solution:

function s = income(rate,price)
    s = 6 * 2 * 8 * rate * price';
end

% or

function s = income(rate,price)
    s = 6 * 2 * 8 * sum(rate .* price);
end