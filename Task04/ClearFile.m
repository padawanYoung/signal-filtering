function ClearFile(  )
fid = fopen('my_file.html', 'w+b'); 
if fid == -1 
    error('File is not opened'); 
end 
fclose(fid);
end

