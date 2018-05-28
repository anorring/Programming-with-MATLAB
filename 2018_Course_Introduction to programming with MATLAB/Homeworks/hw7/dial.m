% Each number on telephone keypads, except 0 and 1, corresponds to a set of
%   uppercase letters as shown in this list:
% 2ABC, 3DEF, 4GHI, 5JKL, 6MNO, 7PQRS, 8TUV, 9WXYZ
% Hence, a phone-number specification can include uppercase letters and 
%   digits. Write a function called dial that takes as its input argument 
%   a char vector of length 16 or less that includes only these characters 
%   and returns as its output argument the telephone number as a uint64. 
%   Here is the input and output for one example of a call of the function:
%   Input: '1FUNDOG4YOU' Output: 13863644968
% You can assume that a phone number never starts with 0. If the input 
%   contains any illegal characters, the function returns 0. You are not 
%   allowed to use the built-in function strrep.
%
% input: inp, a char vector of length 16 or less
% output: out, a telephone number

function out = dial(inp)
dig = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
vec = '012345678922233344455566677778889999';

if sum(~ismember(inp,dig))>0
          out = uint64(0);
          return;
else
[~,idb] = ismember(inp,dig);
out = sscanf(vec(idb),'%lu')

end

