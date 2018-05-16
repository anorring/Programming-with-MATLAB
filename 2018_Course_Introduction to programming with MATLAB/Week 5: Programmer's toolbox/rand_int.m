%function x = rand_int(n,m)
%x = randi(n,m)              %breakpoint, debugger stops the execution
%fprintf('The last element on the last row is %d.\n', x(n,m));

% Note the K before prompt in command window: Now you can use the key board
% even when function running. You can look at variables and even change the
% values.

% help on randi: we used the inputs incorrectly, i.e. didn't know what the
% function did.

% Attempt at fixing:

function x = rand_int(n,m)
x = randi(10,n,m)              %breakpoint, debugger stops the execution
fprintf('The last element on the last row is %d.\n', x(n,m));