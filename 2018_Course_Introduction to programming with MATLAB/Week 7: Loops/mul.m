%NESTING LOOPS

% implicit loop, see mul.m for explicit loop
%A = randi(10,3,4)
%P = A.*A

%script
[row col] = size(A);
for r = 1:row                   % scans through the row indices of A
    fprintf('Working on row %d... \n',r); % optional
    for c = 1:col               % scans through the column indices of A    
        P(r,c) = A(r,c) * A(r,c);   % this is executed row * col times = the number of elements of A
        fprintf('(%d %d)\n',r,c);   % optional
    end
end
