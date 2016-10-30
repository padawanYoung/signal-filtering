clc
clear all
close all

I = imread ('images/AIRFIELD.bmp');
figure;
imshow (I);

%��������� �����������
[ver,hor] = size (I);
noize = Gaus2( ver,hor,1,40 );
i=1:ver;
j=1:hor;
I_ = I(i,j)+noize(i,j);
figure;
imshow(I_);

% ����������
dI = dctFLT( I_, 8, 65);
figure;
imshow(dI);

mI = med2D (I_,5);
figure;
imshow(mI);

% ���������� ���������
stdDCT = std(double(dI(:)));
stdMED = std(double(mI(:)));