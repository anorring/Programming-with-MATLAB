%This function calculates a multiplication table

function prealloc
N = 5000;
A = zeros(N,N);     % this line eliminates the need for memory allocation
for ii = 1:N
    for jj = 1:N
        A(ii,jj) = ii*jj;
    end
end
