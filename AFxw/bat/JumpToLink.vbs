'使い方: wscript.exe JumpToLink.vbs "$P\$F" "afxwcmd.exeへのフルパス"
set WshShell = WScript.CreateObject("WScript.Shell")
Set objFS = WScript.CreateObject("Scripting.FileSystemObject")

If WScript.Arguments.Count = 2 Then
	If LCase(objFS.GetExtensionName(WScript.Arguments(0))) = "lnk" Then
		LinkPath = WshShell.CreateShortcut(WScript.Arguments(0)).TargetPath
		If objFS.FolderExists(LinkPath) Then
			LinkPath = LinkPath & "\"
		End If
		Return = WshShell.Run(Chr(34) & WScript.Arguments(1) & Chr(34) & " -P" & Chr(34) & LinkPath & Chr(34), 0, FALSE)
	End If
End If

