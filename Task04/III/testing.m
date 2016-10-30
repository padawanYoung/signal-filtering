fid = fopen('head.txt', 'rb');  % открытие файла на чтение 
if fid == -1 
    error('File is not opened'); 
end 
  
B=0;                % инициализаци€ переменной 
cnt=1;              % инициализаци€ счетчика 
while ~feof(fid)    % цикл, пока не достигнут конец файла 
    [V,N] = fread(fid, 1, 'int16=>Char');  %считывание одного 
% значени€ double (V содержит значение 
% элемента, N Ц число считанных элементов) 
    if N > 0        % если элемент был прочитан успешно, то 
        B(cnt)=V;   % формируем вектор-строку из значений V 
        cnt=cnt+1;  % увеличиваем счетчик на 1 
    end 
end 
% disp(B);            % отображение результата на экран 
fclose(fid);        % закрытие файла

fid = fopen('my_file.html', 'w+b'); 
if fid == -1 
    error('File is not opened'); 
end 

fwrite(fid, B, 'int16');             % запись в файл 
fclose(fid); 