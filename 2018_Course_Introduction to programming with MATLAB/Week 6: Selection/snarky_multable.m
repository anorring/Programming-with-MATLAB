function [table summa] = snarky_multable(n,m)

% you should write the comments here

persistent error_count;
if isempty(error_count), error_count = 0; end % no errors

if nargin < 1
    error('must have at least one input argument');
end
if nargin < 2
    m = n;
elseif ~isscalar(m) || m < 1 || m ~= fix(m)  % ~ for "not scalar", if one of these is true, then we get error
    error_count = error_count + 1;
    if error_count < 3, error('m needs to be a positive integer');end
end
if ~isscalar(n) || n < 1 || n ~= fix(n)
    error_count = error_count + 1;
    if error_count < 3, error('n needs to be a positive integer');end
end
if error_count >= 3
    error_count = 0; %reverts to the basic error message
    error('What part of "positive integer" do you not understand?')
end

table = (1:n)'*(1:m);

if nargout == 2 
    summa = sum(table(:));
end