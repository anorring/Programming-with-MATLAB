% Write a function called digit_counter that takes the name of a text file
%   as input and returns the number of digits (i.e., any of the characters,
%   0-to-9) that the file contains. If there is a problem opening the file,
%   the function returns -1. 
%
% input: filename, the name of a text file
% output: digits_in_name, the number of digits in the name

function digits_in_name = digit_counter(filename)
fid = fopen(filename,'rt');         % Permission to read the file

if fid<0
  digits_in_name = -1;              % Error msg for opening the file
  return;
end

A = fread(fid,inf,'*char');         % Reads binary data from the specified file and writes it into matrix A, inf - reads to the end of the file, '*char' - reads the file according to the data format specified 
digits = A(isstrprop(A,'digit'));   % Checks if string elements are of a specified category and saves them to a new vector

digits_in_name=length(digits);      % counts the elements in digits
fclose(fid);    
end