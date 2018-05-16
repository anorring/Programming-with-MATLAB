%This function returns true if the specified date is a holiday.
%input 1: month, scalar representing month (1-12)
%input 2: day, scalar representing day (1-31)
%ouput: true/false

function h = holiday(month,day)
h = (month == 1 && day == 1) || (month == 7 && day == 4) || (month == 12 && day == 25) || (month == 12 && day == 31) 
end