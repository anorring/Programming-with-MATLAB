function sumintup(N)
total = 0;
for n = 1:N                         %beginning of the for-loop, the control statement
    total = total + n;              %the body of the for-loop, what is iterated repeatedly
end

fprintf('total equals %d\n',total);