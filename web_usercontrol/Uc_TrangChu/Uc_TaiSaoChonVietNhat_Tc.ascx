<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_TaiSaoChonVietNhat_Tc.ascx.cs" Inherits="web_usercontrol_Uc_TrangChu_Uc_TaiSaoChonVietNhat_Tc" %>
<script src="../../js/jquery-1.11.0.min.js"></script>
<script src="../../js/slick.min.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<img src="../../images/trangchu/We_08.gif" />
<style>
    .block-taisaochonvietnhat-content {
        font-size: 20px;
        width: 51%;
        height: auto;
        padding-top: 126px;
        display: block;
        padding-left: 79px;
        text-align: left;
    }
</style>
<style>
    .owl-carousel {
        text-align: center
    }
</style>
<%--<section class="section-about">--%>
<div class="container">
    <div class="about-parent">
        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="lua-chon" >
                Điều gì khiến phụ huynh <span style="color: red;">TIN TƯỞNG</span> và <span style="color: red;">LỰA CHỌN</span>
                <br />
                Hệ thống giáo dục Việt Nhật
            </div>
        </div>
        <div class="p-long">
        </div>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs col-lg-12" role="tablist">
            <li class="nav-item-2 col-lg-4 col-md-4 col-sm-12 col-12">
                <a class="box-1 nav-link active" data-toggle="tab" href="#home">Chương trình học và đào tạo
                    có tính kế thừa </a>
            </li>
            <li class="nav-item-2 col-lg-4 col-md-4 col-sm-12 col-12">
                <a class="box-2 nav-link" data-toggle="tab" href="#menu1">Môi trường học tập
                    
                    lý tưởng năng động</a>
            </li>
            <li class="nav-item-2 col-lg-4 col-md-4 col-sm-12 col-12">
                <a class="box-3 nav-link" data-toggle="tab" href="#menu2">Cơ sở vật chất
                    khang trang hiện đại</a>
            </li>
        </ul>
        <style>
            .box-1,
            .box-2,
            .box-3 {
                font-weight: 600;
                padding: 7% 0 6% 0 !important;
                text-align: center;
                border: 1px solid #0000002b;
                border-bottom: none;
                height: 72px;
                width: 105%;
                font-size: 100%;
                background-color: #efa920;
            }
            .box-1,
            .box-2,
            .box-3 ::before {
                color: red;
            }
            
            /* @media(max-width: 576px) {
                .box-1,
                .box-2,
                .box-3 {
                    font-size: 80%;
                }
            }

            @media(max-width: 330px) {
                .box-1,
                .box-2,
                .box-3 {
                    font-size: 60%;
                }
            }*/

            /*.nav-tabs li a:hover {
                background-color:  !important;
                color: white !important;
            }*/
        </style>
        <!-- Tab panes -->
        <div class="tab-content">
            <div id="home" class="container tab-pane active" style="border: 1px solid #ddd; padding-bottom: 20px;">
                <br>
                <%--slide 1--%>
                <div class="slider owl-carousel owl-theme">
                    <asp:Repeater ID="rpSlide1" runat="server">
                        <ItemTemplate>
                            <div class="item" data-hash="<%#Eval("taisaochonvietnhat_id") %>">
                                <a href="dieu-gi-khien-phu-huynh-tin-tuong-va-lua-chon-he-thong-truong-lien-cap-viet-nhat-<%#Eval("taisaochonvietnhat_id") %>">

                                    <div style="background-image: url('<%#Eval("taisaochonvietnhat_image") %>'); background-repeat: no-repeat; background-size: 100% 100%; height: 400px">
                                        <%--<span class="block-taisaochonvietnhat-content"><%#Eval("taisaochonvietnhat_description") %></span>--%>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="slider2 owl-carousel owl-theme" style="text-align: center">
                    <asp:Repeater ID="rpSlide1_icon" runat="server">
                        <ItemTemplate>
                            <a href='#<%#Eval("taisaochonvietnhat_id") %>' class="item" data-hash="<%#Eval("taisaochonvietnhat_id") %>">
                                <img src="<%#Eval("taisaochonvietnhat_image") %>" style="width: 100%; height: 135px; margin-top: 10px;" />
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <script>
                    $('.slider').owlCarousel({
                        loop: true,
                        margin: 10,
                        items: 1,
                        dots: false,
                        URLhashListener: true
                    })
                    $('.slider2').owlCarousel({
                        loop: true,
                        margin: 10,
                        responsive: {
                            0: {
                                items: 2
                            },
                            600: {
                                items: 3
                            },
                            1000: {
                                items: 4
                            }
                        }
                    })
                </script>
            </div>
            <div id="menu1" class="container tab-pane fade" style="border: 1px solid #ddd; padding-bottom: 20px;">
                <br>
                <%--slide 2--%>
                <div class="slider3 owl-carousel owl-theme">
                    <asp:Repeater ID="rpSlide2" runat="server">
                        <ItemTemplate>
                            <div class="item" data-hash="<%#Eval("taisaochonvietnhat_id") %>">
                                <img src="<%#Eval("taisaochonvietnhat_image") %>" style="width: 100%; height: 400px" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="slider4 owl-carousel owl-theme" style="text-align: center">
                    <asp:Repeater ID="rpSlide2_Icon" runat="server">
                        <ItemTemplate>
                            <a href='#<%#Eval("taisaochonvietnhat_id") %>' class="item" data-hash="<%#Eval("taisaochonvietnhat_id") %>">
                                <img src="<%#Eval("taisaochonvietnhat_image") %>" style="width: 100%; height: 135px; margin-top: 10px;" />
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <script>
                    $('.slider3').owlCarousel({
                        loop: true,
                        margin: 10,
                        items: 1,
                        dots: false,
                        URLhashListener: true
                    })
                    $('.slider4').owlCarousel({
                        loop: true,
                        margin: 10,
                        responsive: {
                            0: {
                                items: 2
                            },
                            600: {
                                items: 3
                            },
                            1000: {
                                items: 4
                            }
                        }
                    })
                </script>
            </div>
            <div id="menu2" class="container tab-pane fade" style="border: 1px solid #ddd; padding-bottom: 20px;">
                <br>
                <br>
                <%--slide 2--%>
                <div class="slider5 owl-carousel owl-theme">
                    <asp:Repeater ID="rpSlide3" runat="server">
                        <ItemTemplate>
                            <div class="item" data-hash="<%#Eval("taisaochonvietnhat_id") %>">
                                <img src="<%#Eval("taisaochonvietnhat_image") %>" style="width: 100%; height: 400px" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="slider6 owl-carousel owl-theme" style="text-align: center">
                    <asp:Repeater ID="rpSlide3_Icon" runat="server">
                        <ItemTemplate>
                            <a href='#<%#Eval("taisaochonvietnhat_id") %>' class="item" data-hash="<%#Eval("taisaochonvietnhat_id") %>">
                                <img src="<%#Eval("taisaochonvietnhat_image") %>" style="width: 100%; height: 135px; margin-top: 10px;" />
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <script>
                    $('.slider5').owlCarousel({
                        loop: true,
                        margin: 10,
                        items: 1,
                        dots: false,
                        URLhashListener: true
                    })
                    $('.slider6').owlCarousel({
                        loop: true,
                        margin: 10,
                        responsive: {
                            0: {
                                items: 2
                            },
                            600: {
                                items: 3
                            },
                            1000: {
                                items: 4
                            }
                        }
                    })
                </script>
            </div>
        </div>
        <style>
            .tab-content {
                border-top: 4px solid #efa920;
                border-bottom: 1px solid #80808040;
                border-right: 1px solid #80808040;
                border-left: 1px solid #80808040;
            }
        </style>
    </div>
