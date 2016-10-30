function [A] = uniform( row,col,a,b)
i = zeros(row,col);
x=rand(row,col);
A = a+((b-a)*x);

fprintf('����������� �������������:\n');
fprintf('��� �������� %.f\n',(a+b)/2);
fprintf('��������� %.f\n',(b-a)^2/12);
fprintf('\n');

figure;
hist(A);
title(['����������� ������������� � =' num2str(a) ';' 'b =' num2str(b)]);
end

