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

%%
% strings are vectors:
MOOC_title = 'MATLAB for Smarties'
length(MOOC_title)
MOOC_title(1)
MOOC_title(1:6)
MOOC_title(end-8:end)

a = MOOC_title(1:6)
b = a(end:-1:1)         % print MATLAB backwards

% a and b of the same dimensions
a == b   % are the elements the same, but not whether a is the same as b

%% 
% How to convert chars into doubles?

message = 'Let''s skip class today!'
code = double(message)
secret = char(code+3)       % encryption
char(secret - 3)            % decode

%% 
% Can we have two dimensional array of chars?

friends = ['Bill'; 'Mary'; 'John']
line1 = '12345678'
line2 = 'abcdefgh'
txt = [line1;line2]
txt'                                    % transpose, i.e. array operations can be used

% Note: vertcat --> different dimensions
% Note: strings should usually not be stored in arrays, because they are
% often of different length

%%
% String functions

char
findstr
ischar
isletter
isspace
isstrprop
num2str
length
lower
sprintf
strcmp
strcmpi
strmatch
strncmp
strncmpi
str2num
upper

%%
% find strings
findstr(MOOC_title,'LAB')
findstr(MOOC_title,'lab')
findstr(MOOC_title,'r')

% compare strings
lang = 'MATLAB'
strcmp(MOOC_title, lang)
strcmp(MOOC_title(1:6), lang)

strcmpi(MOOC_title(1:6), 'Matlab')   % ignoring case

lower('MATLAB')

% the difference between numbers and chars
pi_number = 3.1416
pi_digits = '3.1416'
size(pi_number)
size(pi_digits)
class(pi_number)
class(pi_digits)

pi_number + 1
pi_digits + 1
double(pi_digits) + 1

str2num(pi_digits) + 1
num2str(pi_number) + 1

%%
% How to use sprintf?

r = 12
fprintf('The area of a circle with radius %2f is %2f!\n', r, pi*r^2);

sprintf('The area of a circle with radius %2f is %2f!\n', r, pi*r^2); % puts the results into an output argument
str = sprintf('The area of a circle with radius %2f is %2f!\n', r, pi*r^2);


%% STRUCTS

% an array must be homogenous, a struct can be heterogenous, i.e. it can
% contain multiple types

% Differences from an array:
% fields, not elements
% field names, not indices
% fields in the same struct can have different types

% a field of a struct can be another struct

r.ssn = 12345678   % note the dot
class(r)
class(ssn)

r.name = 'Homer Simpson'    % add a field into the struct

r. address.street = '742 Evergreen Terrace' % the new field is a struct

%%
% struct functions

getfield
isfield
setfield
isstruct
orderfields
rmfields
struct

%%
% in matlab: a struct that represents a bank account

account.number = 12345678
account.balance = 5000
account.owner.name = 'Joe Smith'
account.owner.email = 'joe@matlabmooc.com'

class(account)
class(account.balance)
class(account.number)

account.owner

account(2).number = 7654321
account(2).owner
account(2).balance
account(2).balance = 1000
account(2).owner.name = 'Jane Farmer'

account(1)
account(2)

account(1).owner.name
account(2).owner.name

length(account(1).owner.name)
length(account(2).owner.name)

account(1).owner.age = 23
account(2).owner.age        % the field doesnt exist

account(1:2).owner          % show data from both

% find a field
isfield(account(2).owner,'age')
isfield(account(1).owner,'age')

% remove a field (note: doesn't change, simply output changes)
rmfield(account(1).owner, 'age')
% to really change:
account(1).owner = rmfield(account(1).owner, 'age')

% struct: set values to fields by list processing (field, value, field,
% value so on)

course = struct('Area','CS','number',103,'title','Introductory Programming for Engineers and Scientists')

%% CELLS

% Pointer
% each variable has an address that is stored in a variable called a
% pointer, which is called a cell in MATLAB

% a powerful way to store heterogenous data
% cell arrays
% used more freq. than structs

% Syntax: to access the data a cell points to, use {}
