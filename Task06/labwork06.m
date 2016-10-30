clc;
clear all
close all

I=imread('PICS/exp5/I02_5.png');
figure;
imshow(I);

% [Q_loc] = dispNoize(I);
% fprintf('original disp = %d \n',Q_loc_rel);

I_=averaging_flt2D(I,7);
I_2=med2D(I,7);

figure;
imshow(I_);
% [Q_loc] = dispNoize(I_);
% fprintf('average disp = %d \n',Q_loc_rel);

figure;
imshow(I_2);
% [Q_loc] = dispNoize(I_2);
% fprintf('median disp = %d \n',Q_loc_rel);