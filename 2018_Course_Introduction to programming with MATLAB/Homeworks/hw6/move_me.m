% This function moves every element of v that is equal to a to the end of 
% the vector. If a is not included, zeros are moved.

function w = move_me(v,a)
if nargin == 2;                     % checks wheter there is the second input a :   
    equals = v == a;                % a logical vector of values of v equaling a
    move = v(equals);               % the elements to be moved     
    notequal = v ~= a;              % a logical vector of values not equal to a
    dontmove = v(notequal);         % the elements not to be moved
    w = [v(notequal) v(equals)];    % the new vector with the elements not to be moved first
else                                % when there is no input a:
   equals = v == 0;                 % a logical vector of values of v equaling 0
    move = v(equals);               % the elements to be moved     
    notequal = v ~= 0;              % a logical vector of values not equal to 0
    dontmove = v(notequal);         % the elements not to be moved
    w = [v(notequal) v(equals)];    % the new vector with the elements not to be moved first
end