% Lesson 4: Programmer's Toolbox

% INTRODUCTION

sqrt(9)
sqrt([1 4;9 16;25 36])

% This illustrates polymorphism, i.e. the ability of a function to take
% inputs that vary from one call to another. Not all functions are such:

v = [1 2 3 -4 7]
sum(v)

A = [1 2;3 4]
sum(A)

% maximum function:

a = max([1 2 -4 8])
[a b] = max([1 2 -4 8])

% size behaves differently depending on the number of outputs:

s = size([1 2;9 8;0 -2])
s(1)

[row col] = size([1 2;9 8;0 -2])

% MATRIX BUILDING

zeros(5,6)
ones(4,2)
5*ones(4,2)
zeros(4) % square matrix
ones(1,5) % row vector
zeros(5,1) % column vector
diag([7 3 9 1]) % diagonal matrix

% Random numbers from uniform distribution

rand % random numbers between 0 and 1
rand(3,4)
rand(5)
1 + rand(5,4)*10
fix(1 + rand(5,4)*10) % integers

randi(10,5,4) % random integers
randi(20,4) %randi polymorphic: this square
randi([5 10],2,3) % brackets give the min and max of wanted random numbers
randi([40 60],1,15)

% Random numbers from a normal distribution

randn(5) % objects range from minus infinity to infinity, clustered around 0 with sd = 5
r = randn(1,1000000);
hist(r,100) % histogram: variable r and the numbers of bins

% Random is in fact not random: these are pseudo random sequenzes. Matlab 
% in fact always gives the same sequence of random numbers (like Groundhog
% day!)

% A function to reinitialize the pseudo random number sequenze:

rng(0);
rand(1,3)

rng(3);
[rand, randn, randi(10)]

% An actual random sequence:

rng('suffle'); [rand, randn, randi(10)] % exploits the system clock to 
                                        %start the sequence at a random place

% INPUT/OUTPUT

% How function prints a prompt in command window? See one_more.m

function a = one_more
x = input('Gimme a number, buddy: ');
a = x +1;
end

% From the command window:
%one_more
%Gimme a number, buddy: pi/2
%
%ans =
%
%    2.5708

% Printing:

%fprintf('This concludes Lesson 3\n') % \n starts a new line
%fprintf('This concludes Lesson 3')

% The number of % signs and arguments have to be equal:

function check_out(n,price)
total = n*price;
fprintf('%d items at %.2f each\nTotal = $%5.2f\n',n,price,total);
end

% These are known as escape characters, check help for fprintf. The purple
% is called format string. %% prints % and so on:

% fprintf('12.5%% of 1234 equals %.3f\n',0.125*1243)
% fprintf('This is backslash character: \\\n')
% fprintf('How about a single quote ('')?\n')

% fprintf('%d lb butter, %d tbsb cocoa, %d cps flour, and %d cps sugar\n',
% 1,8,4,4)
% Note that matlab recycles arguments in case of too many or recycles:

% fprintf('%4.1f\n',[1 2 3 4 5 6])


% PLOTTING

% The workhorse: plot()

a = (1:10).^2
plot(a)

b = (-10:10).^2
figure(2)
plot(b)

% with x akseli
t = -10:10
c = t.^2
figure
plot(t,c)

% More than one plot in one figure:

x1 = 0:0.1:2*pi; y1 = sin(x1);
x2 = pi/2:0.1:3*pi; y2 = cos(x2);
figure
plot(x1,y1,x2,y2)

% Note that Matlab chooses colours: change

figure
plot(x1,y1,'r',x2,y2,'k:') % dotted line-:

help plot % a lot more style commands

% Test these in figure 1:
figure(1)
plot(t,b,'m--o')

figure(2)
plot(x1,y1,'r')
hold on             % the previous polot will not be replaced
plot(x2,y2,'k:')
hold off
plot(x1,y1,'g*')

% Other format choices:

grid
title('A title')
xlabel('label')
ylabel('label')
legend('sine', 'cosine') %check help legend for positioning

axis([-2 12 -1.5 1.5]) % change the x and y axis

%closing figures:

close(4)
close all

% DEBUGGING

% syntax errors (illegal commands), runtime errors (syntax legal, but when
% run, semantics found wrong) and semantic errors (matlab cannot find
% these)

% example: see rand_int.m

% most of the time you spend programming is spent debugging
