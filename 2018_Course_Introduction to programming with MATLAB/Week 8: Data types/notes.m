%% INTRODUCTION TO DATA TYPES

% Rule: all elements of a given array must of the same data type

%% 
%check the type
x = 23
class(x)
class(0)
class(sqrt(-1))

%% 
% information on your variables
x = 23
y = 1:8
rng(0); z = rand(3,4)
whos

%note: ans included in whos: char - string

%%
% other classes
class('Sup?')
class(3<4)

%%
% Numerical types: double (default, Inf, NaN = not a number), single (Inf, 
% NaN), different integer types (signed, unsigned) 

% Useful functions
% type checks: class, isa(x, 'double')
% range check: intmax, intmin, realmax, realmin (for integers and floating
% points respect.)
% conversion: name of function = name of desired data type

% Operators
% arithmetic
% relational 

x = single(98.76)
n = int8(-16)
m = uint16(1234)
whos

% uint8 can hold 0 to 255
k = uint8(500)
k = uint8(256)
k = uint8(-1) % converts input into the closest possible value of uint8 data type ("clipping")
class(k)

%% 
% when a variable is assigned a value of a given type, the data type
% changes
k = 2
class(k)
k = 'It makes sense.'
class(k)

%%
% Is clipping happening? You can check the ranges of your types using:

intmax('uint8')
intmin('uint8')
intmin('uint32')
intmin('int32')
realmax('double')
realmin('single')

%% STRINGS

% string = text = vector of characters = vector whose element type is char

% Example: the ASCII code

function char_codes
for ii = 33:126
    fprintf('s%', char(ii));
end
fprintf('\n');
end


%% STRUCTS





%% CELLS

