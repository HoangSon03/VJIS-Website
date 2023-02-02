<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_MamNon.aspx.cs" Inherits="web_module_web_MamNon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="higlobal" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hislider" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibelowtop" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <div class="section-slide">
        <!--<div class="single-item">
            <div><img src="/images/Giáo viên của TOPICA NATIVE.png" alt="Alternate Text" /></div>
            <div><img src="/images/luyen giao tiep 16h.png" alt="Alternate Text" /></div>
            <div><img src="/images/Lợi ích từ TOPICA NATIVE.png" alt="Alternate Text" /></div>
        </div>-->
        <div class="owl-carousel owl-theme">
            <div class="item">
                <img src="/images/slide1.jpg" alt="Alternate Text" />
            </div>
            <div class="item">
                <img src="/images/slide2.jpg" alt="Alternate Text" />
            </div>
            <div class="item">
                <img src="/images/slide3.jpg" alt="Alternate Text" />
            </div>

        </div>
        <!--<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="/images/Giáo viên của TOPICA NATIVE.png" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/images/Lợi ích từ TOPICA NATIVE.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/images/luyen giao tiep 16h.png" alt="Third slide">
                </div>
            </div>

        </div>-->
    </div>
    <!--Form DK-->
    <div id="form-dang-ky" class="wow bounceInLeft" data-wow-delay="1s">
        <div class="title-form-dang-ky">
            <h4>ĐĂNG KÝ NHẬN TƯ VẤN MIỄN PHÍ</h4>
        </div>
        <div class="content-form-dang-ky">
            <p>
                (Vui lòng để lại thông tin chính xác.<br />
                Tư vấn viên sẽ gọi điện lại cho bạn sau 3 - 5 ngày)
            </p>
            <p class="chuongtrinh"><strong>* Chương trình hấp dẫn của Việt Nhật </strong></p>
            <div class="form-group">
                <div class="icon-form-dang-ky">
                    <i class="fas fa-user-alt"></i>
                </div>
                <div class="input-form-dang-ky">
                    <input type="text" name="name" id="name" class="form-control" placeholder="Họ và tên" />
                </div>
            </div>
            <div class="form-group">
                <div class="icon-form-dang-ky">
                    <i class="fas fa-envelope"></i>
                </div>
                <div class="input-form-dang-ky">
                    <input type="email" name="email" id="email" class="form-control" placeholder="Email" />
                </div>
            </div>
            <div class="form-group">
                <div class="icon-form-dang-ky">
                    <i class="fas fa-phone-alt"></i>
                </div>
                <div class="input-form-dang-ky">
                    <input type="text" name="phone" id="phone" class="form-control" placeholder="Số điện thoại" />
                </div>
            </div>
            <div class="form-group">
                <div class="icon-form-dang-ky">
                    <i class="fas fa-question-circle"></i>
                </div>
                <div class="input-form-dang-ky">
                    <select class="custom-select">
                        <option selected disabled>--- Chọn độ tuổi ---</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                </div>
            </div>
            <p><i>* Ưu đãi lên tới 30% học phí khi đăng ký qua website</i></p>
            <p>Liên Việt cam kết bảo mật thông tin cá nhân của bạn. Xem chi tiết điều khoản bảo mật <a href="#" target="_blank">tại đây</a></p>
            <div class="button-form-dang-ky">
                <a class="btn btn-danger" href="#">Nhận Thông Tin Ngay</a>
            </div>
            <div class="lienhe">
                <div class="phone">
                    <p><span><i class="fas fa-phone-alt"></i></span>0336210662</p>
                </div>
                <div class="markt">
                    <p><span><i class="fas fa-envelope-open"></i></span>marketing1.lv</p>
                </div>
            </div>
        </div>
    </div>
    <!--End FormDK-->
    <!--End Slide-->
    <!--Form DK-->
    <!--End FormDK-->
    <!--End Slide-->
    <div class="header-mamnon wow fadeInDown" data-wow-delay="0.3s">
        <div class="container-fluid">
            <div class="banner-mamnon">
                <div class="header-title-mamnon">
                    <h4>Mầm Non <span>"Việt Nhật"</span></h4>
                </div>
            </div>
        </div>
    </div>
    <section class="section-mamnon-header">
        <div class="container">
            <div class="about-mamnon-header wow bounceIn" data-wow-delay="1s">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="about-mamnon-block">
                            <div class="about-title-mamnon">
                                <h4>Mầm Non Việt Nhật</h4>
                            </div>
                            <div class="about-content-mamnon">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. luptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. luptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                            </div>
                            <div class="about-more-mamnon">
                                <a class="btn btn-purple" href="#">Xem Thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="about-image-mamnon">
                            <img src="/images/about-kindergarten.png" alt="Alternate Text" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <section class="section-mamnon-body">
        <div class="container">
            <div class="row wow fadeInUp" data-wow-delay="0.5s">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="about-title-mnbody ">
                        <h3>Phòng & Lớp Học</h3>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="content-mnbody-top">
                        <p>Elipsis magna a terminal nulla elementum morbi elite forte maecenas est magna vehicula est node maecenas. Praesent arcu gravida vehicula est node maecenas loareet morbi a dosis luctus. Urna eget lacinia eleifend praesent luctus a arcu quis facilisis venenatis.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="content-mnbody-top">
                        <p>Elipsis magna a terminal nulla elementum morbi elite forte maecenas est magna vehicula est node maecenas. Praesent arcu gravida vehicula est node maecenas loareet morbi a dosis luctus. Urna eget lacinia eleifend praesent luctus a arcu quis facilisis venenatis. Elipsis magna a terminal nulla elementum morbi elite forte maecenas est magna vehicula est node maecenas.</p>
                    </div>
                </div>
            </div>
            <div class="space"></div>
            <div class="row wow bounceIn" data-wow-delay="1s">
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="about-block-mnbody">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="image-mnbody">
                                    <img class="rounded" src="/images/babies.jpg" alt="Alternate Text" />
                                    <div class="title-image-mnbody">
                                        <span class="months-old">0-24
                                            <br />
                                            Months Old</span>
                                        <span class="class-size">9
                                                <br />
                                            Class Size</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="about-content-mnbody">
                                    <div class="title-mnbody">
                                        <h4>Daisy Room</h4>
                                    </div>
                                    <div class="content-mnbody-block">
                                        <p>Elipsis magna a terminal nulla elementum morbi elite forte.</p>
                                    </div>
                                    <div class="more-mnbody">
                                        <a class="btn btn-mnbody" href="#">Xem Thêm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="about-block-mnbody one">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="image-mnbody">
                                    <img src="/images/class-size-img.jpg" alt="Alternate Text" />
                                    <div class="title-image-mnbody">
                                        <span class="months-old">0-72
                                            <br />
                                            Months Old</span>
                                        <span class="class-size">15
                                                <br />
                                            Class Size</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="about-content-mnbody">
                                    <div class="title-mnbody">
                                        <h4>Butterfly Room</h4>
                                    </div>
                                    <div class="content-mnbody-block">
                                        <p>Elipsis magna a terminal nulla elementum morbi elite forte.</p>
                                    </div>
                                    <div class="more-mnbody">
                                        <a class="btn btn-mnbody" href="#">Xem Thêm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="about-block-mnbody two">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12  ">
                                <div class="image-mnbody">
                                    <img src="/images/kids.jpg" alt="Alternate Text" />
                                    <div class="title-image-mnbody">
                                        <span class="months-old">24-48
                                            <br />
                                            Months Old</span>
                                        <span class="class-size">12
                                                <br />
                                            Class Size</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="about-content-mnbody">
                                    <div class="title-mnbody">
                                        <h4>Little People Room</h4>
                                    </div>
                                    <div class="content-mnbody-block">
                                        <p>Elipsis magna a terminal nulla elementum morbi elite forte.</p>
                                    </div>
                                    <div class="more-mnbody">
                                        <a class="btn btn-mnbody" href="#">Xem Thêm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="about-block-mnbody three">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12  ">
                                <div class="image-mnbody">
                                    <img src="/images/afterschool.jpg" alt="Alternate Text" />
                                    <div class="title-image-mnbody">
                                        <span class="months-old">48-72
                                            <br />
                                            Months Old</span>
                                        <span class="class-size">13
                                                <br />
                                            Class Size</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="about-content-mnbody">
                                    <div class="title-mnbody">
                                        <h4>After School Club</h4>
                                    </div>
                                    <div class="content-mnbody-block">
                                        <p>Elipsis magna a terminal nulla elementum morbi elite forte.</p>
                                    </div>
                                    <div class="more-mnbody">
                                        <a class="btn btn-mnbody" href="#">Xem Thêm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section-slide-bodybottom">
        <div class="container wow bounceIn" data-wow-delay="0.7s">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="about-title-mnbody">
                        <h3>Nổi Bật</h3>
                    </div>
                </div>
            </div>
            <div class="slide-bodybottom">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                        <div class="slide-autoplay-mamnon">
                            <div class="image-slide-mamnon">
                                <img src="/images/blog-03-560x345.jpg" alt="Alternate Text" />
                            </div>
                            <div class="image-slide-mamnon">
                                <img src="/images/blog-04-560x345.jpg" alt="Alternate Text" />
                            </div>
                            <div class="image-slide-mamnon">
                                <img src="/images/blog-05-560x345.jpg" alt="Alternate Text" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                        <div class="introduction-mamnon">
                            <h3>Our staff consists of more than <b>three teachers and one assistant</b> with <b>experience in early childhood care.</b></h3>
                            <p>All staff have access to professional opportunities that include international placement, training and professional development programmes.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="testimonial">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                    <div class="counter-mamnon">
                        <div class="counter-number">
                            <h2 class="counter">27</h2>
                        </div>
                        <h4 class="title">Giáo Viên & Nhân Viên</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                    <div class="counter-mamnon">
                        <div class="counter-number">
                            <h2 class="counter">250</h2>
                        </div>
                        <h4 class="title">Học Sinh</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                    <div class="counter-mamnon">
                        <div class="counter-number">
                            <h2 class="counter">34</h2>
                        </div>
                        <h4 class="title">Lớp Học</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                    <div class="counter-mamnon">
                        <div class="counter-number">
                            <h2 class="counter">12</h2>
                        </div>
                        <h4 class="title">Khu Vui Chơi</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="gallery-mamnon">
        <div class="row wow fadeInUp" data-wow-delay="0.5s">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="about-title-mnbody">
                    <h3>Thư Viện Ảnh</h3>
                </div>
            </div>
        </div>
        <nav class="gallery-mamnon-block wow fadeInUp" data-wow-delay="0.5s">
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-glr  active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Cơ Sở Vật Chất</a>
                <a class="nav-glr " id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Đội Ngũ Giáo Viên</a>
                <a class="nav-glr " id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Hoạt Động Của Trường</a>
            </div>
        </nav>
        <div class="gallery-mamnon-tabshow">
            <div class="container">
                <div class="tab-showmamnon wow bounceInDown" data-wow-delay="1s">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <div class="row">
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/detail2.png" title="Việt Nhật">
                                            <img src="/images/detail2.png" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/detail1.png" title="Việt Nhật">
                                            <img src="/images/detail1.png" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/Chris Foyle.jpg" title="Việt Nhật">
                                            <img src="/images/Chris Foyle.jpg" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/Chris Foyle.jpg" title="Việt Nhật">
                                            <img src="/images/Chris Foyle.jpg" alt="Alternate Text"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                            <div class="row">
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/detail2.png" title="Việt Nhật">
                                            <img src="/images/detail2.png" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/detail3.png" title="Việt Nhật">
                                            <img src="/images/detail3.png" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/Chris Foyle.jpg" title="Việt Nhật">
                                            <img src="/images/Chris Foyle.jpg" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/Chris Foyle.jpg" title="Việt Nhật">
                                            <img src="/images/Chris Foyle.jpg" alt="Alternate Text"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                            <div class="row">
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/Chris Foyle.jpg" title="Việt Nhật">
                                            <img src="/images/Chris Foyle.jpg" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/Chris Foyle.jpg" title="Việt Nhật">
                                            <img src="/images/Chris Foyle.jpg" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/Chris Foyle.jpg" title="Việt Nhật">
                                            <img src="/images/Chris Foyle.jpg" alt="Alternate Text"></a>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-2 col-12">
                                    <div class="image-block img-thumbnail">
                                        <a href="/images/Chris Foyle.jpg" title="Việt Nhật">
                                            <img src="/images/Chris Foyle.jpg" alt="Alternate Text"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="more-mnbody-gallery">
                            <a class="btn btn-mnbody" href="#">Xem Thêm Về Thư Viện Ảnh</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
    <script>
        jQuery(window).scroll(startCounter);
        function startCounter() {
            var hT = jQuery('.testimonial').offset().top,
                hH = jQuery('.testimonial').outerHeight(),
                wH = jQuery(window).height();
            if (jQuery(window).scrollTop() > hT + hH - wH) {
                jQuery(window).off("scroll", startCounter);
                jQuery('.counter').each(function () {
                    var $this = jQuery(this);
                    jQuery({ Counter: 0 }).animate({ Counter: $this.text() }, {
                        duration: 4000,
                        easing: 'swing',
                        step: function () {
                            $this.text(Math.ceil(this.Counter) + '');
                        }
                    });
                });
            }
        }
    </script>
</asp:Content>

