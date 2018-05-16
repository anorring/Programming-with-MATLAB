function total = accumulate(n)

% the function accumulates the inputs given
% the blue specifies a persistent variable
% this function would not work without a persistent variable
% note that you can reset summa by giving clear accumulate

persistent summa;
if isempty(summa)
    summa = n;
else
    summa = summa + n;
end
total = summa;

