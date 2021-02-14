Imports System.Data.SqlClient
Imports System.IO

Public Class smtr3
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Public itemmodul
    Public listmodul As List(Of objekmodul) = New List(Of objekmodul)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            Try
                con.ConnectionString = "Data Source=LAPTOP-F1OPD03A\SQLEXPRESS;Initial Catalog=projek;Integrated Security=True"
                con.Open()
                cmd.Connection = con
                cmd.CommandText = "Select * from tabelModul1 where smtr = '3'"

                Dim sda As SqlDataAdapter = New SqlDataAdapter(cmd.CommandText, con)
                Dim dt As DataTable = New DataTable()
                sda.Fill(dt)
                Repeater1.DataSource = dt
                Repeater1.DataBind()

            Catch ex As Exception

            End Try

        End If
    End Sub
    Protected Sub lihatfile(sender As Object, e As EventArgs)
        Dim id As Integer = Integer.Parse(TryCast(sender, LinkButton).CommandArgument)
        Dim embed As String = "<object data=""{0}{1}"" type=""application/pdf"" width=""500px"" height=""600px"">"
        embed += "If you are unable to view file, you can download from <a href = ""{0}{1}&download=1"">here</a>"
        embed += " or download <a target = ""_blank"" href = ""http://get.adobe.com/reader/"">Adobe PDF Reader</a> to view the file."
        embed += "</object>"
        ltEmbed.Text = String.Format(embed, ResolveUrl("~/FileVB.ashx?Id="), id)
    End Sub

    Protected Sub downloadfile(sender As Object, e As EventArgs)
        Dim id As Integer = Integer.Parse(TryCast(sender, LinkButton).CommandArgument)
        Dim bytes As Byte()
        Dim fileName As String, contentType As String
        Dim constr As String = "Data Source=LAPTOP-F1OPD03A\SQLEXPRESS;Initial Catalog=projek;Integrated Security=True"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand()
                cmd.CommandText = "SELECT pilihModul FROM tabelModul1 WHERE kodeModul=@Id"
                cmd.Parameters.AddWithValue("@Id", id)
                cmd.Connection = con
                con.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    sdr.Read()
                    bytes = DirectCast(sdr("pilihModul"), Byte())
                End Using
                con.Close()
            End Using
        End Using
        Response.Clear()
        Response.Buffer = True
        Response.Charset = ""
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.ContentType = contentType
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName)
        Response.BinaryWrite(bytes)
        Response.Flush()
        Response.End()
    End Sub
End Class