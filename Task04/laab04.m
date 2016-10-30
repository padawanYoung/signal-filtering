clc
clear all
close all

count = 3;
types = {'Line Filter' 'Median Filter' 'Alpha-cut Filter' 'Min-max Filter'};
N = 10^4;                       %- Колличество отсчетов
m=11;                           %- Мат ожидание
q=0.001;                        %- Дисперсия
gamma=6;                        %- параметр для а-урезанного фильтра
w = [5 7 9 11 15];              %-размер скользящего окна окна
alphaFlt = 0.2;                 %-параметр для а-урезанного фильтра

[ s1,s2,s3,s4 ] = initSignals(N);

[ s1_,s2_,s3_,s4_ ] = NoizedSig( s1,s2,s3,s4,q,m );

[ B ] = getCSS(  );
ClearFile( );                   % удаляет содержимое из файла
fid = WriteHeaderTable( B );

for i = 1:numel(w)
    fprintf (fid, ['<tr> <td colspan="5">' 'W = ' num2str(w(i)) '</td> </tr>']);
    
    [ flS1,flS2,flS3,flS4 ] = lineFiltQuality( s1_,s2_,s3_,s4_,w(i) );
    [ dif1,dif2,dif3,dif4 ] = MSE( s1,s2,s3,s4,flS1,flS2,flS3,flS4 );
    
    [ count ] = Crop( flS1,flS2,flS3,flS4 , count,types(1),w(i));
    fprintf (fid,['<tr> <td>Line Filter</td> <td>' num2str(dif1) '</td> <td>' num2str(dif2) '</td> <td>' num2str(dif3) '</td> <td>' num2str(dif4) '</td> </tr>']);
    
    [ fMedS1,fMedS2,fMedS3,fMedS4 ] = medFiltQuality( s1_,s2_,s3_,s4_,w(i) );
    [ dif1,dif2,dif3,dif4 ] = MSE( s1,s2,s3,s4,fMedS1,fMedS2,fMedS3,fMedS4 );
    
    [ count ] = Crop( fMedS1,fMedS2,fMedS3,fMedS4, count,types(2),w(i) );
    fprintf (fid, ['<tr> <td>Median Filter</td> <td>' num2str(dif1) '</td> <td>' num2str(dif2) '</td> <td>' num2str(dif3) '</td> <td>' num2str(dif4) '</td> </tr>']);

    [ fAS1,fAS2,fAS3,fAS4 ] = alpaCutQuality( s1_,s2_,s3_,s4_,w(i),alphaFlt);
    [ dif1,dif2,dif3,dif4 ] = MSE( s1,s2,s3,s4,fAS1,fAS2,fAS3,fAS4 );
    
    [ count ] = Crop( fAS1,fAS2,fAS3,fAS4, count,types(3),w(i));
    fprintf (fid,['<tr> <td>alpha-Cut Filter</td> <td>' num2str(dif1) '</td> <td>' num2str(dif2) '</td> <td>' num2str(dif3) '</td> <td>' num2str(dif4) '</td> </tr>']);
    
    [ fmmS1,fmmS2,fmmS3,fmmS4 ] = minMaxQuality( s1_,s2_,s3_,s4_,w);
    [ dif1,dif2,dif3,dif4 ] = MSE( s1,s2,s3,s4,fmmS1,fmmS2,fmmS3,fmmS4 );
    
    [ count ] = Crop( fAS1,fAS2,fAS3,fAS4, count,types(4),w(i) );
    fprintf (fid,['<tr> <td>Min-max Filter</td> <td>' num2str(dif1) '</td> <td>' num2str(dif2) '</td> <td>' num2str(dif3) '</td> <td>' num2str(dif4) '</td> </tr>']);
end
 fprintf (fid,'</table></body></html>');
fclose(fid);