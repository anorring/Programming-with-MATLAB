% SELECTION

% See guess_my_number.m for example of if-, if-else-, if-elseif and
% if-elseif-else-statement. Note that you can have as many elseif's as you
% like, see below:

% IF-STATEMENTS

% See day_of_week.m for example of a function wit a separate 
%   if-elseif-else-statement and a if-else-statement:

% if conditional
%   block1
% elseif conditional
%   block2
% ...
% elseif conditional
%   blockN
% else

% RELATIONAL AND LOGICAL OPERATORS

% ==, ~=, <, >, <=, >=

% Try:

10 == 20  % returns 0 i.e. FALSE
3 == (35-32) % returns 1 i.e. TRUE

% The result of a relational operator is 0 or 1 (which is a number)

x = (16*64 > 1000) + 9 % returns 10
x = 16*64 > 1000 + 9 % returns 1, now the relational operator has highest precedence

% See if_test.m for an example

% Relational operators work on arrays also:

[4 -1 7 5 3].*[5 -9 6 5 -3]

[4 -1 7 5 3] > [5 -9 6 5 -3] % returns a 1x5 logical array

[4 -1 7 5 3] <= 4 % returns a 1x5 logical array

sum([14 9 3 14 8 3] == 14) % returns the number of elements that are equal to 14

% Logical operators: 
% logical values: non-zero - TRUE and zero - FALSE
% logical operatos: && - and, || - or,  ~ - not

% see order3.m and not_smallest.n for examples

a = 1
b = 2
c = 0
d = ~(a && b) || (b && c)

e = ~(a && b) || (b || c)

% Note that you can mix arithmetics and logical operators:

b*(0<b && b < 10)

total = 0
total = total + b*(0<b && b < 10)


% Logical operators applied to vectors and arrays:

[1 pi 0 -2]
~[1 pi 0 -2]

%[1 -3 0 9 0] && [pi 0 0 2 3] % this will not work, you need to use logical operators meant for arrays
[1 -3 0 9 0] & [pi 0 0 2 3] % these work for scalar-array combinations also
[1 -3 0 9 0] | [pi 0 0 2 3] % but the arrays need to be of the same dimensions (?)

1.4 < sqrt(2) & [pi > 3 -1 > 1]
(1.4 < sqrt(2)) & [pi > 3 -1 > 1] % the same result as above
1.4 < (sqrt(2) & [pi > 3 -1 > 1]) % different result

% That is, recall precedence: help precedence


% NESTED IF-STATEMENTS

% if-statements can contain other if-statements, this is called nesting


% VARIABLE NUMBER OF FUNCTIONAL ARGUMENTS

% polymorphic functions: how do we build a polymorphic function? We need a
% if-statement and nargin/nargout-functions

% see multable.m

% ROBUSTNESS

% A function declaration specifies: name of the function, number of input
% arguments and output arguments
% Function code and documentation specifies: what the function does, the
% typoe of arguments and what they represent
% Robustness: a function is robust if it handles erroneous input and output
% arguments and provides a meaningfull error message

% this is done with an if-statement

% see multable.m for example

% Comments: explain important and complicated parts of the program
% always include comments at the beginning of the m-file

% NOTE: if you write comments after function but before the first command,
% the matlab help function will give the comments as an output for call
% help [functionname]
% in fact it appears to return the first lines of comments not separated 
% by new lines in that m-file

% PERSISTENT VARIABLES

% Variables can be local, global or persistent

% persisten variable is a local variable, but its value persists from one
% call of the function to the next

% see accumulate.m

% see snarky_multable.m on how to count errors and do a different error
% message after three errors


