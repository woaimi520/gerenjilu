
@echo off
set filename=%~n1%~x1
cd %~dp1
echo ������%filename%��ǩ����Ϣ��
echo ----------------------------------------------------------
keytool -list -printcert -jarfile "%filename%"
call C:\Users\Administrator\Desktop\aapt.exe dump badging "%filename%"
pause
