%This function calculates the mean blur diameter of a concave spherical 
%mirror.
%input1: fn, "f-number" of a concave spherical mirror
%input2: D, its diameter in millimeters
%output: mdb, the mean blur diameter in millimeters

function mbd = spherical_mirror_aberr(fn,D)
    deltax = 1e-2;
    x = 0:deltax:D/2;
    f = fn * D;
    theta = asin(x / 2 / f);
    d = 2 * f * tan(2 * theta) .* (1 ./ cos(theta) - 1);
    mbd = 8 * deltax / (D^2) * sum(x .* d); 
end