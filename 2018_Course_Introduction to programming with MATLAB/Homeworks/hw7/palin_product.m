% A palindromic number reads the same both ways. The largest palindrome 
% made from the product of two 2-digit numbers is 9009 = 91 × 99. Write a 
% function that is called this way: >> n = palin_product(dig,lim);
% The function returns the largest palindrome smaller than lim that is the 
% product of two dig digit numbers. If no such number exists, the function 
% returns 0. (Inspired by Project Euler.)
%
% input1: dig, the number of digits
% input2: lim, the product of the largest two numbers with dig digits 
% output: n, the largest product of two numbers with dig digits that is a 
%           palindrome and smaller than lim
%         n = 0, if such n does not exist  

function [n] = palin_product(dig,lim)
   upperlimit = (10^dig) - 1;                   % define the largest and smallest numbers that have dig digits
   lowerlimit = 10^(dig - 1);
   withinlimits = upperlimit: -1: lowerlimit;   % the sequence of numbers between lower and upper limits

   n = 0;                                       % Initial values for the for-loops
   products = [];
   palindromeproducts = [];
   
for a = 1:numel(withinlimits)                   % the for-loop
%to get all possible products: we will have to multiply each individual number in the vector by every number in the vector (the whole vector)
  n = n+1;                                      
    ii = withinlimits(n) * withinlimits;        % multiply each element that is within the limits by each element within the limits
    products = [products ii];                   % save the products in a row vector
end

for j = 1:length(products)                      % the second for-loop loops through the lenght of the products vector
    forward = num2str(products(j));             % convert each element to string
    backward = forward(end:-1:1);               % convert each string into backward order
    if forward == backward;                     % check if the element is a palindrome, i.e. the same forwards and backwards
        palindromeproducts = [palindromeproducts products(j)];      % save the palindromes in a new vector
    end
end

smaller_than_lim = palindromeproducts < lim;    % find the palindromes that are smaller than lim, a logical vector
smaller_than_lim_palindromeproducts = palindromeproducts(smaller_than_lim); % collect the smaller than lim palindromes into a vector

n = max(smaller_than_lim_palindromeproducts)    % choose the largest of these

if isempty(n)                                   % when there is no palindromes smaller than lim
    n = 0                   
    
end