% input: n, a positive integer
% output: s, a sum of all the unique multiples of 3 or 5 up to n

function s = sum3and5muls(n)
    s = sum(3:3:n) + sum(5:5:n) - sum(15:15:n);
end