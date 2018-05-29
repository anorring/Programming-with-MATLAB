% Write a function called light_speed that takes as input a row vector of 
%   distances in kilometers and returns two row vectors of the same length.
%   Each element of the first output argument is the time in minutes that 
%   light would take to travel the distance specified by the corresponding 
%   element of the input vector. To check your math, it takes a little more
%   than 8 minutes for sunlight to reach Earth which is 150 million 
%   kilometers away. The second output contains the input distances 
%   converted to miles. Assume that the speed of light is 300,000 km/s and 
%   that one mile equals 1.609 km.
%
% input: km, a row vector of distance in kilometers
% output1: min, a row vector of the same lenght as km with the time in
%           minutes in would take for light to travel the distance 
%           specified in km
% output2: ml, a row vector of the same lenght as km with the input
%           distance converted to miles

% Speed of light = 300000 km/s
% one mile = 1.609 kilometers

% Note: two inputs are separated by comma and in parentheses, two outputs
% would be separeted by space and in brackets

function [t m] = light_speed(km)
    t = km / 3e5 / 60;              % Note: abbreviation of 300000, a good practice
    m = km / 1.609;
end