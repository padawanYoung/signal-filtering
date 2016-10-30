function [sig] = pseudoSignal(N)
% Mu=0;
% Sigma=1000;
% rndm = normrnd(Mu,Sigma,[1 N]);
% [b,a]=butter(4,1/500,'low');   %Задание типа НЧ фильтра%
% (Баттерворта, 3 порядка, частота среза 15/500 Гц%
% sig=filter(b,a,rndm);

t = 0:0.1:N;
w1 = 0.2;
w2 = 0.6;
w3 = 0.12;
sig = 10*cos(w1*t)+20*cos(w2*t)+30*cos(w3*t);

% sig = ones (1,N);

% figure
% plot(sig);
% title('Исследуемый Сигнал')
end

