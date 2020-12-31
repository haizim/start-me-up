VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Strat Me Up"
   ClientHeight    =   3825
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3825
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "..."
      Height          =   255
      Left            =   4200
      TabIndex        =   5
      Top             =   1440
      Width           =   375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CREATE"
      Height          =   495
      Left            =   1440
      TabIndex        =   4
      Top             =   2160
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Top             =   1440
      Width           =   3975
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   3975
   End
   Begin VB.Image Image2 
      Height          =   735
      Left            =   1200
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   690
   End
   Begin VB.Image Image1 
      Height          =   615
      Left            =   2040
      Picture         =   "Form1.frx":525AE
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Application Location :"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Startup Name :"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Sub Command1_Click()
If (Text1.Text <> "") And (Text2.Text <> "") Then
cr "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\" & Text1.Text, Text2.Text
MsgBox "Startup created", , Me.Caption
Else
MsgBox "Please complete all forms", , Me.Caption
End If
End Sub

Private Sub Command2_Click()
frmopen.Show
End Sub

Private Sub Image1_Click()
Dim td As Long
td = ShellExecute(0, "open", "http://technolodeen.blogspot.com", "", "", 1)
End Sub

Private Sub Image2_Click()
Dim wh As Long
'wh=ShellExecute(0, "open", "http://haizim.blogspot.com", "", "", 1)
End Sub
