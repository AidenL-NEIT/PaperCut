Dim shell, command
command = "powershell.exe -NoLogo -ExecutionPolicy bypass -File CheckAndStartPaperCut.ps1 -ConnectTo " + Arg(0) + " -Cache " + Arg(1)
Set shell = CreateObject("WScript.Shell")
shell.Run command, 0
