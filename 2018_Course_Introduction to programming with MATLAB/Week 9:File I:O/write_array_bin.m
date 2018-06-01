function write_array_bin(A,filename)
fid = fopen(filename,'w+');
if fid < 0
    error('error opening file %s\n', filename); % checks for an error
end

fwrite(fid,A,'double');

fclose(fid);

% note: writes them as a vector, if dimensions not written into the file