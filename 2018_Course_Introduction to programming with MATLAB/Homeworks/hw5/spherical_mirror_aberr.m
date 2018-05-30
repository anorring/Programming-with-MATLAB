% Write a function that is called like this: 
%   mbd = spherical_mirror_aberr(fn,D), where all arguments are scalars, 
%   fn is the “f-number” of a concave spherical mirror, D is its diameter 
%   in millimeters, and mbd is the mean blur
%   diameter in millimeters. The f-number
%   equals the focal length f of the mirror
%   divided by its diameter. Ideally, all the
%   rays of light from a distant object,
%   illustrated by the parallel lines in the
%   figure, would reflect off the mirror and
%   then converge to a single focal point. The
%   magnified view shows what actually
%   happens. The light striking a vertical plane
%   at a distance f from the mirror is spread
%   over a circular disk. The light from the
%   center of the mirror strikes the center of
%   the disk, but light arriving from a point a
%
% This function calculates the mean blur diameter of a concave spherical 
%   mirror.
% input1: fn, "f-number" of a concave spherical mirror
% input2: D, its diameter in millimeters
% output: mdb, the mean blur diameter in millimeters

function mbd = spherical_mirror_aberr(fn,D)
    deltax = 1e-2;
    x = 0:deltax:D/2;
    f = fn * D;
    theta = asin(x / 2 / f);
    d = 2 * f * tan(2 * theta) .* (1 ./ cos(theta) - 1);
    mbd = 8 * deltax / (D^2) * sum(x .* d); 
end