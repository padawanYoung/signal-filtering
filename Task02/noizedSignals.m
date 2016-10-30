function [sig_g,sig_u,sig_p,sig_a] = noizedSignals( sig,a,b,m,q,lambda,alpha,gamma)
% sig - ����������� ������
% a - �������� � ��� ������������ �������������
% b - �������� B ��� ������������ �������������
% m - ��� ��������
% q - ���������
% alpha - ��������� �������� ��� ����� �������

e1 = Gaus2(1,numel(sig),m,q);
U = uniform(1,numel(sig),a,b);
pois = poissrnd(lambda, 1,numel(sig));
alpha = RFI_MakeDataAlphaStable(alpha, gamma, m, numel(sig));

sig_g = e1+sig;
sig_u = U+sig;
sig_p = pois+sig;
sig_a = alpha+sig;

% figure;
% subplot(4,1,1);
% plot(sig_g)
% title('������ � ���������� �����')
% 
% subplot(4,1,2);
% plot(sig_u)
% title('������ � ����������� �����')
% 
% subplot(4,1,3);
% plot(sig_p)
% title('������ � ������������� �����')
% 
% subplot(4,1,4);
% plot(sig_a)
% title('������ � alpha-���������� �����')
end

