function [ b] = dctFLT( b, BlockSize, sigma )
% b = NoisedImage; %Исходное изображение
N1=size(b,1);
N2=size(b,2);
kol=zeros(N1,N2); %вспомогательная матрица
r=zeros(N1,N2);    %вспомогательная матрица

% BlockSize=8;        %размер скользящего окна
a=zeros(BlockSize,BlockSize);
ai=zeros(BlockSize,BlockSize);

Th = 2.6*sigma; %величина порога

for i=1:N1-BlockSize+1
    for j=1:N2-BlockSize+1
        
        a = b(i:(i+BlockSize-1),j:(j+BlockSize-1));
        ai=dct2(a); %вычисление ДКП-коэффициентов
        
        for k=1:BlockSize
            for l=1:BlockSize
                if ((k~=1)||(l~=1))
                    if (abs(ai(k,l)))<=Th; %обнуление ДКП-коэффициентов
                        ai(k,l)=0;
                    end
                end
            end
        end
        
        a=idct2(ai); %обратное ДКП
        
        for k=1:BlockSize
            for l=1:BlockSize
                kol(k+i-1,l+j-1)=kol(k+i-1,l+j-1)+1; % количество пикселей в перекрытии
                r(k+i-1,l+j-1)=r(k+i-1,l+j-1)+a(k,l); %накопление значений для перекрывающихся блоков
            end
        end
        
    end
end

for i=1:N1
    for j=1:N2
        k=r(i,j)/kol(i,j); %усреднение
        b(i,j)=k; %отфильтрованное изображение
    end
end

end

