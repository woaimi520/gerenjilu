
@echo off
set filename=%~n1%~x1
cd %~dp1
echo 以下是%filename%的签名信息：
echo ----------------------------------------------------------
keytool -list -printcert -jarfile "%filename%"
call C:\Users\Administrator\Desktop\aapt.exe dump badging "%filename%"
pause
