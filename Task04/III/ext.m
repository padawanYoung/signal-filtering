function [ex] = ext (N)
 x=-N/500:0.1:N/500;
%  ex=10*x.^4 - 4*x.^3 - 12*x.^2 + 1000;
ex=10*x.^4 - 4*x.^3 - 12*x.^2 + N*100;
ex=x.^2;
%  figure;
%  plot(x,ex)
end