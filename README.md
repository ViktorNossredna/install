$ScriptFromGitHub = Invoke-WebRequest https://raw.githubusercontent.com/ViktorNossredna/install/master/dummy.ps1
Invoke-Expression $($ScriptFromGitHub.Content)
2
