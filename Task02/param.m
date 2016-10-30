function  param(noizeType,fltLine,fltMed,fltMm,fltAC)

fprintf('%s:\n',noizeType);
fprintf('fltLine\n');
fprintf('мат ожидание %.3f\n',mean(fltLine));
% fprintf('оценка дисперсии %.3f\n',var(fltLine));
fprintf('СКО %.3f\n',std(fltLine));
fprintf('\n');

fprintf('fltmed\n');
fprintf('мат ожидание %.3f\n',mean(fltMed));
% fprintf('оценка дисперсии %.3f\n',var(fltMed));
fprintf('СКО %.3f\n',std(fltMed));
fprintf('\n');

fprintf('fltAC\n');
fprintf('мат ожидание %.3f\n',mean(fltAC));
% fprintf('оценка дисперсии %.3f\n',var(fltAC));
fprintf('СКО %.3f\n',std(fltAC));
fprintf('\n');

fprintf('fltMm\n');
fprintf('мат ожидание %.3f\n',mean(fltMm));
% fprintf('оценка дисперсии %.3f\n',var(fltMm));
fprintf('СКО %.3f\n',std(fltMm));
fprintf('------------------------------------------------------------------\n');

end
