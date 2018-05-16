function y = approx_sqrt(x)
y = x;
while abs(y^2 - x) > 0.001*x % carry the loop on until the condition is met, NB: no loop index!
    y = (x/y + y)/2; %;, to see how many iterations it took to perform the loop                   
end

% there is no need for a loop index in a while-loop!
% you can make the approximation more accurate by making the condition on
% loop more stringent

% if you use a negative input, the while loop will go on forever:
% infinitive loop
% control + c will terminate the loop
% the loop should take complex numbers into consideration to work 
% the build-in function sqrt() can produce complex numbers

% Note: you can build complex numbers by adding i = sqrt(-1) in say 15 + 3i


