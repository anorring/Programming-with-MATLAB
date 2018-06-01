function [o1,o2,o3,o4] = custom_read_bin(filename)
fid = fopen(filename,'r');
if fid < 0
   fprintf('error opening file\n');
   return;
end
nums = fread(fid,3,'int16');            % read the file
o1 = char(fread(fid,nums(1),'char'))';  % note transpose
o2 = fread(fid,nums(2),'single');
o3 = fread(fid,nums(3),'int32');
o4 = fread(fid,'single');               % read to the end of the file, no nums()
fclose(fid);

% o2 = fread(fid,nums(2),'single' => 'char'); converting types
% fread prints only column vectors, to orient one would need specify