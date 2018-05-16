for ii = 1:size(A,1)                % outer loop
    for jj = 1:size(A,2)            % inner loop    
        if A(ii,jj) <= 90           
            A(ii,jj) = 0
        else
            break;                  % break applies to the inner loop but not the outer loop
        end
    end
end                                 % end of the outer loop
