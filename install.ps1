Write-Output ============== Environment Installation Script ==============
Write-Output .
Write-Output Browse https://chocolatey.org/packages for packages
Write-Output .
Write-Output Ensure that your cmd.exe runs as Administrator
Write-Output Do not forget to check proxy settings
Write-Output .
pause

Write-Output Install Chocolaty

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation
Write-Output .
Write-Output Chocolatey installed
Write-Output .

choco install autoruns
Write-Output autoruns installed

pause