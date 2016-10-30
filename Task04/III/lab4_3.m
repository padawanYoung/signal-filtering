clc
clear all
close all

count = 3;
types = 'alpha-cut';
N = 10^4;                       %- Колличество отсчетов
m=11;                           %- Мат ожидание
q=0.001;                        %- Дисперсия
gamma=6;                        %- параметр для а-урезанного фильтра
w = 15;                         %-размер скользящего окна окна
alphaFlt = 0:0.1:0.4;               %-параметр для а-урезанного фильтра

[s1] = initSignals(N);

[ s1_] = NoizedSig( s1,q,m );

[ B ] = getCSS(  );
ClearFile( );                   % удаляет содержимое из файла
fid = WriteHeaderTable( B );

fprintf (fid,'<tr><td>alpha-cut</td>');
for i = 1:numel(alphaFlt)
    
    fAS1 = alpaCut(s1_,w,alphaFlt(i));
    [ dif1] = MSE( s1,fAS1 );
    
    [ count ] = Crop2( fAS1, count,alphaFlt(i),i,types);
    fprintf (fid,['<td>' num2str(dif1) '</td>']);
end
fprintf (fid,'</tr>');
fprintf (fid,'</table></body></html>');
web ('my_file.html')
fclose(fid);