function [ s2_ ] = NoizedSig( s2,q,m )
% s1_= s1+Gaus2(1,numel(s1),q,m);
s2_= s2+Gaus2(1,numel(s2),q,m);
% s3_= s3+Gaus2(1,numel(s3),q,m);
% s4_= s4(1:numel(s4)-1)+Gaus2(1,numel(s4)-1,q,m);

figure;
% subplot(4,1,1);
% plot(s1_)
% title ('Race');
% 
% subplot(4,1,2);
plot(s2_)
title ('Noized Constant');
% 
% subplot(4,1,3);
% plot(s3_)
% title ('Line');
% 
% subplot(4,1,4);
% plot(s4_)
% title ('Extremum');
% xlabel ('NOIZED');

print(gcf,'-dpng','-r128','Graph2.png');
end

