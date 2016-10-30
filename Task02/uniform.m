function [A] = uniform( row,col,a,b)
i = zeros(row,col);
x=rand(row,col);
A = a+((b-a)*x);

% fprintf('Равномерное распределение:\n');
% fprintf('Мат ожидание %.f\n',(a+b)/2);
% fprintf('Дисперсия %.f\n',(b-a)^2/12);
% fprintf('\n');
% 
% figure;
% hist(A);
% title('Равномерное распределение')
end

