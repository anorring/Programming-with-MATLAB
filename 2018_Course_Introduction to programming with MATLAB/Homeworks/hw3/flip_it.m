% Write a function called flip_it that has one input argument, a row 
%   vector v, and one output argument, a row vector w that is of the same 
%   length as v. The vector w contains all the elements of v, but in the 
%   exact opposite order. For example, is v is equal to [1 2 3] then w must
%   be equal to [3 2 1]. You are not allowed to use the built-in function 
%   flip, fliplr, or flipud.
%
% input: v, a row vector
% output: w, a row vector of the same lenght as v and all the elements of v
% put in the exact opposite order

function w = flip_it(v)
w = v(end:-1:1)        % start v from the end, decrease by one until the first element of v
end