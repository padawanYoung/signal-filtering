clc
clear all
close all

count = 3;
types = 'alpha-cut';
N = 10^4;                       %- ����������� ��������
m=11;                           %- ��� ��������
q=0.001;                        %- ���������
gamma=6;                        %- �������� ��� �-���������� �������
w = 15;                         %-������ ����������� ���� ����
alphaFlt = 0:0.1:0.4;               %-�������� ��� �-���������� �������

[s1] = initSignals(N);

[ s1_] = NoizedSig( s1,q,m );

[ B ] = getCSS(  );
ClearFile( );                   % ������� ���������� �� �����
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