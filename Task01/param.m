function param(x)
i = 1:numel(x);
mr = (x(i)-var(x))./numel(x);%���������� ����������� �������

fprintf('��� �������� %.3f\n',mean(x));
fprintf('������ ��������� %.3f\n',var(x));
fprintf('��� %.3f\n',std(x));
fprintf('����������� ����������� g1  %f\n',mr(3)/(mr(2)^(3/2)));
fprintf('����������� �������� g2 %f\n',(mr(4)/(mr(2)^(2)))-3);
fprintf('\n');
end

