<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="smtr2.aspx.vb" Inherits="ModulinDong.smtr2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Modulin Dong!!</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Arsha - v2.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us section-bg">
        <div class="container-fluid" data-aos="fade-up">

            <div class="row">

                <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch  order-2 order-lg-1">

                    <div class="content">
                        <h3>SEMESTER <strong>2</strong></h3>
                    </div>

                  
<form id="form1" runat="server">
            <div class="categories-area section-padding30">
                <div class="container">
                    <div class="row justify-content-sm-center">
                        <div class="cl-xl-7 col-lg-8 col-md-10">
                            <!-- Section Tittle -->
                            <div class="section-tittle text-center mb-70">
                                <h2>Kumpulan Modul</h2>
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-3 col-md-4 col-sm-4">
                                    <div class="single-cat mb-50">
                                        <div class="cat-cap">
                                            <asp:Image ID="Image1" runat="server" CssClass="img-fluid" Width="1000" ImageUrl='assets/img/paper.png' />
                                            <h5><a href="#"><%# Eval("judulModul")%> </a></h5>
                                            <p><%# Eval("mk")%> </p>
                                            <asp:LinkButton runat="server" OnClick="lihatfile" CommandArgument='<%# Eval("kodeModul") %>'>Lihat</asp:LinkButton>
                                            <asp:LinkButton runat="server" OnClick="downloadfile" CommandArgument='<%# Eval("kodeModul") %>'>Download</asp:LinkButton>
                                           
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:Literal ID="ltEmbed" runat="server" />
                        </div>
                        </form>
                        <br />
                        <br />
                        <br />
                    </div>
                <center>
                <a href="smtr.aspx" class="btn-learn-more">Back</a>
                    </center>
                </div>
               </div>
        
    </section>
    <!-- End Why Us Section -->
</body>
<!-- Vendor JS Files -->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/venobox/venobox.min.js"></script>
<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="assets/vendor/aos/aos.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
</body>
</html>
