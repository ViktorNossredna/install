Write-Output "============== Environment Installation Script =============="
Write-Output .
Write-Output "Browse https://chocolatey.org/packages for packages"
Write-Output .
Write-Output "Ensure that your cmd.exe runs as Administrator"
Write-Output "Do not forget to check proxy settings"
Write-Output .
pause

Write-Output "Install Chocolaty"

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation
Write-Output .
Write-Output "Chocolatey installed"
Write-Output .

Write-Output "Start installing stuff.."
choco install git
choco install vscode
choco install vscode-python
choco install p4merge
choco install 7zip
choco install everything
choco install agentransack
choco install spotify
choco install miniconda3
choco install cuda
choco install obs-studio
choco install wireshark
choco install winscp
choco install postman
choco install vlc
Write-Output "Done installing stuff!"

pause