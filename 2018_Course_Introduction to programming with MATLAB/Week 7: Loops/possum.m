function [n total] = possum(limit)
total = 0;
n = 0;                                  %the loop index IS NOT an integral part of a while-loop
while total <= limit
    n = n + 1;
    total = total + n;
end
fprintf('sum: %d count: %d\n', total, n);