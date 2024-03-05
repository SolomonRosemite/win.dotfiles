Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe /c win-terminal-postprocessor ""$Env:USERPROFILE/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json""", 0, False

