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

function summa = huge_add(a,b)
    if ~ischar(a) || ~ischar(b) || sum(isstrprop(a,'digit')) ~= length(a) || ...
            sum(isstrprop(b,'digit')) ~= length(b)
        summa = -1;
        return;
    end
    lng = max([length(a) length(b)]);
    a = [a(end:-1:1) '0'+zeros(1,lng-length(a))];   % flip and pad with zeros if necessary
    b = [b(end:-1:1) '0'+zeros(1,lng-length(b))];   % flip and pad with zeros if necessary
    carry = 0;
    for ii = 1:lng
        c = carry + str2num(a(ii)) + str2num(b(ii)) % add the digits plus the caryy
        carry = c > 9;                              % is there carry? (0 or 1)
        summa(ii) = num2str(mod(c,10));             % put the character in the result
    end
    if carry
        summa(end+1) = '1';                         % need a leading 1 if carry
    end
    summa = summa(end:-1:1);                        % flip it back
end

%% My proposal:

function [X] = my_huge_add(A,B)

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


