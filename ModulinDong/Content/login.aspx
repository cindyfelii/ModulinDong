<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="ModulinDong.login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Modulin Dong!!</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">


    <link href="assets/css/style2.css" rel="stylesheet">
</head>
<body>
    <div class="container bg-white pb-5">
        <div class="row d-flex justify-content-start align-items-center mt-sm-5">
            <div class="col-lg-5 col-10">
                <div id="circle"></div>
                <div class="pb-5">
                    <img src="assets/img/login.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-4 offset-lg-2 col-md-6 offset-md-3">
                <div class="pt-4">
                    <h6><span class="fa fa-superpowers text-primary px-md-2"></span>Modulin Dong!!</h6>
                </div>
                <div class="mt-3 mt-md-5">
                    <h5>Log in to your account</h5>
                    <form id="form1" runat="server">
                        <div class="d-flex flex-column pb-3">
                            <label for="email">Email Address</label>&nbsp;
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="d-flex flex-column pb-3">
                            <label for="password">Password</label>&nbsp;
                            <asp:TextBox ID="txtpass" runat="server" CssClass="form-control"></asp:TextBox>
                            <br />
                            <label for="password">
                            <br />
                            <asp:Button ID="btnlogin" runat="server" CssClass="form-control" BackColor="Salmon" Text="Login" ForeColor="White" />
                            </label>
                        </div>
                        <a href="index.aspx">
                            &nbsp;</a></form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
