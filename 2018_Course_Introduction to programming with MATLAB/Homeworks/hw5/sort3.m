% Write a function called sort3 that takes a 3-element vector as its sole 
%   arguments. It uses if-statements, possibly nested, to return the three 
%   elements of the vector as three scalar output arguments in 
%   non-decreasing order, i.e., the first output argument equals the 
%   smallest element of the input vector and the last output argument 
%   equals the largest element. NOTE: Your function may not use any 
%   built-in functions, e.g., sort, min, max, median, etc.
%
% This function takes a 3-element vector and returns three elements as
% three scalar outputs in non-decreasing order using if-statements.
%
% input: v, a 3-element vector
% output1: a, the smallest element in k
% output2: b, the middle element in k
% output3: c, the largest element in k

function [a b c] = sort3(v)
    if v(2) < v(1)
        v = [v(2) v(1) v(3)];
    end
    if v(3) < v(2)
        v = [v(1) v(3) v(2)];   % the last element is the max now
    end
    if v(2) < v(1)
        v = [v(2) v(1) v(3)];   % the first two are in order as well
    end
    a = v(1);
    b = v(2);
    c = v(3);
end