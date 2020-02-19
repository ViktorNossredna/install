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
choco install vscode-gitlens
choco install vscode-todo-tree
# vscode-jumpy // this package does not exist, install manually
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
choco install googlechrome
choco install slack
Write-Output "Done installing stuff!"

Write-Output "Configure aliases.sh.."
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/ViktorNossredna/install/master/aliases.sh" -OutFile "C:\Program Files\Git\etc\profile.d\aliases.sh"
Write-Output "Configuring aliases.sh done!"

Write-Output "Configure .gitconfig.."
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/ViktorNossredna/install/master/mytemplate.gitconfig" -OutFile "$env:USERPROFILE\.gitconfig"
Write-Output "Configuring .gitconfig done!"

pause