function [ dif1,dif2,dif3,dif4 ] = MSE( s1,s2,s3,s4,fS1,fS2,fS3,fS4 )

for i = 1:numel(s1)
    difer1(i) = (1/numel(s1)).*(s1(i)-fS1(i)).^2;
    difer2(i) = (1/numel(s2)).*(s2(i)-fS2(i)).^2;
    difer3(i) = (1/numel(s3)).*(s3(i)-fS3(i)).^2;
    difer4(i) = (1/numel(s4)).*(s4(i)-fS4(i)).^2;
end
dif1 = sqrt(sum(difer1));
dif2 = sqrt(sum(difer2));
dif3 = sqrt(sum(difer3));
dif4 = sqrt(sum(difer4));
end

