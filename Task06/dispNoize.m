function [ Q_loc] = dispNoize( I )
I2 = imcrop(I);
s=size(I2);
N = s(1);
M = s(2);

i = 1:N;
j = 1:M;

p_ = sum(sum(double(I2(i,j))./(N*M))); %локальное среднее
Q_loc = sum(sum(1./(N*M-1)*sqrt(double( I2(i,j)-p_).^2))); %Локальная дисперсия

Q_loc_rel = Q_loc/p_;

end

