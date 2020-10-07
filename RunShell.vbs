Dim shell, command
command = "powershell.exe -nologo -ExecutionPolicy bypass -file CheckAndStartPaperCut.ps1 " + Arg(0) + " " + Arg(1)
Set shell = CreateObject("WScript.Shell")
shell.Run command, 0
