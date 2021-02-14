Imports System.Data.SqlClient
Imports System.IO

Public Class insert
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnTambah_Click(sender As Object, e As EventArgs) Handles btnTambah.Click
        Dim semester As String = smtr.Text
        Dim matakuliah As String = mk.Text
        Dim judulmodull As String = judulModul.Text
        Dim pilihmodull As Stream = pilihModul.PostedFile.InputStream

        Dim binaryReaderModul As New BinaryReader(pilihmodull)

        Dim byteModul As Byte() = binaryReaderModul.ReadBytes(DirectCast(pilihmodull.Length, Long))

        Dim constString As String = "Data Source=LAPTOP-F1OPD03A\SQLEXPRESS;Initial Catalog=projek;Integrated Security=True"
        Using con As New SqlConnection(constString)
            Dim query As String = "INSERT INTO tabelModul1 values (@smtr, @mk, @judulModul, @pilihModul)"
            Using cmd As New SqlCommand(query)
                cmd.Connection = con
                cmd.Parameters.Add("@smtr", SqlDbType.VarChar).Value = semester
                cmd.Parameters.Add("@mk", SqlDbType.VarChar).Value = matakuliah
                cmd.Parameters.Add("@judulModul", SqlDbType.VarChar).Value = judulmodull
                cmd.Parameters.Add("@pilihModul", SqlDbType.Binary).Value = byteModul

                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using



    End Sub
End Class