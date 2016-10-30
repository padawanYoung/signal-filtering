function [ count ] = Crop( fS1 , count,w)
% if (w == 7)
%     figure;
%     subplot(4,1,1);
%     plot(fS1)
%     title ('Race');
%     
%     subplot(4,1,2);
%     plot(fS2)
%    title ('Constant');
%     
%     subplot(4,1,3);
%     plot(fS3)
%     title ('Line');
%     
%     subplot(4,1,4);
%     plot(fS4)
%     title ('Extremum');
%     xlabel(['USED: ' types]);
%     
%     print(gcf,'-dpng','-r128',['Graph' num2str(count) '.png']);
%     count = count + 1;
% end
figure;
plot (fS1)
title ('Race');
xlabel(['USED: ' num2str(w)]);
print(gcf,'-dpng','-r128',['Graph' num2str(count) '.png']);
count = count + 1;
end

