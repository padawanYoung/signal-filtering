function fid = WriteHeaderTable( B )
fid = fopen('my_file.html', 'ab'); 
if fid == -1 
    error('File is not opened'); 
end 

fwrite(fid, B, 'int16');             % запись в файл

end

