<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="web_DanhSachBaiTap.aspx.cs" Inherits="web_module_module_BaiTap_web_DanhSachBaiTap" %>

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
    <style>
        .box_User {
            float: right;
            margin-right: 20px;
        }
    </style>
    <form id="form1" runat="server">
        <div class="wrap-product">
            <div class="box_User">
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user"></i>  Lưu Văn Quyết
                    </button>
                    <%--<button class="icon-top dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user"></i>Lưu Văn Quyết</button>--%>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">LogOut</a>
                        <%-- <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>--%>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <%--<div class="col-lg-3 col-md-3 d-none d-sm-block">
                        <div class="sidebar">
                            <h3 class="sidebar__heading">Tiểu học</h3>
                            <div class="hierarchy">
                                <div class="hierarchy-product">
                                    <h3 class="hierarchy__heading">Cấp 1
                                    </h3>
                                    <ul class="hierarchy__list">
                                        <li class="hierarchy__item">
                                            <a class="hierarchy__link" href="#">Khối 1</a>
                                        </li>
                                        <li class="hierarchy__item">
                                            <a class="hierarchy__link" href="#">Khối 2</a>
                                        </li>
                                        <li class="hierarchy__item">
                                            <a class="hierarchy__link" href="#">Khối 3</a>
                                        </li>
                                        <li class="hierarchy__item">
                                            <a class="hierarchy__link" href="#">Khối 4</a>
                                        </li>
                                        <li class="hierarchy__item">
                                            <a class="hierarchy__link" href="#">Khối 5</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <div class="col-lg-12">
                        <div class="game-product">
                            <div class="container">
                                <h3 class="game-product__heading">Sách toán lớp 1 </h3>
                                <div class="row">
                                    <%--<a href="#check-popup" class="btn btn-primary">check me</a>--%>
                                    <div class="col-lg-2 col-md-4 col-sm-6 col-6">
                                        <a href="/lop-1-toan-tuan-21">
                                            <div class="card-game">
                                                <img class="card-game__img" src="/images/product1.jpg" alt="Alternate Text" />
                                                <h3 class="card-game__heading">Tuần 21-bài 1</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <%-- <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                    <a href="#">
                                        <div class="card-game">
                                            <img class="card-game__img" src="/images/product2.jpg" alt="Alternate Text" />
                                            <h3 class="card-game__heading">Tuần 21-bài 2</h3>
                                        </div>
                                    </a>
                                </div>--%>
                                </div>
                            </div>
                            <div class="container">
                                <h3 class="game-product__heading">Sách tiếng việt lớp 1</h3>
                                <div class="row">
                                    <%--<a href="#check-popup" class="btn btn-primary">check me</a>--%>
                                    <div class="col-lg-2 col-md-4 col-sm-6 col-6">
                                        <a href="#">

                                            <div class="card-game">
                                                <img class="card-game__img" src="/images/product1.jpg" alt="Alternate Text" />
                                                <h3 class="card-game__heading">Tuần 21 - 1</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-sm-6 col-6">
                                        <a href="#">

                                            <div class="card-game">
                                                <img class="card-game__img" src="/images/product1.jpg" alt="Alternate Text" />
                                                <h3 class="card-game__heading">Tuần 21- 2</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-sm-6 col-6">
                                        <a href="#">

                                            <div class="card-game">
                                                <img class="card-game__img" src="/images/product4.jfif" alt="Alternate Text" />
                                                <h3 class="card-game__heading">Tuần 21-3</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-sm-6 col-6">
                                        <a href="#">

                                            <div class="card-game">
                                                <img class="card-game__img" src="/images/product5.jpg" alt="Alternate Text" />
                                                <h3 class="card-game__heading">Tuần 21-4</h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="section-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                        <div class="chinhanh-footer">
                            <h4 class="title-footer">Cơ Sở Liên Cấp Việt Nhật
                            </h4>
                        </div>
                        <div class="tabs-footer">
                            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                <asp:Repeater ID="rpLienHe" runat="server">
                                    <ItemTemplate>
                                        <a class="nav-footer <%#Eval("active") %>" id="<%#Eval("lh_classid2") %>" data-toggle="pill" href="#<%#Eval("lienhe_classid") %>" role="tab" aria-controls="<%#Eval("lienhe_classid") %>" aria-selected="true">
                                            <div class="school-icon"><i class="fas fa-school"></i></div>
                                            &nbsp;<%#Eval("lienhe_title") %><span><i class="far fa-hand-point-right"></i></span></a>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                        <div class="tab-show">
                            <h4 class="title-footer">LIÊN CẤP VIỆT NHẬT</h4>
                            <div class="tab-content" id="v-pills-tabContent">
                                <asp:Repeater runat="server" ID="rpInformation">
                                    <ItemTemplate>
                                        <div class="tab-pane fade show <%#Eval("active") %>" id="<%#Eval("lienhe_classid") %>" role="tabpanel" aria-labelledby="<%#Eval("lh_classid2") %>">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                                    <div class="tab-content">
                                                        <h4><%# Eval("lienhe_title")%></h4>
                                                        <p><%#Eval("lienhe_address") %></p>
                                                        <p>Điện thoại:<%# Eval("lienhe_phone")%></p>
                                                    </div>
                                                    <div class="camket">
                                                        <h4>Liên cấp Việt Nhật cam kết</h4>
                                                        <div>
                                                            <ul>
                                                                <li><span>Đào tạo <b>chất lượng</b></span></li>
                                                                <li><span>Tư vấn <b>nhiệt tình</b></span></li>
                                                                <li><span>Dịch vụ <b>tốt nhất</b></span></li>
                                                                <li><span>Hỗ trợ <b>suốt đời</b></span></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                                    <div class="map">
                                                        <iframe src="<%#Eval("lienhe_map") %>" width="350" height="175" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <%--                                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                                <div class="tab-content">
                                                    <h4>TRƯỜNG MẦM NON VIỆT NHẬT - CƠ SỞ 2</h4>
                                                    <p>231/5 Lê Duẩn, Tân Chính, Thanh Khê, Đà Nẵng </p>
                                                    <p>Điện thoại: 0236 3827 272 </p>
                                                </div>
                                                <div class="camket">
                                                    <h4>Liên cấp Việt Nhật cam kết</h4>
                                                    <div>
                                                        <ul>
                                                            <li><span>Đào tạo <b>chất lượng</b></span></li>
                                                            <li><span>Tư vấn <b>nhiệt tình</b></span></li>
                                                            <li><span>Dịch vụ <b>tốt nhất</b></span></li>
                                                            <li><span>Hỗ trợ <b>suốt đời</b></span></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                                <div class="map">
                                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30674.169156878685!2d108.20539967388724!3d16.0514134390719!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142184a3ae229f5%3A0xf364eb13cba7436f!2zVHLGsOG7nW5nIE3huqdtIG5vbiBWaeG7h3QgTmjhuq10!5e0!3m2!1svi!2s!4v1576159975537!5m2!1svi!2s"
                                                        width="350" height="175" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">...</div>
                                <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
                            </div>
                        </div>
                    </div>



                    <!--menu-->
                    <script>
                        $(window).scroll(function () {
                            if ($(this).scrollTop() > 90) {

                                $('.navigation-wrap').addClass('fixed-top');
                            } else {

                                $('.navigation-wrap').removeClass('fixed-top');
                            }
                        });
                    </script>
                </div>
            </div>
        </section>
        <script src="/js/jquery-1.11.0.min.js"></script>
        <script src="/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="/js/slick.min.js"></script>
        <!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="/js/fontawesome.js"></script>
        <script src="/js/fontawesome.min.js"></script>
        <script src="/js/jquery.nanogallery2.min.js"></script>
        <script src="/js/jquery.magnific-popup.js"></script>
        <script src="/js/jquery.fancybox.min.js"></script>
        <script src="/js/isotop.js"></script>
        <script src="/js/jQuery.loadScroll.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
    </form>
</body>
</html>
