% input: nn, a positive integer
% output: orms, square root of the mean of the squares of the first nn
%           positive odd integers

function orms = odd_rms(nn)
a = [1:2:(2*nn)];
b = mean(a.^2);
orms = sqrt(b);
end

% SOLUTION:

%function or = odd_rms(nn)
%    or = sqrt(mean((1:2:2*nn).^2));
%end