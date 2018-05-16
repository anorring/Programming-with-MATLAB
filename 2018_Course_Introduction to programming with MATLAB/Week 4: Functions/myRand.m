
function [a, s] = myRand(low,high)
a = low + rand(3,4)*(high-low);
s = sumAllElements(a);

function summa = sumAllElements(M)
v = M(:);
summa = sum(v)

