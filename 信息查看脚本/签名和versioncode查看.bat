
@echo off
set filename=%~n1%~x1
cd %~dp1
echo ������%filename%��ǩ����Ϣ��
echo ----------------------------------------------------------
keytool -list -printcert -jarfile "%filename%"
call %~dp0\aapt.exe dump badging "%filename%" |findstr /c:"targetSdkVersion" /c:"sdkVersion" /c:"versionCode"
pause
