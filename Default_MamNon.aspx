<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="Default_MamNon.aspx.cs" Inherits="Default_MamNon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" rel="stylesheet" />
    <link href="#" rel="stylesheet" />
    <link href="../../css/Lan.css" rel="stylesheet" />
    <link href="css/Tan.css" rel="stylesheet" />
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
        .block-giatricotloi {
            margin-top: -81px;
            justify-content: center;
            align-items: center;
            display: flex;
            height: 22rem;
            background: linear-gradient(white, rgba(249, 239, 107, 0.5));
        }

        .block-giatri {
            width: 233px;
            background-position: center !important;
            margin-right: 0px;
            background-size: cover !important;
            background-color: white;
            max-width: 216px;
            min-width: 216px;
            background-repeat: no-repeat !important;
            max-height: 127px;
            min-height: 127px;
            transition: all 0.5s ease-in-out;
            margin: 14px 8px 14px 14px;
            box-shadow: 0px 0px 15px 5px #80808045;
            border-radius: unset;
        }

        .title-qtcl {
            display: flex;
            font-weight: 700;
            color: white;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            height: 87px;
            font-size: 22px;
            padding: 5%;
            border-top-right-radius: 10px;
            border-top-left-radius: 10px;
            justify-content: flex-end;
            align-items: center;
        }

        .bg-1 {
            background: url(admin_images/hoc-tap.png);
        }

        .bg-2 {
            background: url(admin_images/trach-nhiem.png);
        }

        .bg-3 {
            background: url(admin_images/tan-tam.png);
        }

        .bg-4 {
            background: url(admin_images/long-biet-on.png);
        }

        ol, ul {
            padding-left: unset;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- slide -->
    <div class="swiper_and_activity">
        <div class="swiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <asp:Repeater ID="rpSlide" runat="server">
                        <ItemTemplate>
                            <img src="<%#Eval("slide_image") %>" alt="">
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
        <%-------------------%>

        <div class="activity_ul">
            <div>
                <div class="activity_li">
                    <div class="cicle_with_days">
                        <div class="cicle"><span>11</span></div>
                        <div class="days">
                            <p>T.07</p>
                        </div>
                    </div>
                    <div class="content_in_activity">
                        <p>11/07-12/07</p>
                        <p><strong>Trip Hè 2022 - Dragon Farm</strong></p>
                    </div>
                </div>
                <div class="activity_li">
                    <div class="cicle_with_days">
                        <div class="cicle"><span>13</span></div>
                        <div class="days">
                            <p>T.07</p>
                        </div>
                    </div>
                    <div class="content_in_activity">
                        <p>13/07-14/07</p>
                        <p><strong>Trip Hè 2022 - History Drama - Nhà Hát Nụ Cười</strong></p>
                    </div>
                </div>
                <div class="activity_li" style="border: none!important;">
                    <div class="cicle_with_days">
                        <div class="cicle"><span>15</span></div>
                        <div class="days">
                            <p>T.07</p>
                        </div>
                    </div>
                    <div class="content_in_activity">
                        <p>13/07-14/07</p>
                        <p><strong>Summer Fair 2022</strong></p>
                    </div>
                </div>
            </div>
        </div>
    </div>







    <%------------------%>
    <%--<div class="block-thongbao" style="display: flex; justify-content: center; background-color: antiquewhite; border-radius: 9px;">
        <div class="heading-gtcl">
        </div>
        <div class="owl-carousel">
            <div class="card-gtcl addClassColor">
                <div class="title-qtcl">
                    <span>Hoang Lan</span>
                </div>
                <div class="card-gtcl-body">
                    <p>
                        lhalhish
                    </p>
                    <img class="ribon" src="admin_images/ribon.png" />
                </div>
            </div>
        </div>
        <input type="text" runat="server" id="txtlength" style="display: none;" />
    </div>--%>
    <!-- --- -->
    <%--<div class="container-1">
        <div class="content-1">
            <div class="row">
                <div class="ct-img-1 col-half">
                    <img src="/assets/img/h1.jpg" alt="">
                </div>
                <div class="ct-text-1 col-half">
                    <h3 class="text-good">Giáo dục cân bằng trái tim và trí tuệ
                    </h3>
                    <h2 class="text-red text-title">Từ tâm huyết Cơ sở giáo dục Việt Nhật được ra đời
                    </h2>
                    <p class="content">
                        Với phương châm “Educate Heart & Mind” – Giáo dục trái tim và Trí tuệ, Hooray Bilingual Kindergarten
                    hy vọng mang đến cho trẻ em Việt Nam một môi trường học tập lý tưởng và là ngôi nhà thứ hai tràn
                    ngập niềm vui trong những năm tháng đầu đời của trẻ. Hooray được ra đời từ tâm huyết của những người
                    làm giáo dục, mong muốn cho trẻ một môi trường tốt nhất để phát triển thể chất và trí tuệ, giúp trẻ
                    hình thành từ sớm các kỹ năng cần thiết để trở thành công dân toàn cầu thế kỷ 21.
                    </p>
                    <a href="#" class="text-white">Xem thêm</a>
                </div>
            </div>


        </div>
    </div>--%>
    <!--giá trị cốt lõi-->
    <div class="block-giatricotloi row">
        <div class="block-giatri bg-1 col-3">
            <div class="title-qtcl">
                <span>HỌC TẬP</span>
            </div>
        </div>
        <div class="block-giatri bg-2 col-3">
            <div class="title-qtcl">
                <span style="width: 59%;">TRÁCH NHIỆM</span>
            </div>
        </div>
        <div class="block-giatri bg-3 col-3">
            <div class="title-qtcl">
                <span>TẬN TÂM</span>
            </div>
        </div>
        <div class="block-giatri bg-4 col-3">
            <div class="title-qtcl">
                <span style="width: 59%;">LÒNG BIẾT ƠN</span>
            </div>
        </div>
    </div>
    <!-- chương trình học -->
    <div class="container-1 background-wave" style="text-align: center; margin-top: -6%;" id="chuongtrinhhoc">
        <h4 class="text-good">Việt nhật tin rằng giáo dục là “vì cuộc sống”
        </h4>
        <br>
        <h1 class="text-red text-title">Chương trình học
        </h1>
        <br>
        <!-- -->
        <div class="content-1">
            <div class="box-cth col-third" style="background-color: #f4cd80;">
                <div>
                    <img src="image/New%20folder/trai-nghiem.jpg" />
                </div>
                <h4>Thẩm mỹ - nghệ thuật
                </h4>
            </div>
            <div class="box-cth col-third" style="background-color: #80e7f4;">
                <div>
                    <img src="image/New%20folder/van-dong.jpg" />
                </div>
                <h4>Vận động thể chất
                </h4>
            </div>
            <div class="box-cth col-third" style="background-color: #f480c0;">
                <div>
                    <img src="image/New%20folder/da-ngoai.jpg" />
                </div>
                <h4>Tham quan, dã ngoại
                </h4>
            </div>
        </div>
        <br />
        <!-- -->
    </div>
    <!-- Ứng dụng học tập -->
    <div class="container-1">
        <div class="content-2">
            <h1 class="text-blue text-title">Ứng dụng học tập
            </h1>
            <br>
            <p>
                Các game trự tuyến dành cho các bạn học sinh mầm non từ 2 đến 5 tuổi được áp dụng duy nhất tại Việt Nhật
                mầm non
            </p>
            <br>
            <div class="content-sub">
                <div class="cts-img">
                    <img src="/assets/img/loi-the/csvc.jpg" alt="">
                </div>
                <div class="cts-text">
                    <h1 class="text-red">HƠN <span class="text-good">100</span> CHỦ ĐỀ GAME TỪ ĐƠN GIẢN ĐẾN NĂNG CAO
                    </h1>
                    <p>luôn mang trong mình nhiều ựu tự hào của hệ thống giáo dục Việt Nhật</p>
                </div>
            </div>
            <div class="content-sub">
                <div class="cts-text">
                    <h1 class="text-red">HƠN <span class="text-good">3</span> TIÊU CHÍ
                    </h1>
                    <p>luôn mang trong mình nhiều ựu tự hào của hệ thống giáo dục Việt Nhật</p>
                </div>
                <div class="cts-img">
                    <img src="/assets/img/loi-the/csvc.jpg" alt="">
                </div>
            </div>
            <div class="content-sub">
                <div class="cts-img">
                    <img src="/assets/img/loi-the/csvc.jpg" alt="">
                </div>
                <div class="cts-text">
                    <h1 class="text-red">GIÁO VIÊN LUÔN DÕI THEO
                    </h1>
                    <p>luôn mang trong mình nhiều ựu tự hào của hệ thống giáo dục Việt Nhật</p>
                </div>
            </div>
            <div class="content-sub">
                <div class="cts-text">
                    <h1 class="text-red">PHỤ HUYNH THẤU HIỂU
                    </h1>
                    <p>luôn mang trong mình nhiều ựu tự hào của hệ thống giáo dục Việt Nhật</p>
                </div>
                <div class="cts-img">
                    <img src="/assets/img/loi-the/csvc.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- tin tức -->
    <div class="container-1 background-wave" style="text-align: center;">
        <h1 class="text-red text-title">Tin tức
        </h1>
        <div class="content-2">
            <div class="slider-tintuc">
                <asp:Repeater ID="rpTinTuc" runat="server">
                    <ItemTemplate>
                        <div class="box-tintuc">
                            <div class="box-img">
                                <img src="<%#Eval("news_image") %>" alt="Alternate Text" />
                            </div>
                            <div class="box-text">
                                <p class="thongtin">
                                    <i class='bx bx-calendar'></i><%#Eval("news_datecreate") %>&ensp;
                            <i class='bx bxs-folder'></i>Giới thiệu 
                                </p>
                                <h3><%#Eval("news_title") %></h3>
                                <p class="content">
                                    <%#Eval("news_summary") %>
                                </p>
                                <%--<a href="#">Xem thêm</a>--%>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <%--<div class="box-tintuc">
                    <div class="box-img">
                        <img src="../../assets/img/loi-the/badd.jpg" alt="Alternate Text" />
                    </div>
                    <div class="box-text">
                        <p class="thongtin">
                            <i class='bx bx-calendar'></i>28/05 &ensp;
                            <i class='bx bxs-folder'></i>Giới thiệu &ensp;
                            <i class='bx bxs-user'></i>Bởi Văn Tuấn VJIS
                        </p>
                        <h3>Bí quyết giúp bé ngoan 1</h3>
                        <p class="content">
                            Là đánh bé thật nhiềuuuuuuuuuuuuuuuuuuuuuuuuu
                             nhiềuuuuuuuuuuuuuuu
                            và nhiềuuuuuuuuuuuuu
                            <a href="#">Xem thêm</a>
                        </p>
                    </div>
                </div>
                <div class="box-tintuc">
                    <div class="box-img">
                        <img src="../../assets/img/loi-the/badd.jpg" alt="Alternate Text" />
                    </div>
                    <div class="box-text">
                        <p class="thongtin">
                            <i class='bx bx-calendar'></i>28/05 &ensp;
                            <i class='bx bxs-folder'></i>Giới thiệu &ensp;
                            <i class='bx bxs-user'></i>Bởi Văn Tuấn VJIS
                        </p>
                        <h3>Bí quyết giúp bé ngoan 1</h3>
                        <p class="content">
                            Là đánh bé thật nhiềuuuuuuuuuuuuuuuuuuuuuuuuu
                             nhiềuuuuuuuuuuuuuuu
                            và nhiềuuuuuuuuuuuuu
                            <a href="#">Xem thêm</a>
                        </p>
                    </div>
                </div>
                <div class="box-tintuc">
                    <div class="box-img">
                        <img src="../../assets/img/loi-the/badd.jpg" alt="Alternate Text" />
                    </div>
                    <div class="box-text">
                        <p class="thongtin">
                            <i class='bx bx-calendar'></i>28/05 &ensp;
                            <i class='bx bxs-folder'></i>Giới thiệu &ensp;
                            <i class='bx bxs-user'></i>Bởi Văn Tuấn VJIS
                        </p>
                        <h3>Bí quyết giúp bé ngoan 1</h3>
                        <p class="content">
                            Là đánh bé thật nhiềuuuuuuuuuuuuuuuuuuuuuuuuu
                             nhiềuuuuuuuuuuuuuuu
                            và nhiềuuuuuuuuuuuuu
                            <a href="#">Xem thêm</a>
                        </p>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
    <div class="row">
        <!--Đội ngũ giáo viên-->
        <div class="col-6" style="text-align: center;">
            <%--<h1 class="text-good text-title">Đội ngũ giáo viên
            </h1>--%>
            <div class="container-doingu">
                <div class="container-img">
                    <asp:Repeater ID="rpGiaoVien" runat="server">
                        <ItemTemplate>
                            <div class="box-img">
                                <img src="<%#Eval("giaovien_image") %>" alt="">
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <!--Cảm nhận-->
        <div class="col-6" style="text-align: center;">
            <%-- <h1 class="text-blue text-title">Cảm nhận về VJIS
            </h1>--%>
            <div class="slider-camnhan">
                <asp:Repeater ID="rpCamNhan" runat="server">
                    <ItemTemplate>
                        <div class="box-camnhan">
                            <div class="box-img">
                                <img src="<%#Eval("camnhan_image") %>" />
                            </div>
                            <div class="box-text">
                                <span style="font-weight: 700;"><%#Eval("camnhan_namephuhuynh") %></span>
                                <q><%#Eval("camnhan_content") %>
                                </q>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <%-- Time line album--%>
    <h1 class="text-red text-title" style="margin-left: 10px">Hình ảnh hoạt động 
    </h1>
    <div class="time-line background-wave" style="overflow: hidden">
        <div class="controls" data-direction="-1"></div>
        <div class="controls next" data-direction="1"></div>
        <div class="dates-overflow">
            <div class="dates-wrap">
                <div class="date active">
                    <div class="date-year">
                        <p>27/5/2022</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image">
                            <img src="../../assets/img/be-giang.jpg" />
                        </div>
                        <div class="date-text">Bế giảng năm học 2021-2022</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date-year">
                        <p>17/5/2022</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image">
                            <img src="../../assets/img/h1.jpg" />
                        </div>
                        <div class="date-text">Hoạt động trải nghiệm hái ngô</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date-year">
                        <p>26/4/2022</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image">
                            <img src="../../assets/img/giao-duc-mam-non-6.jpg" />
                        </div>
                        <div class="date-text">Cuộc thi vẽ "Họa sĩ nhí"</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date-year">
                        <p>2/4/2022</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image"></div>
                        <div class="date-text">Lễ hội hoa anh đào</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date-year">
                        <p>1979</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image"></div>
                        <div class="date-text">lorem ipsum</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date-year">
                        <p>1979</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image"></div>
                        <div class="date-text">lorem ipsum</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date-year">
                        <p>1979</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image"></div>
                        <div class="date-text">lorem ipsum</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date-year">
                        <p>1979</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image"></div>
                        <div class="date-text">lorem ipsum</div>
                    </div>
                </div>
                <div class="date">
                    <div class="date-year">
                        <p>1979</p>
                    </div>
                    <div class="date-content">
                        <div class="date-image"></div>
                        <div class="date-text">lorem ipsum</div>
                    </div>
                </div>
            </div>
        </div>
        <a href="#" style="margin-top: 22rem;">Xem thêm</a>
    </div>

    <!--Đăng ký học-->
    <%--<div class="container-1" style="text-align: center">
        <div class="content-dkh">
            <h1 class="text-red text-title">Bạn muốn trải nghiệm phương pháp học độc đáo của VJIS? </h1>
            <div>
                <input type="text" placeholder="Họ tên" name="name" value="" />
                <input type="text" placeholder="Số điện thoại" name="name" value="" />
            </div>
            <button>Gửi đi <i class='bx bx-mail-send'></i></button>
        </div>
    </div>--%>
    <!--Đăng ký học-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <%--<script src="../../assets/js/slick.min.js"></script>--%>
    <script type="text/javascript">
        $('.slider-tintuc').slick({
            autoplay: true,
            autoplaySpeed: 8000,
            speed: 2000,
            slidesToShow: 3,
            slidesToScroll: 1
        });
        $('.slider-camnhan').slick({
            autoplay: true,
            autoplaySpeed: 8000,
            speed: 2000,
            centerMode: true,
            centerPadding: '10%',
            slidesToShow: 1,

        });
        /*if ($(window).width() >= 1024) {
            $('.slider-tintuc').slick({
                slidesToShow: 3,
                slidesToScroll: 1
            });
        } else {
            $('.slider-tintuc').slick();
        }*/
    </script>
    `

    <script>
        $(window).on("load", function () {
            var dateWidth = $(".date").width(),
                activeDate = 0,
                noDates = $(".date").length;

            function changeDate(a) {
                if (a < 0) {
                    activeDate = 0;
                    return;
                }

                if (a > noDates - 1) {
                    activeDate = noDates - 1;
                    return;
                }

                $(".date")
                    .removeClass("active sibling");

                $(".date:nth-child(" + (a + 1) + ")")
                    .addClass("active");

                $(".date.active")
                    .prev("div")
                    .addClass("sibling");

                $(".dates-wrap").css(
                    "transform",
                    "translateX(" + -dateWidth * a + "px)"
                );
            }

            $(".date").on('click', function () {
                var chosen = $(this).index();

                if (chosen === activeDate) {
                    return;
                }

                activeDate = chosen;
                changeDate(activeDate);
            });

            $(".controls").on("click", function () {
                var direction = parseInt($(this).attr("data-direction"), 10);

                activeDate += direction;
                changeDate(activeDate);

            });
        });
    </script>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</asp:Content>

