%function randcheck
%N = 5;
%list = rand(1,N);       % assigns a row vector of random numbers
%for x = list
%   if x > 0.5
%        fprintf('Random number %f is large.\n', x)
%    else 
%        fprintf('Random number %f is small.\n', x)
%    end
%end

function randcheck
N = 5;
for x = rand(1,5)       % note that you can call any function in the control statement
    if x < 0.5
        fprintf('Random number %f is large. \n',x)
    else
        fprintf('Random number %f is small. \n',x)
    end
end

%note: rng(0) sets the random numbers