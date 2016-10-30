clc
clear all
close all

count = 3;
types = {'Line Filter' 'Median Filter'};
N = 10^4;                       %- ����������� ��������
m=1;                           %- ��� ��������
q=0.002;                        %- ���������
gamma=6;                        %- �������� ��� �-���������� �������
w = [5 7 9 11 15];              %-������ ����������� ���� ����
alphaFlt = 0.2;                 %-�������� ��� �-���������� �������

[s1] = initSignals(N);

[ s1_] = NoizedSig( s1,q,m );

[ B ] = getCSS(  );
ClearFile( );                   % ������� ���������� �� �����
fid = WriteHeaderTable( B );

fprintf (fid,'<tr><td>Line Filter</td>');
for i = 1:numel(w)
    
    [ flS1 ] = lineFiltQuality( s1_,w(i) );
    [ dif1] = MSE( s1,flS1 );
    
    [ count ] = Crop2( flS1, count,w(i),i,types(1));
    fprintf (fid,['<td>' num2str(dif1) '</td>']);
end
fprintf (fid,'</tr>');
fprintf (fid,'<tr> <td>Median Filter</td>');
for i = 1:numel(w)
    [ fMedS1 ] = medFiltQuality( s1_,w(i) );
    [ dif1 ] = MSE( s1,fMedS1);
    
    [ count ] = Crop2( fMedS1,count,w(i),i ,types(2));
    fprintf (fid,['<td>' num2str(dif1) '</td>']);
end
fprintf (fid,'</tr>');
fprintf (fid,'</table></body></html>');
web ('my_file.html')
fclose(fid);