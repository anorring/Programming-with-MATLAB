% input: v, a row vector
% output: w, a row vector of the same lenght as v and all the elements of v
% put in the exact opposite order

function w = flip_it(v)
w = v(end:-1:1)
end

% Solution:

function v = flip_it(v)
    v = v(end:-1:1);
end