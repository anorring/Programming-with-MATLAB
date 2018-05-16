%% Examples of skipping remainder of iterations
% Note: this is a script. Script, unlike a function, does not have
% arguments. Instead you need to specify them in the workspace.

% this code sets the items in a vector called readings equal to zero

%rng(0); readings = randi(105,1,20)

%% Example 1
% Skipping is accomplished in the while condition.
ii = 1;
while ii < length(readings) && readings(ii) <= 100 % a bit cumbersome
    readings(ii) = 0;
    ii = ii + 1;
end

% check readings to see how the code worked

%% Example 2
% Skipping is accomplished with a break statement.
for ii = 1:length(readings)
    if readings(ii) > 100   % the break statement works like the second element of the control statement of while loop above
        break;              % end the loop immediately, skips all the statements that come after
    else
        readings(ii) = 0;
    end
end

%% Example 3
% Shows that for-loop index retains its las value after the loop is exited.
% It's similar to ex 2, but omits the setting of values to 0 and prints the
% index of the first reading above 100.
for ii = 1:length(readings)
    if readings(ii) > 100
        break;
    else                    % I added this else-statement
        readings(ii) = 0;   % I added this    
    end
end
fprintf('First reading above 100 is at index %d.\n', ii);

% this code has a bug! Fix it!
