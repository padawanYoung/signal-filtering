function [ e11,e22 ] = Gaus2( row,col,a,q )
a1=rand(row,col);
a2=rand(row,col);
c = 2*pi;
i = 1:numel(a1);
r = sqrt(-2*log(a1(i)));
fi=c*a2(i);
e1=r(i).*cos(fi(i));
e2=r(i).*sin(fi(i));

e11 = a + (q.*e1(i));
e22 = a + (q.*e2(i));

fprintf('Гаусовo распределение:\n');

figure;
hist(e11);
title(['Гаусово распределение \mu =' num2str(a) ';' '\sigma =' num2str(q)]);
end

