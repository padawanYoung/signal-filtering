clc
clear all
close all

[e1,e2] = Gaus2(10000,1,11,2);
param(e1)

U = uniform(10000,1,1,3);
param (U)

lambda = 2;
pois = poissrnd(lambda, 10000, 1);
figure;
hist(pois)
title(['Пуассоновское распределение \lambda =' num2str(lambda)]);
fprintf('Пуассоновское распределение:\n');
param(pois)

alpha = 1.4;
gamma = 11;
mu = 6;
alphN = RFI_MakeDataAlphaStable(alpha, gamma, mu, 10000);
figure;
hist(alphN)
title(['\alpha-стабильное  распределение \alpha =' num2str(alpha) ';' '\gamma =' num2str(mu)]);
fprintf('Alpha-стабильное распределение:\n');
param(alphN)
