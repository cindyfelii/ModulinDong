Imports System.Data.SqlClient

Public Class login1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub login_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        Dim email As String = txtemail.Text
        Dim password As String = txtpass.Text
        Dim auth As Boolean = False
        Dim connectionString As String = "Data Source=LAPTOP-F1OPD03A\SQLEXPRESS;Initial Catalog=projek;Integrated Security=True"
        Dim conn As New SqlConnection(connectionString)
        Dim isAdmin As Boolean = False
        conn.Open()
        Dim comm As New SqlCommand("select * from pengguna where email='" + email + "' and password='" + password + "'", conn)
        Dim reader As SqlDataReader = comm.ExecuteReader
        If reader.HasRows Then
            auth = True
            While reader.Read
                Session("id") = reader.GetInt32(0)
                Session("username") = reader.GetString(1)
                Session("password") = reader.GetString(2)
                Session("email") = reader.GetString(3)
                Session("nama") = reader.GetString(4)
            End While
        End If
        reader.Close()
        conn.Close()
        If Session("email") = "admin@pcr.ac.id" Then
            isAdmin = True

        End If

        If auth And isAdmin Then
            Response.Redirect("../Content/Admin/examples/dashboard.aspx")
        ElseIf auth And isAdmin = False Then
            Response.Redirect("index.aspx")
        Else
            Response.Redirect("login.aspx")
        End If
    End Sub
End Class