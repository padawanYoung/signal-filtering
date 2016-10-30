function [ dif1] = MSE( s1,fS1)

for i = 1:numel(fS1)
    difer1(i) = (1/numel(fS1)).*(s1(i)-fS1(i)).^2;
%     difer2(i) = (1/numel(fS2)).*(s2(i)-fS2(i)).^2;
end
% l=1:numel(fS3);
% difer3 = (1/numel(fS3)).*(s3(l)-fS3(l)).^2;
% 
% j = 1:numel(fS4);
% difer4 = (1/numel(fS4)).*(s4(j)-fS4(j)).^2;

dif1 = sqrt(sum(difer1));
% dif2 = sqrt(sum(difer2));
% dif3 = sqrt(sum(difer3));
% dif4 = sqrt(sum(difer4));
end

