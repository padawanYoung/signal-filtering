function [ b] = dctFLT( b, BlockSize, sigma )
% b = NoisedImage; %�������� �����������
N1=size(b,1);
N2=size(b,2);
kol=zeros(N1,N2); %��������������� �������
r=zeros(N1,N2);    %��������������� �������

% BlockSize=8;        %������ ����������� ����
a=zeros(BlockSize,BlockSize);
ai=zeros(BlockSize,BlockSize);

Th = 2.6*sigma; %�������� ������

for i=1:N1-BlockSize+1
    for j=1:N2-BlockSize+1
        
        a = b(i:(i+BlockSize-1),j:(j+BlockSize-1));
        ai=dct2(a); %���������� ���-�������������
        
        for k=1:BlockSize
            for l=1:BlockSize
                if ((k~=1)||(l~=1))
                    if (abs(ai(k,l)))<=Th; %��������� ���-�������������
                        ai(k,l)=0;
                    end
                end
            end
        end
        
        a=idct2(ai); %�������� ���
        
        for k=1:BlockSize
            for l=1:BlockSize
                kol(k+i-1,l+j-1)=kol(k+i-1,l+j-1)+1; % ���������� �������� � ����������
                r(k+i-1,l+j-1)=r(k+i-1,l+j-1)+a(k,l); %���������� �������� ��� ��������������� ������
            end
        end
        
    end
end

for i=1:N1
    for j=1:N2
        k=r(i,j)/kol(i,j); %����������
        b(i,j)=k; %��������������� �����������
    end
end

end

