Attribute VB_Name = "Module1"
Public Sub cr(h As String, w As String)
Dim hh As Object
On Error Resume Next
Set hh = CreateObject("wscript.shell")
hh.regwrite h, w
End Sub
