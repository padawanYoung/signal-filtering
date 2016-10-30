function [mseLine, mseMed, mseMm, mseAC] =  MSE(sig,fltLine,fltMed,fltMm,fltAC)
i = 1:numel (fltLine);
N = numel (fltLine);
mseLine = (1/N).*(sig(i)-fltLine(i)).^2;
mseMed = (1/N).*(sig(i)-fltMed(i)).^2;
mseMm = (1/N).*(sig(i)-fltMm(i)).^2;
mseAC = (1/N).*(sig(i)-fltAC(i)).^2;

figure;
subplot(4,1,1);
plot(mseLine)
title('��� ��������� �������')

subplot(4,1,2);
plot(mseMed)
title('��� ���������� �������')

subplot(4,1,3);
plot(mseMm)
title('��� ����-�������� �������')

subplot(4,1,4);
plot(mseAC)
title('��� alpha-���������� ������')
end

