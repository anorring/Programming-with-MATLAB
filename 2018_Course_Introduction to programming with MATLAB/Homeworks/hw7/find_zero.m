function x = find_zero (f, x1,x2)    
    x = (x1+x2)/2.0;              % find interval midpoint
    while abs(f(x)) > 1e-10       % are we there yet? 
        if f(x1)*f(x)>0           % if f(left) and f(mid) have the same sign
            x1 = x;               % move left to mid
        else 
            x2 = x;               % move right to mid
        end
        x = (x1+x2)/2.0;          % recalculate midpoint
    end
end