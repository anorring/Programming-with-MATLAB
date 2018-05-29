% Write a function called circle that takes a scalar input r. It needs to 
%   return an output called area that is the area of a circle with radius 
%   r and a second output, cf that is the circumference of the same circle.
%   You are allowed to use the built-in function pi. In fact, you need to 
%   use it to get the value of π as accurately as possible.
%
% input: r, radius of a circle
% output 1: area, area of a circle with radius r, pi*r^2
% output 2: cf, circumference of a circle with radius r, 2*pi*r

function [area, cf] = circle(r) % function with one input and two outputs
    area = r^2 * pi;            % the formula for area, product of pi and squared radius 
    cf = 2 * r * pi;            % the formula for circumference
end