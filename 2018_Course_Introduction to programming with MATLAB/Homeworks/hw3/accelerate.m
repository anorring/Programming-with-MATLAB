% input 1: F1, three element colmun vector representing a force applied to
%       a single object
% input 2: F2, three element colmun vector representing a force applied to
%       a single object
% input 3: m, the mass of the object in kg
% output: amag, a scalar equal to the magnitude of the acceleration

function a = accelerate(F1,F2,m)
    F = F1 + F2;
    f = sqrt(sum(F.^2));
    a = f/m;
end

% Solution:

function a = accelerate(F1,F2,m)
    F = F1 + F2;
    f = sqrt(sum(F.^2));
    a = f/m;
end
