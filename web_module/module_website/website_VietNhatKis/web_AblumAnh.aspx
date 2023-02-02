<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_AblumAnh.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_AblumAnh" %>

<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #e7e7e8;
        }

        .container_left {
            border-radius: 10px;
            margin: 1% 0;
            display: flex;
            flex-direction: column;
            flex-wrap: nowrap;
            justify-content: space-around;
        }

        .container_right {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 1%;
            overflow: auto;
            margin: 1% 0;
            margin-left: 0;
            display: flex;
            max-height: 32rem;
            flex-wrap: wrap;
            align-items: center;
        }

        .container_left_content {
            box-shadow: 0px 5px 10px 0px rgb(0 0 0 / 50%);
            border: 1px solid #cccccc;
            padding: 3%;
            margin-bottom: 10%;
        }

        .head {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px dashed red;
            margin: 2% 0;
        }

        h6 {
            margin-bottom: 0;
            font-size: 1rem;
            color: #ff3e3e;
            font-weight: bold;
        }

        .container_right_img {
            width: 50%;
            height: 20%;
            padding: 2%;
        }

        .block-bieudo {
            background-color: #ffffff;
            width: 100%;
            height: 32rem;
            border-radius: 10px;
            padding: 3%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            overflow: auto;
            padding-top: 36px;
        }

        .ribbon {
            position: relative;
            background-size: cover;
            text-transform: uppercase;
            color: white;
            z-index: 2;
        }

        .ribbon3 {
            width: 150px;
            height: 50px;
            line-height: 50px;
            padding-left: 15px;
            position: absolute;
            left: -8px;
            top: -11px;
            background: #bd3232;
        }

            .ribbon3:before, .ribbon3:after {
                content: "";
                position: absolute;
            }

            .ribbon3:before {
                height: 0;
                width: 0;
                top: 48.5px;
                left: 0.1px;
                border-top: 9px solid #9d1414;
                border-left: 9px solid transparent;
            }

            .ribbon3:after {
                height: 0;
                width: 0;
                right: -14.5px;
                border-top: 25px solid transparent;
                border-bottom: 25px solid transparent;
                border-left: 15px solid #bd3232;
            }

        ul {
            list-style: none;
        }

        .image-gallery {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

            .image-gallery > li {
                flex: 1 1 auto;
                height: 450px;
                cursor: pointer;
                position: relative;
            }

            .image-gallery li img {
                object-fit: cover;
                width: 100%;
                height: 100%;
                vertical-align: middle;
                border-radius: 10px;
            }

        tr {
            border-bottom: 1.5px solid #f1ae98;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid row" style="padding: 0">
        <div class="col-3">
            <uc1:Web_ThongTinCaNhan runat="server" ID="Web_ThongTinCaNhan" />
        </div>
        <div class="col-9" style="padding: 0">
            <div class="col-12" style="padding: 0">
                <uc1:Web_VietNhatKids runat="server" ID="Web_VietNhatKids" />
            </div>
            <div class="col-12 row" style="padding: 0">
                <div class="container_left col-4">
                    <div class="ribbon">
                        <span class="ribbon3">Ablum Ảnh</span>
                    </div>
                    <div class="block-bieudo" style="box-shadow: 2px 3px 8px 5px #80808029;">
                        <div class="container_left_top">
                            <div class="head">
                                <h6>Bé học vẽ</h6>
                                <a href="#">Xem thêm</a>
                            </div>

                            <div class="container_left_content">
                                <img src="/images/afterschool.jpg" />
                            </div>
                            <div class="container_left_top">
                                <div class="head">
                                    <h6>Bé học vẽ</h6>
                                    <a href="#">Xem thêm</a>
                                </div>

                                <div class="container_left_content">
                                    <img src="/images/afterschool.jpg" />
                                </div>
                            </div>
                            <div class="container_left_top">
                                <div class="head">
                                    <h6>Bé học vẽ</h6>
                                    <a href="#">Xem thêm</a>
                                </div>

                                <div class="container_left_content">
                                    <img src="/images/afterschool.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container_right col-8">
                    <ul class="image-gallery">
                        <li>
                            <img src="/images/26-holiday_sports.jpg" /></li>
                        <li>
                            <img src="/images/9F6BACA2F74676055A948D141EA08637.jpg" />
                        </li>
                        <li>
                            <img src="/images/afterschool.jpg" /></li>
                        <li>
                            <img src="/images/asubuonmathuot-net-gia-su-mon-tieng-anh-cho-hoc-sinh-cap-24589_350x250.png" /></li>
                        <li>
                            <img src="/images/background-main-literature.jpg" /></li>
                        <li>
                            <img src="/images/asubuonmathuot-net-gia-su-mon-tieng-anh-cho-hoc-sinh-cap-24589_350x250.png" /></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

