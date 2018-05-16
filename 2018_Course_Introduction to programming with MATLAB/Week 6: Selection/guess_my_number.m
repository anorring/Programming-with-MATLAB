%function guess_my_number(x)
%if x == 2
%    fprintf('Congrats! You guessed my number!\n');
%end

%function guess_my_number(x)
%if x == 2
%    fprintf('Congrats! You guessed my number!\n');
%else 
%    fprintf('Not right, but a good guess.\n');
%end

%function guess_my_number(x)
%if x == 42
%    fprintf('Congrats! You guessed my number!\n');
%elseif x < 42 
%    fprintf('Too small. Try again.\n');
%end

function guess_my_number(x)
if x == 42
    fprintf('Congrats! You guessed my number!\n');
elseif x < 42 
    fprintf('Too small. Try again.\n');
else 
    fprintf('Too big. Try again.\n');
end

