clc;
% clear all
close all

I=imread('PICS/exp1/I03_1.png');
imhist(I);
% blockTree(I);

% I2 = imcrop(I,[0 0 16 16]);
I2 = imcrop(I);
imhist (I2);
s=size(I2);
N = s(1);
M = s(2);

i = 1:N;
j = 1:M;

p_ = sum(sum(double(I2(i,j))./(N*M))); %локальное среднее
Q_loc = sum(sum(1./(N*M-1)*sqrt(double( I2(i,j)-p_).^2))); %Локальная дисперсия

Q_loc_rel = Q_loc/p_;

% s =sort(disper);
% s = sum(s (2:9))/8;

