% Write function called huge_add that adds together two positive integers 
%   of any length specified as char vectors using decimal notation. The 
%   single output argument is the result and it is a char vector as well. 
%   The inputs and output must contain digits only; no commas, spaces or 
%   any other characters are allowed. If any of these assumptions are 
%   violated by the input, the function returns the number -1. 
%   Hint: you cannot use any of the built-in numerical data types of 
%   MATLAB to do the calculation since the function needs to work for 
%   numbers that are larger than what can be represented as a number in 
%   MATLAB.
%
% input 1: A, a string of digits
% input 2: B, a string of digits
% output: X, the sum of A and B, also a string of digits

function [X] = huge_add(A,B)

% Check for valid inputs, i.e. only digits:
if ischar(A) == 0 || ischar(B) == 0
    X = -1
    return
end

%check if both input strings contain only digits
digitStrA = A(isstrprop(A,'digit'));
digitStrB = B(isstrprop(B,'digit'));
if length(digitStrA) < length(A) || length(digitStrB) <length(B)
    X=-1
    return
end

%pad leading end of shorter string with zeros.
pad=[];
for i=1:abs(length(digitStrA)-length(digitStrB))
    pad=[pad,'0'];
end
if length(digitStrA)>length(digitStrB)
    digitStrB=[pad,digitStrB];
elseif length(digitStrB)>length(digitStrA)
    digitStrA=[pad,digitStrA];
end

%add the two strings by way of traditional arithmetic. Do it this way to cope with huge input values.
carry=0;
for i=length(digitStrA):-1:1
    add=str2num(digitStrA(i))+str2num(digitStrB(i))+carry;
    X(i)=num2str(mod(add,10));
    carry=floor(add/10);
end
    
end