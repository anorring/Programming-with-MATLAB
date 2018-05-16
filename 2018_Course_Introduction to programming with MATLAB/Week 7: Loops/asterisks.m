N = 7;
for mm = 1:N                    % outer loop
    for nn = 1:mm               % inner loop: use the loop index from outer loop inside the inner loop
        fprintf('*');
    end
    fprintf('\n');
end