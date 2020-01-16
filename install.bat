@echo off

echo ============== Environment Installation Script ==============
echo .
echo Browse https://chocolatey.org/packages for packages
echo .
echo Ensure that your cmd.exe runs as Administrator
echo Do not forget to check proxy settings
echo .
pause

echo Install Chocolaty
powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation
echo .
echo Chocolatey installed
echo .

choco install autoruns
echo autoruns installed

pause