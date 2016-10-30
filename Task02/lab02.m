clc;
clear all;
close all;

cout = 1; %counter

sig = ones (1,10^4);            %- ����������� ������
m=11;                           %- ��� ��������
q=[3 6 2];                      %- ���������
a=[4 8 1];                      %- �������� � ��� ������������ �������������
b=[8 16 3];                     %- �������� B ��� ������������ �������������
lambda=[4 8 2];                 %- ��������� �������
alphaNoize=[2 1.8 1.4];         %- ��������� �������� ��� ����� ����
gamma=6;                        %- �������� ��� �-���������� �������
w = [5 11 25];                  %-������ ����������� ���� ����
alphaFlt = 0.2;                 %-�������� ��� �-���������� �������

for j = 1:3
    fprintf('���� � %i:\n', j);
    [sig_g,sig_u,sig_p,sig_a] = noizedSignals( sig,m,q(j),a(j),b(j),lambda(j),alphaNoize(j),gamma);
    
    for i = 1:numel(w)
        fprintf('������ ���� %i\n------------------------------------------------------------------\n',w(i));
        noizeType1 = '������';
        [ fltLine1,fltMed1,fltMm1,fltAC1,cout ] = filteringQuality( noizeType1 ,sig_g,w(i), alphaFlt ,m,q(j),a(j),b(j),lambda(j),alphaNoize(j),gamma,cout);
        noizeType2 = '�����������';
        [ fltLine2,fltMed2,fltMm2,fltAC2,cout ] = filteringQuality( noizeType2 ,sig_u,w(i), alphaFlt ,m,q(j),a(j),b(j),lambda(j),alphaNoize(j),gamma,cout);
        noizeType3 = '�������������';
        [ fltLine3,fltMed3,fltMm3,fltAC3,cout ] = filteringQuality( noizeType3 ,sig_p,w(i), alphaFlt ,m,q(j),a(j),b(j),lambda(j),alphaNoize(j),gamma,cout);
        noizeType4 = 'alpha-����������';
        [ fltLine4,fltMed4,fltMm4,fltAC4,cout ] = filteringQuality( noizeType4 ,sig_a,w(i), alphaFlt ,m,q(j),a(j),b(j),lambda(j),alphaNoize(j),gamma,cout);
        
        param(noizeType1,fltLine1,fltMed1,fltMm1,fltAC1)
        param(noizeType2,fltLine2,fltMed2,fltMm2,fltAC2)
        param(noizeType3,fltLine3,fltMed3,fltMm3,fltAC3)
        param(noizeType4,fltLine4,fltMed4,fltMm4,fltAC4)
%         if (w(i) == 11)
%             [mseLine1, mseMed1, mseMm1, mseAC1] =  MSE(sig,fltLine1,fltMed1,fltMm1,fltAC1);
%             [mseLine2, mseMed2, mseMm2, mseAC2] =  MSE(sig,fltLine2,fltMed2,fltMm2,fltAC2);
%             [mseLine3, mseMed3, mseMm3, mseAC3] =  MSE(sig,fltLine3,fltMed3,fltMm3,fltAC3);
%             [mseLine4, mseMed4, mseMm4, mseAC4] =  MSE(sig,fltLine4,fltMed4,fltMm4,fltAC4);
%         end
    end
end