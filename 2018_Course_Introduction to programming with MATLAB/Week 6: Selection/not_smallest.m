function a = not_smallest(x,y,z)
if x >= y || x >= z
    a = 1;          % x not the smallest
else
    a = 0;          % x the smallest    
end