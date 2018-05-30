% Write a function called day_diff that takes four scalar positive integer 
%   inputs, month1, day1, month2, day2. These represents the birthdays of 
%   two children who were born in 2015. The function returns a positive 
%   integer scalar that is equal to the difference between the ages of the 
%   two children in days. Make sure to check that the input values are of 
%   the correct types and they represent valid dates. If they are 
%   erroneous, return -1. An example call to the function would be
%        >> dd = day_diff(1,30,2,1);
%   which would make dd equal 2. You are not allowed to use the built-in 
%   function datenum or datetime. Hint: store the number of days in the 
%   months of 2015 in a 12-element vector (e.g., 31, 28, 31, 30 ...) and 
%   use it in a simple formula.
%
% This function computes the difference in days between the ages of two
%   children.
% input 1: m1, the month of birth of the 1st child
% input 2: d1, the day of birth of the 1st child
% input 3: m2, the month of birth of the 2nd child
% input 4: d2, the day of birth of the 2nd child
% output: diff, a positive integer scalar equal to the difference in days
%           between the birthdays of the two children

% Note: this was the given solution, much shorter than my initial
% solution:

function diff = day_diff(m1,d1,m2,d2)
    days = [31 28 31 30 31 30 31 31 30 31 30 31];
    
    % this first if-eleif-else statement returns diff = -1 if the inputs are incorrect
    diff = -1;
    if     ~isscalar(m1) || m1 < 1 || m1 > 12       || m1 ~= floor(m1),  return; 
    elseif ~isscalar(m2) || m2 < 1 || m2 > 12       || m2 ~= floor(m2),  return;
    elseif ~isscalar(d1) || d1 < 1 || d1 > days(m1) || d1 ~= floor(d1),  return;
    elseif ~isscalar(d2) || d2 < 1 || d2 > days(m2) || d2 ~= floor(d2),  return;
    end

    if m2 < m1 || (m1 == m2 && d2 < d1)      % make sure m1/d1 is the earlier date
        tmp = m1; m1 = m2; m2 = tmp;          
        tmp = d1; d1 = d2; d2 = tmp;
    end
    diff = sum(days(m1:m2-1)) + d2 - d1;
end


% My solution:

%function dd = day_diff(month1, day1, month2, day2)
%check the inputs
%if ~isscalar(month1) || ~isscalar(month2) || ~isscalar(day1) || ~isscalar(day2);
%    dd = -1
%elseif rem(month1,2) ~= 1 && rem(month1,2) ~= 0 
%    dd = -1
%elseif rem(month2,2) ~= 1 && rem(month2,2) ~= 0 
%    dd = -1
%elseif rem(day1,2) ~= 1 && rem(day1,2) ~= 0 
%    dd = -1
%elseif rem(day2,2) ~= 1 && rem(day2,2) ~= 0 
%    dd = -1
%elseif month1 < 1 || month1 > 12 || month2 < 1 || month2 > 12;
%    dd = -1
%elseif day1 < 1 || day1 > 31 || day2 < 1 || day2 > 31;
%    dd = -1
%elseif (month1 == 2 && day1 > 28) || (month2 == 2 && day2 > 28);
%    dd = -1
%elseif (month1 == 4 || month1 == 6 || month1 == 9 || month1 == 11) && day1 > 30;
%    dd = -1
%elseif (month2 == 4 || month2 == 6 || month2 == 9 || month2 == 11) && day2 > 30;
%    dd = -1
%else
%calculate the index for the birthday
%days = [31 28 31 30 31 30 31 31 30 31 30 31];
%bd1 = sum(days(1:month1)) - days(month1) + day1;
%bd2 = sum(days(1:month2)) - days(month2) + day2;
%the difference in days
%dd = abs(bd1-bd2);
%end

