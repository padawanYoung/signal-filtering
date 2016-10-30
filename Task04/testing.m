fid = fopen('head.txt', 'rb');  % �������� ����� �� ������ 
if fid == -1 
    error('File is not opened'); 
end 
  
B=0;                % ������������� ���������� 
cnt=1;              % ������������� �������� 
while ~feof(fid)    % ����, ���� �� ��������� ����� ����� 
    [V,N] = fread(fid, 1, 'int16=>Char');  %���������� ������ 
% �������� double (V �������� �������� 
% ��������, N � ����� ��������� ���������) 
    if N > 0        % ���� ������� ��� �������� �������, �� 
        B(cnt)=V;   % ��������� ������-������ �� �������� V 
        cnt=cnt+1;  % ����������� ������� �� 1 
    end 
end 
% disp(B);            % ����������� ���������� �� ����� 
fclose(fid);        % �������� �����

fid = fopen('my_file.html', 'w+b'); 
if fid == -1 
    error('File is not opened'); 
end 

fwrite(fid, B, 'int16');             % ������ � ���� 
fclose(fid); 