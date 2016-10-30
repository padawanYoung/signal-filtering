function [ s1 ] = initSignals(N)
s1 = race(N);
% s2 = ones (1,N);
% s3 = lineSig(N);
% s4 = ext(N);

figure;
% subplot(4,1,1);
plot(s1)
title ('Race');
% 
% subplot(4,1,2);
% plot(s2)
% title ('Constant');
% 
% subplot(4,1,3);
% plot(s3)
% title ('Line');
% 
% subplot(4,1,4);
% plot(s4)
% title ('Extremum');


print(gcf,'-dpng','-r128',['Graph1.png']);
end