</div>

<%--Festival--%>
<section class="section-festival">
    <asp:Repeater runat="server" ID="rpCacLeHoiTitle">
        <ItemTemplate>
            <h2><%#Eval("lehoi_title") %></h2>
        </ItemTemplate>
    </asp:Repeater>


    <div class="container">
        <asp:Repeater ID="rpBlockLeHoi1" runat="server">
            <ItemTemplate>
                <div class="row mb-5">
                    <div class="col-lg-7 col-md-6 col-sm-12 col-12 mb-5 mb-lg-0 mb-md-5 mb-lg-0 mb-md-5">
                        <div class="why__ytb">
                            <iframe class="ytb__VN" width="560" height="315" src="<%#Eval("lehoi_video") %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12 col-12">
                        <div class="why__inner">
                            <h4 class="festival__title"><%#Eval("lehoi_title") %> 123
                                    <img src="<%#Eval("lehoi_image") %>" alt="<%#Eval("lehoi_title") %>" />
                            </h4>
                            <p>
                                <%#Eval("lehoi_content") %>
                            </p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Repeater runat="server" ID="rpBlockLeHoi2">
            <ItemTemplate>
                <div class="row mb-5 fl-cl__rever--lh">
                    <div class="col-lg-5 col-md-6 col-sm-12 col-12">
                        <div class="why__inner">
                            <h4 class="festival__title"><%#Eval("lehoi_title") %>
                                <img src="<%#Eval("lehoi_image") %>" alt="<%#Eval("lehoi_title") %>" />
                            </h4>
                            <p>
                                <%#Eval("lehoi_content") %>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6 col-sm-12 col-12 mb-5 mb-lg-0 mb-md-5 mb-lg-0 mb-md-5">
                        <div class="why__ytb">
                            <iframe class="ytb__VN" width="560" height="315" src="<%#Eval("lehoi_video") %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Repeater runat="server" ID="rpBlockLeHoi3">
            <ItemTemplate>
                <div class="row mb-5 mb-lg-0 mb-md-0">
                    <div class="col-lg-7 col-md-6 col-sm-12 col-12 mb-5 mb-lg-0 mb-md-5 mb-lg-0 mb-md-5">
                        <div class="why__ytb">
                            <iframe class="ytb__VN" width="560" height="315" src="<%#Eval("lehoi_video") %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12 col-12">
                        <div class="why__inner">
                            <h4 class="festival__title"><%#Eval("lehoi_title") %>
                                <img src="<%#Eval("lehoi_image") %>" alt="<%#Eval("lehoi_title") %>" />
                            </h4>
                            <p>
                                <%#Eval("lehoi_content") %>
                            </p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</section>
<%--End Festival--%>

<%--</section>--%>
