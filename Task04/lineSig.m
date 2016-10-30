function [ sig ] = lineSig( N )
for i=1:round(N/80)
    sig(i) = i;
end
% figure;
% plot(sig)
end

