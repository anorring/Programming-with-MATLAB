% x, y, z in non-decreasing, decreasing or other order? 

function a = order3(x,y,z)
if x <= y && y <= z
    a = 1;    % non-decreasing
elseif x >= y && y >= z
    a = -1    % decreasing
else
    a = 0;    % neither      
end