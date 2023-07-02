Set objShell = CreateObject("WScript.Shell")
objShell.Run "pwsh.exe /c komorebic start --await-configuration", 0, False
rem objShell.Run "pwsh.exe /c komorebic start --await-configuration && python C:\Users\TestUser\.yasb\yasb\src\main.py", 0, False

