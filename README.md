$ScriptFromGitHub = Invoke-WebRequest https://github.com/ViktorNossredna/install/blob/master/dummy.ps1
Invoke-Expression $($ScriptFromGitHub.Content)
2
