
@echo off
set filename=%~n1%~x1
cd %~dp1
echo 以下是%filename%的签名信息：
echo ----------------------------------------------------------
keytool -list -printcert -jarfile "%filename%"
call %~dp0\aapt.exe dump badging "%filename%" |findstr /c:"targetSdkVersion" /c:"sdkVersion" /c:"versionCode"
pause
