function [ fltLine,fltMed,fltMm,fltAC,cout ] = filteringQuality( noizeType,sig_,w,alpha,m,q,a,b,lambda,alphaNoize,gamma,cout)

fltLine = lineFilt(sig_,w);
fltMed = medFilt(sig_,w);
fltMm = minMax(sig_,w);
fltAC=alpaCut(sig_,w,alpha);
if (w == 11)
    figure;
    subplot(4,1,1);
    plot(fltLine)
    title(['Линейный Фильтр,' ' ' 'Тип шума:' ' ' noizeType ' ' 'Размер скользящего окна:' num2str(w)])
    
    subplot(4,1,2);
    plot(fltMed)
    title(['Медианный Фильтр;' ' ' 'Тип шума:' ' ' noizeType '; ' 'Размер скользящего окна:' num2str(w)])
    
    subplot(4,1,3);
    plot(fltMm)
    title(['Мини-максный фильтр;' ' ' 'Тип шума:' ' ' noizeType '; ' 'Размер скользящего окна:' num2str(w)])
    
    subplot(4,1,4);
    plot(fltAC)
    title(['alpha-урезанный фильтр;' ' ' 'Тип шума:' ' ' noizeType '; ' 'Размер скользящего окна:' num2str(w)])
    xlabel(['\mu=' num2str(m) '; ' '\sigma=' num2str(q) '; ' 'a=' num2str(a) '; ' 'b=' num2str(b) '\lambda=' num2str(lambda) '; ' '\alpha=' num2str(alphaNoize) '; ' '\gamma=' num2str(gamma) ';'])
    print(gcf,'-dpng','-r128',['Graph' num2str(cout) '.png']);
    cout = cout+1;
end
end

