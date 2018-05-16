% input: deg, a matrix
% output 1: sin_deg, a matrix of the same size as deg cointaining the the
%           sines of the elements in deg
% output 2: ave_sin_deg, a scalar equal to the average value of sin_deg

function [a, b] = sindeg(deg)
    a = sin(pi.* deg ./ 180)
    b = mean(mean(a))
end

%SOLUTION:

%function [s avg] = sindeg(d)
%    s = sin(d*pi/180);
%    avg = mean(s(:));
%end
