function  param(noizeType,fltLine,fltMed,fltMm,fltAC)

fprintf('%s:\n',noizeType);
fprintf('fltLine\n');
fprintf('��� �������� %.3f\n',mean(fltLine));
% fprintf('������ ��������� %.3f\n',var(fltLine));
fprintf('��� %.3f\n',std(fltLine));
fprintf('\n');

fprintf('fltmed\n');
fprintf('��� �������� %.3f\n',mean(fltMed));
% fprintf('������ ��������� %.3f\n',var(fltMed));
fprintf('��� %.3f\n',std(fltMed));
fprintf('\n');

fprintf('fltAC\n');
fprintf('��� �������� %.3f\n',mean(fltAC));
% fprintf('������ ��������� %.3f\n',var(fltAC));
fprintf('��� %.3f\n',std(fltAC));
fprintf('\n');

fprintf('fltMm\n');
fprintf('��� �������� %.3f\n',mean(fltMm));
% fprintf('������ ��������� %.3f\n',var(fltMm));
fprintf('��� %.3f\n',std(fltMm));
fprintf('------------------------------------------------------------------\n');

end
