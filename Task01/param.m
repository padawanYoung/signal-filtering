function param(x)
i = 1:numel(x);
mr = (x(i)-var(x))./numel(x);%Выборочные центральные моменты

fprintf('мат ожидание %.3f\n',mean(x));
fprintf('оценка дисперсии %.3f\n',var(x));
fprintf('СКО %.3f\n',std(x));
fprintf('Коэффициент ассиметриии g1  %f\n',mr(3)/(mr(2)^(3/2)));
fprintf('Коэффициент эксцесса g2 %f\n',(mr(4)/(mr(2)^(2)))-3);
fprintf('\n');
end

