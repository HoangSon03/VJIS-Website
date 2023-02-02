<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_TrungHoc.aspx.cs" Inherits="web_module_web_TrungHoc" %>

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
    <div class="header-trunghoc">
        <div class="container-fluid">
            <div class="banner-trunghoc">
                <div class="header-title-trunghoc">
                    <h4>Trường Trung Học Cơ Sở & Trung Học Phổ Thông <span>"Việt Nhật"</span></h4>
                </div>
            </div>
        </div>
    </div>
    <section class="section-about-trunghoc">
        <div class="container">
            <div class="about-trunghoc-block">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="title-trunghoc-block">
                            <h3 class="title">
                                <span>Trung Học
                                    <cite>Cơ Sở & Phổ Thông</cite>
                                    Việt Nhật
                                </span>
                            </h3>
                        </div>
                        <div class="about-content-trunghoc">
                            <p>Praesent arcu gravida vehicula est node maecenas loareet morbi a dosis luctus. Urna eget lacinia eleifend praesent luctus a arcu quis facilisis venenatis. Aenean interdum, nibh vitae sodales, magna ante feugiat elit maecenas.</p>
                        </div>
                        <div class="btn-trunghoc-block"><a class="btn btn-default " href="#" title="" target="_self">Read More</a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="testimonial-trunghoc">
        <div class="title-trunghoc-testi">
            <h4>Tại sao nên chọn trường Trung Học Cơ Sở & Trung Học Phổ Thông Việt Nhật </h4>
        </div>
        <div class="content-testi">
            <p>Chương trình giảng dạy Song ngữ độc đáo theo phương pháp giáo dục của Anh sẽ giúp các em chuẩn bị hành trang cho quá trình học tập ở nước ngoài, đồng thời mang lại cơ hội để các em được tìm hiểu về lịch sử, địa lý, văn học, văn hóa và ngôn ngữ Việt Nam.</p>
        </div>
    </div>
    <section class="section-diemnoibat">
        <div class="container">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="about-title-mnbody">
                    <h3>Những điểm nổi bật</h3>
                </div>
            </div>
            <div class="about-diemnoibat">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-image-top">
                                <img class="card-img-top img-thumbnail" src="/images/estut-block-intro.jpg" alt="Card image cap">
                                <%--<span><a href="#"><i class="fas fa-info-circle"></i></a></span>--%>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title"><a href="#">Card title</a></h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                <a href="#" class="btn btn-outline-primary">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-image-top">
                                <img class="card-img-top img-thumbnail" src="/images/blog-5-450x267-908241.jpg" alt="Card image cap">
                                <%--<span><a href="#"><i class="fas fa-info-circle"></i></a></span>--%>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title"><a href="#">Card title</a></h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                <a href="#" class="btn btn-outline-primary">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-image-top">
                                <img class="card-img-top img-thumbnail" src="/images/blog-2-921022.jpg" alt="Card image cap">
                                <%--<span><a href="#"><i class="fas fa-info-circle"></i></a></span>--%>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title"><a href="#">Card title</a></h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                <a href="#" class="btn btn-outline-primary">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-image-top">
                                <img class="card-img-top img-thumbnail" src="/images/teacher.png" alt="Card image cap">
                                <%--<span><a href="#"><i class="fas fa-info-circle"></i></a></span>--%>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title"><a href="#">Card title</a></h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                <a href="#" class="btn btn-outline-primary">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section-slide-bodybottomth">
        <div class="container wow bounceIn" data-wow-delay="0.7s">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="about-title-mnbody">
                        <h3>Trường Học Toàn Cầu</h3>
                    </div>
                </div>
            </div>
            <div class="slide-bodybottom">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                        <div class="slide-autoplay-trunghoc">
                            <div class="image-slide-trunghoc">
                                <img src="/images/blog-03-560x345.jpg" alt="Alternate Text" />
                            </div>
                            <div class="image-slide-trunghoc">
                                <img src="/images/blog-04-560x345.jpg" alt="Alternate Text" />
                            </div>
                            <div class="image-slide-trunghoc">
                                <img src="/images/blog-05-560x345.jpg" alt="Alternate Text" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                        <div class="introduction-trunghoc">
                            <h3>Our staff consists of more than <b>three teachers and one assistant</b> with <b>experience in early childhood care.</b></h3>
                            <p>All staff have access to professional opportunities that include international placement, training and professional development programmes.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="thanhtuu-trunghoc">
        <div class="container">
            <div class="row" id="counter">
                <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                    <div class="counter-trunghoc">
                        <div class="counter-number">
                            <h2 class="counterth" data-count="150">0</h2>
                        </div>
                        <h4 class="title">Giáo Viên &amp; Nhân Viên</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                    <div class="counter-trunghoc">
                        <div class="counter-number">
                            <h2 class="counterth" data-count="2000">0</h2>
                        </div>
                        <h4 class="title">Học Sinh</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                    <div class="counter-trunghoc">
                        <div class="counter-number">
                            <h2 class="counterth" data-count="200">0</h2>
                        </div>
                        <h4 class="title">Lớp Học</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                    <div class="counter-trunghoc">
                        <div class="counter-number">
                            <h2 class="counterth" data-count="5">0</h2>
                        </div>
                        <h4 class="title">Cơ Sở</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="gallery-trunghoc">
        <div class="row wow fadeInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="about-title-mnbody">
                    <h3>Thư Viện Ảnh</h3>
                </div>
            </div>
        </div>
        <nav class="gallery-trunghoc-block wow fadeInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-glr active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Cơ Sở Vật Chất</a>
                <a class="nav-glr" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Đội Ngũ Giáo Viên</a>
                <a class="nav-glr" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Hoạt Động Của Trường</a>
            </div>
        </nav>
        <div class="gallery-trunghoc-tabshow">
            <div class="container">
                <div class="tab-showtrunghoc wow bounceInDown" data-wow-delay="1s" style="visibility: visible; animation-delay: 1s; animation-name: bounceInDown;">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade active show" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
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
        var a = 0;
        $(window).scroll(function () {

            var oTop = $('#counter').offset().top - window.innerHeight;
            if (a == 0 && $(window).scrollTop() > oTop) {
                $('.counterth').each(function () {
                    var $this = $(this),
                        countTo = $this.attr('data-count');
                    $({
                        countNum: $this.text()
                    }).animate({
                        countNum: countTo
                    },

                        {

                            duration: 7000,
                            easing: 'swing',
                            step: function () {
                                $this.text(Math.floor(this.countNum));
                            },
                            complete: function () {
                                $this.text(this.countNum);
                                //alert('finished');
                            }

                        });
                });
                a = 1;
            }

        });
    </script>
</asp:Content>

