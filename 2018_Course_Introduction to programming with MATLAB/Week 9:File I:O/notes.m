%% FILE INPUT/OUTPUT
%% Folders and files

% Current folder: 
pwd 
% Contents of the current folder: 
ls
contents = ls
whos contents
% 
% Assigning a parent directory and going there:
parent_directory = '/Users/anninorring/Documents/GitHub/Programming-with-MATLAB/2018_Course_Introduction to programming with MATLAB'
cd(parent_directory)

% Parent or grandparent of current:
cd('..')
cd('../..')

% New directory:
mkdir('new_folder')
rmdir('new_folder')

%% Saving and loading a workspace

whos
save
load

% Save into a file with self-specified name and save only some of the
% variables (s and a)
save my_data_file data s a

%% EXCEL FILES

% xlsread, xlswrite

% all three outputs contains different information: num - numbers - txt -
% text, raw - all data
[num, txt, raw] = xlsread('Nashville_climate_data.xlsx');

temps = xlsread('Nashville_climate_data.xlsx');
[temps text] = xlsread('Nashville_climate_data.xlsx');
[~, text] = xlsread('Nashville_climate_data.xlsx');
[~, ~, everything] = xlsread('Nashville_climate_data.xlsx');

% from a specified cell or area:
num = xlsread('Nashville_climate_data.xlsx',1,'D15');
num = xlsread('Nashville_climate_data.xlsx',1,'D15:E17');

% xlswrite on Mac writes only text files (CSV)


%% TEXT FILES

% Reading:
% text file has to be opened and closed:

fid = fopen(filename, permission)  % permission: rt, wt, at, r+t, w+t, a+t
help fopen
fclose(fid)

% Reading text files:

function view_text_file(filename)
fid = fopen(filename,'rt');
if fid < 0
    error('error opening file %s\n\n', filename);
end 

% Read file as a set of strings, one string per line:
oneline = fgets(fid);
while ischar(oneline)
    fprintf('%s',oneline) % display one line 
    oneline = fgets(fid);
end 
fprintf('\n');
fclose(fid);
end

%% BINARY FILES

% Binary files are more suited for numerical data

% binary files need to be opened and closed
fopen(filename, 'w+') 
fclose

% data types are important with 

% Example: write a double array into a binary file

function write_array_bin(A,filename) 
fid = fopen(filename,'w+');
if fid < 0
    error('error opening file %s\n', filename);
end

fwrite(fid,A,'double');

fclose(fid);
end

%Example: read a double array from a binary file

function A = read_bin_file(filename,data_type) 
fid = fopen(filename,'r');
if fid < 0
    error('error opening file %s\n',filename); 
end

A = fread(fid,inf,data_type);   %inf read everything

fclose(fid);                    % closing important: otherwise the files will not open

end

%% Examples

rng(0); Data = randn(10,12);

isequal(X,Y)


Beta = randn(6,2,5);
write_dims_array_bin(Beta,'betafile.dar')
B = read_dims_array_bin('betafile.dar');
whos
isequal(B,Beta)

%% custom_write/read_bin

header = 'Data requested on Pi Day (3/14/15)';
Vega = [8, 7, -145];
VLA = [1000, 2000, 700, 0 , 48];
W9GFO = [1.45e8, 34e6, 4e7, -1e8];
custom_write_bin(header, Vega, VLA, W9GFO, 'Arecibo.dat')

[o1,o2,o3,o4] = custom_read_bin('Arecibo.dat')
