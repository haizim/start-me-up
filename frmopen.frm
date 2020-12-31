VERSION 5.00
Begin VB.Form frmopen 
   Caption         =   "Open"
   ClientHeight    =   3660
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   3660
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   2400
      TabIndex        =   4
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   495
      Left            =   960
      TabIndex        =   3
      Top             =   3120
      Width           =   1215
   End
   Begin VB.FileListBox File1 
      Appearance      =   0  'Flat
      Height          =   2370
      Left            =   2160
      TabIndex        =   2
      Top             =   600
      Width           =   2295
   End
   Begin VB.DirListBox Dir1 
      Appearance      =   0  'Flat
      Height          =   2340
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   1815
   End
   Begin VB.DriveListBox Drive1 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "frmopen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim hw As String
hw = Dir1.Path & "\" & File1.FileName
If File1.FileName <> "" Then
Form1.Text2.Text = hw
Unload Me
Else
MsgBox "Choose the application file", , Form1.Caption
End If
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1.Drive
End Sub

Private Sub Form_Load()
Drive1.Drive = Left(App.Path, 2)
Dir1.Path = App.Path
End Sub
