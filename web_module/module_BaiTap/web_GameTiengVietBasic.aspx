<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="web_GameTiengVietBasic.aspx.cs" Inherits="web_module_module_BaiTap_web_GameTiengVietBasic" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Trò Chơi</title>
    <link href="../../css/Web_TiengVietBasic.css" rel="stylesheet" />
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/fontawesome.css" rel="stylesheet" />
    <link href="/css/fontawesome.min.css" rel="stylesheet" />
    <link href="/css/animate.css" rel="stylesheet" />
    <link href="/css/slick.css" rel="stylesheet" />
    <link href="/css/slick-theme.css" rel="stylesheet" />
    <link href="/css/owl.carousel.min.css" rel="stylesheet" />
    <link href="/css/owl.theme.default.min.css" rel="stylesheet" />
    <link href="/css/nanogallery2.min.css" rel="stylesheet" />
    <link href="/css/magnific-popup.css" rel="stylesheet" />
    <link href="/css/jquery.fancybox.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/style.css" />
    <script src="/admin_js/sweetalert.min.js"></script>
    <!--font-->
    <link href="/css/fontsface.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/f41ccfc950.js" crossorigin="anonymous"></script>
    <!--wowjs-->
    <script src="/js/wow.js"></script>
    <script src="/js/wow.min.js"></script>
    <!--slide-->
    <script src="/js/jquery-3.4.1.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <!-- -->
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
</head>

<body>
    <form id="form1" runat="server">
        <div class="main__tiengvietbasic">
            <div class="container">
                <h4 class="tiengvietbasic__heading display-4">Bài học vần ep và êp</h4>
                <%--<h4 class="math__title"><span>1</span>Điền vào chỗ trống :</h4>--%>
                <div class="row">
                    <p class="tiengvietbasic__title"><span>1)&nbsp;</span>Hãy điền từ ep hoặc êp </p>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">Cá ch
                            <input class="input__tiengvietbasic" id="txtread" runat="server"  type="text" name="name" value="" /></span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">Đèn x
                            <input class="input__tiengvietbasic" id="txtread1" runat="server" type="text" name="name" value="" /></span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">B<input class="input__tiengvietbasic" id="txtread2" runat="server" style="<%=mau2%>" type="text" name="name" value="" />
                                lửa</span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">Xinh đ
                            <input class="input__tiengvietbasic" type="text" id="txtread3" runat="server" style="<%=mau3%>" name="name" value="" /></span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">Lễ ph
                            <input class="input__tiengvietbasic" type="text" id="txtread4" runat="server" name="name" value="" /></span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">X<input class="input__tiengvietbasic" id="txtread5" runat="server" type="text" name="name" value="" />
                                hàng
                            </span>
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">Thu h
                            <input class="input__tiengvietbasic" id="txtread6" runat="server" type="text" name="name" value="" /></span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">Sao ch
                            <input class="input__tiengvietbasic" id="txtread7" runat="server" type="text" name="name" value="" /></span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">Sắp x
                            <input class="input__tiengvietbasic" id="txtread8" runat="server" type="text" name="name" value="" /></span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">Xôi n
                            <input class="input__tiengvietbasic" id="txtread9" runat="server" type="text" name="name" value="" /></span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-6">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">H<input class="input__tiengvietbasic" id="txtread10" runat="server" type="text" name="name" value="" />
                                hòi
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-12">
                        <div class="tiengvietbasic__box">
                            <span class="tiengvietbasic__content">T<input class="input__tiengvietbasic" id="txtread11" runat="server" type="text" name="name" value="" />
                                tin
                            </span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <p class="tiengvietbasic__title"><span>2)&nbsp;</span>Các em hãy nghe đoạn văn sau và điền từ ô trống:  <a href="#" onclick="myListen()"><i class="fas fa-volume-up"></i></a></p>
                    <div class="baitap2">
                        <p>Việt nam đất nước ta ơi</p>
                        <p>Mênh mông biển lúa đâu trời đ<input class="input__tiengvietbasic2" id="txtlisten" runat="server" type="text" name="name" value="" />
                            hơn</p>
                        <p>Cánh cò bay lả dập dờn</p>
                        <p>Mây mờ che đỉnh Trường Sơn sớm chiều</p>

                    </div>

                </div>

                <div class="literature__btn">
                    <a href="#" class="btn btn-success" runat="server" id="btnFinish" type="submit" onserverclick="btnHoanthanh_ServerClick">Hoàn Thành</a>
                </div>

            </div>
        </div>
    </form>
    <audio id="listen" src="../../musicsVietNhat/TiengViet/ep-êp.mp3" style="display: none;" controls="controls" />
    <script>
        function myListen() {
            var audio = document.getElementById("listen");
            audio.play();
        }

    </script>
</body>

</html>
