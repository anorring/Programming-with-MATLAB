%This function computes the difference in days between the ages of two
%children.
%input 1: month1, the month of birth of the 1st child
%input 2: day1, the day of birth of the 1st child
%input 3: month2, the month of birth of the 2nd child
%input 4: day2, the day of birth of the 2nd child
%output: dd, a positive integer scalar equal to the difference in days
%           between the birthdays of the two children

function dd = day_diff(month1, day1, month2, day2)
%check the inputs
if ~isscalar(month1) || ~isscalar(month2) || ~isscalar(day1) || ~isscalar(day2);
    dd = -1
elseif rem(month1,2) ~= 1 && rem(month1,2) ~= 0 
    dd = -1
elseif rem(month2,2) ~= 1 && rem(month2,2) ~= 0 
    dd = -1
elseif rem(day1,2) ~= 1 && rem(day1,2) ~= 0 
    dd = -1
elseif rem(day2,2) ~= 1 && rem(day2,2) ~= 0 
    dd = -1
elseif month1 < 1 || month1 > 12 || month2 < 1 || month2 > 12;
    dd = -1
elseif day1 < 1 || day1 > 31 || day2 < 1 || day2 > 31;
    dd = -1
elseif (month1 == 2 && day1 > 28) || (month2 == 2 && day2 > 28);
    dd = -1
elseif (month1 == 4 || month1 == 6 || month1 == 9 || month1 == 11) && day1 > 30;
    dd = -1
elseif (month2 == 4 || month2 == 6 || month2 == 9 || month2 == 11) && day2 > 30;
    dd = -1
else
%calculate the index for the birthday
days = [31 28 31 30 31 30 31 31 30 31 30 31];
bd1 = sum(days(1:month1)) - days(month1) + day1;
bd2 = sum(days(1:month2)) - days(month2) + day2;
%the difference in days
dd = abs(bd1-bd2);
end