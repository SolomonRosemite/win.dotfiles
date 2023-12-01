Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe /c komorebic start -c ""$Env:USERPROFILE\.config\komorebi\komorebi.json"" --whkd", 0, False

rem objShell.Run "powershell.exe /c komorebic start --await-configuration", 0, False
rem objShell.Run "powershell.exe /c komorebic start --await-configuration && python C:\Users\TestUser\.yasb\yasb\src\main.py", 0, False

