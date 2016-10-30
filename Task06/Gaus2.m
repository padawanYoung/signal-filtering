function [ e11 ] = Gaus2( row,col,a,q )
a1=rand(row,col);
a2=rand(row,col);
c = 2*pi;

i = 1:numel(a1(1,:));
j = 1:numel(a1(:,1));

r = sqrt(-2*log(a1(i,j)));
fi=c*a2(i,j);
e1=r(i,j).*cos(fi(i,j));
e2=r(i,j).*sin(fi(i,j));

e11 = a + (q.*e1(i,j));
e22 = a + (q.*e2(i,j));
e11 = uint8(e11);
% fprintf('Гаусовo распределение:\n');
% 
% figure;
% hist(e11);
% title(['Гаусово распределение \mu =' num2str(a) ';' '\sigma =' num2str(q)]);
end

