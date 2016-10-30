function [ count ] = Crop2( fS1 , count,w,i,types)
if (i==1)
    figure;
end
subplot(5,1,i);
plot(fS1)
title (['&alpha=' num2str(w)]);
if (i == 5)
    xlabel (types);
    print(gcf,'-dpng','-r128',['Graph' num2str(count) '.png']);
    count = count + 1;
end
end