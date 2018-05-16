% a polymorphic function
%function [table summa] = multable(n,m)
%if nargin < 2
%    m = n;
%end
%
%table = (1:n)'*(1:m);
%
%if nargout == 2 
%    summa = sum(table(:));
%end

% note: this doesn't work with negative inputs


% Robustness and comments:


function [table summa] = multable(n,m)

% you should write the comments here

if nargin < 1
    error('must have at least one input argument');
end
if nargin < 2
    m = n;
elseif ~isscalar(m) || m < 1 || m ~= fix(m)  % ~ for "not scalar", if one of these is true, then we get error
    error('m needs to be a positive integer');
end
if ~isscalar(n) || n < 1 || n ~= fix(n)
    error('n needs to be a positive integer');
end

table = (1:n)'*(1:m);

if nargout == 2 
    summa = sum(table(:));
end