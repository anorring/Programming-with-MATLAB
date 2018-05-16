% This function computes the bus fare in a given city based on the distance
% travelled and the age of the traveller. First mile is $2, miles 2 to 10
% is 25 cents and miles from 11 onwards are 10 cents. Children under 18 and
% seniors at least 60 get 20 % of.
% Input 1: d, distance travelled in miles
% Input 2: a, age of the traveller
% Output: f, fare in dollars

function f = fare(d,a)
if d <= 1
    b = 2;
elseif d > 1 && d <= 10
    b = 2 + 0.25*(round(d)-1);
else 
    b = 2 + 0.25*9 + 0.1*(round(d)-10);
end
if a <= 18 || a >= 60
    f = 0.8*b;
else 
    f = b;
end