% Write a function called sindeg that takes a matrix input called deg. The
%   function returns a matrix of the same size as deg with each of its 
%   elements containing the sine of the corresponding element of deg. Note 
%   that the elements of deg are given in degrees and not radians. As a 
%   second output, the function returns a scalar that contains the average 
%   value of the first output. You are not allowed to use the sind and 
%   cosd built-in functions, but the use of any other function is 
%   acceptable.
% 
% input: deg, a matrix
% output1: sin_deg, a matrix of the same size as deg cointaining the the
%           sines of the elements in deg
% output2: ave_sin_deg, a scalar equal to the average value of sin_deg

function [sin_deg, ave_sin_deg] = sindeg(deg)
    sin_deg = sin(pi * deg / 180)               % take sin of all elements in matrix deg
    ave_sin_deg = mean(sin_deg(:))              % take the mean of all elements in matrix sin_deg
end

%SOLUTION:

%function [s avg] = sindeg(d)
%    s = sin(d*pi/180);
%    avg = mean(s(:));
%end
