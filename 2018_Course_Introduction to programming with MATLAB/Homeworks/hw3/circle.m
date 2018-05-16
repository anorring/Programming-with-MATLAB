% input: r, radius of a circle
% output 1: area, area of a circle with radius r, pi*r^2
% output 2: cf, circumference of a circle with radius r, 2*pi*r

%function [area, cf] = circle(r)
%area = pi*r^2;
%cf = 2*pi*r;
%end

% Solution:

function [area, cf] = circle(r)
    area = r.^2 * pi;
    cf = 2 * r * pi;
end