% This function takes a 3-element vector and returns three elements as
% three scalar outputs in non-decreasing order using if-statements.
%input: k, a 3-element vector
%output 1: a, the smallest element in k
%output 2: b, the middle element in k
%output 3: c, the largest element in k

function [a b c] = sort3(k)
if k(1) <= k(2) && k(2) <= k(3);
    a=k(1)
    b=k(2)
    c=k(3)
   elseif k(1) <= k(3) && k(3) <= k(2);
    a=k(1)
    b=k(3)
    c=k(2)
    elseif k(3) <= k(1) && k(1) <= k(2);
    a=k(3)
    b=k(1)
    c=k(2)
    elseif k(2) <= k(1) && k(1) <= k(3);
    a=k(2)
    b=k(1)
    c=k(3)
    elseif k(2) <= k(3) && k(3) <= k(1);
    a=k(2)
    b=k(3)
    c=k(1)
    else
    a=k(3)
    b=k(2)
    c=k(1)
end