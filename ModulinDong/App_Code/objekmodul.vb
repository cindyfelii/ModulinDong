Public Class objekmodul
    Public Property id As Integer


    Public Property mk As String
    Public Property judulModul As String

    Public Sub New(id As Integer, mk As String, judulModul As String)
        Me.id = id
        Me.mk = mk
        Me.judulModul = judulModul
    End Sub
End Class