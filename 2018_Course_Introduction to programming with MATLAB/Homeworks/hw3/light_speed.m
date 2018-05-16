% input: km, a row vector of distance in kilometers
% output 1: min, a row vector of the same lenght as km with the time in
%           minutes in would take for light to travel the distance 
%           specified in km
% output 2: ml, a row vector of the same lenght as km with the input
%           distance converted to miles

% Speed of light = 300000 km/s
% one mile = 1.609 kilometers

% Note: two inputs are separated by comma and in parentheses, two outputs
% would be separeted by space and in brackets

function [min ml] = light_speed(km)
min = (km./300000./60);
ml = (km./1.609);
end

% Solution:

function [t m] = light_speed(km)
    t = km / 3e5 / 60;
    m = km / 1.609;
end