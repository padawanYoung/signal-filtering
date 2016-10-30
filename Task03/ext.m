function [ex] = ext (N)
 x=-N/20:0.1:N/20;
%  ex=10*x.^4 - 4*x.^3 - 12*x.^2 + 1000;
ex=10*x.^4 - 4*x.^3 - 12*x.^2 + N*100;
%  figure;
%  plot(x,ex)
end