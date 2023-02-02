<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage2.master" AutoEventWireup="true" CodeFile="web_TinTuc.aspx.cs" Inherits="web_module_module_website_web_TinTuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../assets/css/tuanvo_style.css" rel="stylesheet" />
    <style>
        .box-tintuc-2 {
            width: 80%;
            margin: auto;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
            margin-top: 10px;
        }

        .tintuc-thongtin {
            font-size: 0.8rem;
            color: #353535;
            padding: 3px 0;
        }

        a.tintuc-img {
            position: relative;
            display: block;
            padding-top: 50%;
            overflow:hidden;
        }
        a.tintuc-img:hover img{
            transform:scale(1.2);
            transition:0.5s;
        }
            a.tintuc-img img {
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
            transition:0.5s;

            }

        a.tintuc-heading {
            font-size: 1.5rem;
            font-weight: bold;
            color: #4d3030;
        }
        a.tintuc-heading:hover{
            color: #981111;
        }
        .tintuc-content{
            color: #302f2f;
            font-weight: 400;
            padding:5px 0;
        }
        a.tintuc-xemthem{
            display: inline-block;
            padding: 6px 12px;
            background-color: #8e191b;
            color: white;
        }
        a.tintuc-xemthem:hover{
                background-color: #ccc;
    color: black;
        }
        div#chuyenPage{
            text-align:center;
            margin-top:25px;
        }
        div#chuyenPage p{
            color:#696868;
            display: inline;
            margin-right: 10px;
        }
        div#chuyenPage a{
            padding:8px 12px;
            color:black;
            margin:0 5px;
            border-radius:5px;
        }
        .select{
            background-color: #8e191b;
            color: white!important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-1">
        <div class="breadcrumb">
            <p>Trang chủ/ tin tức</p>
        </div>
        <div class="container border-left">
            <div class="box-tintuc-2">
                <a href="web_TinTucChiTiet.aspx" class="tintuc-img">
                    <img src="https://cdn.luxe.digital/media/2020/05/03090644/best-electric-cars-kids-ride-on-premium-luxe-digital.jpg" alt="Alternate Text" />
                </a>
                <p class="tintuc-thongtin">
                    <i class='bx bx-calendar'></i>28/05/2022 &ensp;
                    <i class='bx bxs-folder'></i>Giới thiệu &ensp;
                    <i class='bx bxs-user'></i>Bởi Văn Tuấn VJIS
                </p>
                <a href="web_TinTucChiTiet.aspx" class="tintuc-heading">Tập cho các bé đua xe bắn xúng</a>
                <p class="tintuc-content">Ngày 7/5 vừa qua, Trường đã tổ chức 1 cuộc đua xe cho các bé giao lưu và […]</p>
                <a href="web_TinTucChiTiet.aspx" class="tintuc-xemthem">Xem thêm</a>
            </div>
            <div class="box-tintuc-2">
                <a href="#" class="tintuc-img">
                    <img src="https://cdn.luxe.digital/media/2020/05/03090644/best-electric-cars-kids-ride-on-premium-luxe-digital.jpg" alt="Alternate Text" />
                </a>
                <p class="tintuc-thongtin">
                    <i class='bx bx-calendar'></i>28/05/2022 &ensp;
                    <i class='bx bxs-folder'></i>Giới thiệu &ensp;
                    <i class='bx bxs-user'></i>Bởi Văn Tuấn VJIS
                </p>
                <a href="#" class="tintuc-heading">Tập cho các bé đua xe bắn xúng</a>
                <p class="tintuc-content">Ngày 7/5 vừa qua, Trường đã tổ chức 1 cuộc đua xe cho các bé giao lưu và […]</p>
                <a href="#" class="tintuc-xemthem">Xem thêm</a>
            </div>
            <div class="box-tintuc-2">
                <a href="#" class="tintuc-img">
                    <img src="https://cdn.luxe.digital/media/2020/05/03090644/best-electric-cars-kids-ride-on-premium-luxe-digital.jpg" alt="Alternate Text" />
                </a>
                <p class="tintuc-thongtin">
                    <i class='bx bx-calendar'></i>28/05/2022 &ensp;
                    <i class='bx bxs-folder'></i>Giới thiệu &ensp;
                    <i class='bx bxs-user'></i>Bởi Văn Tuấn VJIS
                </p>
                <a href="#" class="tintuc-heading">Tập cho các bé đua xe bắn xúng</a>
                <p class="tintuc-content">Ngày 7/5 vừa qua, Trường đã tổ chức 1 cuộc đua xe cho các bé giao lưu và […]</p>
                <a href="#" class="tintuc-xemthem">Xem thêm</a>
            </div>
            <div id="chuyenPage">
                <p>
                    Page 1 of 4 
                </p>
                    <a href="#" class="select">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
            </div>
        </div>
    </div>
</asp:Content>

