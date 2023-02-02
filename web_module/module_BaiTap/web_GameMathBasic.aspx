<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="web_GameMathBasic.aspx.cs" Inherits="web_module_web_GameMathBasic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--Meta--%>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Trường Liên Cấp Việt Nhật" />
    <meta name="keywords" content="Trường Liên Cấp Việt Nhật and Trường Mầm Non Việt Nhật" />
    <meta name="author" content="Quốc Lượng" />
    <title>Trường Liên Cấp Việt Nhật</title>
    <!-- Fontanwsome -->
    <script src="https://kit.fontawesome.com/f41ccfc950.js" crossorigin="anonymous"></script>

    <!--faicon-->
    <link type="image/png" href="images/favicon.png" rel="shortcut icon" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" />
    <%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />--%>
    <link rel="stylesheet" href="/css/fontawesome.css" />
    <link rel="stylesheet" href="/css/fontawesome.min.css" />
    <link href="/css/animate.css" rel="stylesheet" />
    <link href="/css/slick.css" rel="stylesheet" />
    <link href="/css/slick-theme.css" rel="stylesheet" />
    <link href="/css/owl.carousel.min.css" rel="stylesheet" />
    <link href="/css/owl.theme.default.min.css" rel="stylesheet" />
    <link href="/css/nanogallery2.min.css" rel="stylesheet" />
    <link href="/css/magnific-popup.css" rel="stylesheet" />
    <link href="/css/jquery.fancybox.min.css" rel="stylesheet" />
    <link href="/css/gamebasic.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/style.css" />
    <script src="/admin_js/sweetalert.min.js"></script>
    <link href="css/web_GameGiaiCuu.css" rel="stylesheet" />
    <!--font-->
    <link href="/css/fontsface.css" rel="stylesheet" />



    <!--wowjs-->
    <script src="/js/wow.js"></script>
    <script src="/js/wow.min.js"></script>
    <!--slide-->
    <script src="/js/jquery-3.4.1.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <style>

        </style>
        <script>
            function myStart() {
                swal('các con chờ trong giây lát', '', 'warning');
            }
        </script>
        <div class="main-math">
            <div class="container">
                <div class="back" style="display:inline-block">
                    <a href="../web_module/module_BaiTap/web_DanhSachBaiTap.aspx" class="btn btn-danger">Trở về</a>
                </div>
                <div class="feeling__slide-box math__video">
                    <div id="video-block" class="feeling__stu feeling__stu--math">
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe width="600" height="350" src="https://www.youtube.com/embed/k-qfv3w1rR8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
                <asp:ScriptManager ID="scrBaitap" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="upBaiTap" runat="server">
                    <ContentTemplate>
                        <div style="text-align: center">
                            <a class="math__start" id="btnStart" runat="server" onclick=" myStart();" onserverclick="btnStart_ServerClick" style="text-align: center">Bắt đầu làm bài</a>
                        </div>
                        <div id="dvBaiTap" runat="server">
                            <div class="row math--fl">
                                <h4 class="math__title"><span>1</span>Tính :</h4>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo1_1" runat="server"></asp:Label>
                                        </span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo1_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ1" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo2_1" runat="server"></asp:Label>
                                        </span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo2_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ2" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo3_1" runat="server"></asp:Label></span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo3_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ3" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo4_1" runat="server"></asp:Label></span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo4_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ4" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo5_1" runat="server"></asp:Label></span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo5_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ5" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                            </div>
                            <div class="row math--fl">
                                <%--<h4 class="math__title"><span>1</span>Tính :</h4>--%>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo6_1" runat="server"></asp:Label></span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo6_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ6" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo7_1" runat="server"></asp:Label></span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo7_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ7" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo8_1" runat="server"></asp:Label></span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo8_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ8" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo9_1" runat="server"></asp:Label></span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo9_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ9" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                                <div class="math__box col-4 col-md-2dot4">
                                    <div class="math__content">
                                        <span class="math__content-title">
                                            <asp:Label ID="lblSo10_1" runat="server"></asp:Label></span>
                                        <span class="math__content-calculation">- </span>
                                        <span class="math__content-footer">
                                            <asp:Label ID="lblSo10_2" runat="server"></asp:Label></span>
                                    </div>
                                    <input class="math__input" id="txtKQ10" style="text-align: center" runat="server" type="text" name="name" value="" placeholder="" />
                                </div>
                            </div>
                            <div class="row">

                                <h4 class="math__title"><span>2</span>Tính nhẩm :</h4>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                                    <div class="math__content-two">
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl1_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl1_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ1" runat="server" name="name" value="" />
                                        </p>
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl2_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl2_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ2" runat="server" name="name" value="" />
                                        </p>
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl3_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl3_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ3" runat="server" name="name" value="" />
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                                    <div class="math__content-two">
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl4_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl4_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ4" runat="server" name="name" value="" />
                                        </p>
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl5_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl5_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ5" runat="server" name="name" value="" />
                                        </p>
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl6_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl6_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ6" runat="server" name="name" value="" />
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                                    <div class="math__content-two">
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl7_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl7_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ7" runat="server" name="name" value="" />
                                        </p>
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl8_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl8_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ8" runat="server" name="name" value="" />
                                        </p>
                                        <p class="math__basic-two">
                                            <asp:Label ID="lbl9_1" runat="server"></asp:Label>
                                            -
                                <asp:Label ID="lbl9_2" runat="server"></asp:Label>
                                            =
                            <input type="text" id="txtb2KQ9" runat="server" name="name" value="" />
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <h4 class="math__title"><span>3</span>Viết phép tính thích hợp :</h4>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="math__content-three">
                                        <p class="math__question">
                                            <span>Có : </span>
                                            <asp:Label ID="lblb3_1" runat="server"></asp:Label>
                                            <%=sanpham %>
                                        </p>
                                        <p class="math__question">
                                            <span>Đã ăn : </span>
                                            <asp:Label ID="lblb3_2" runat="server"></asp:Label>
                                            <%=sanpham %>
                                        </p>
                                        <p class="math__question"><span>Còn : </span>... <%=sanpham %> ?</p>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="math__content-three">
                                        <input class="math__answer" id="txtSoHang1" runat="server" type="text" name="name" value="" />
                                        <input class="math__answer" id="txtPhepTinh" runat="server" type="text" name="name" value="-" />
                                        <input class="math__answer" id="txtSoHang2" runat="server" type="text" name="name" value="" />
                                        <input class="math__answer" type="text" name="name" value="=" />
                                        <input class="math__answer" id="txtHieu" runat="server" type="text" name="name" value="" />
                                    </div>
                                </div>
                            </div>
                            <div style="text-align: center">
                                <a class="math__finish" id="btnNopBai" runat="server" onserverclick="btnNopBai_ServerClick">Nộp bài</a>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>
</body>
</html>
