<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_ThongBao.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_ThongBao" %>
<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #e7e7e8;
        }

        .main {
            height: 32rem;
            border-radius: 10px;
            display: flex;
        }

        .container-Truong {
            width: 49%;
            margin: 17px 0px 0px 15px;
            height: 30rem;
            background-color: white;
            border-radius: 10px;
            box-shadow: 2px 3px 8px 5px #80808029;
        }

        .container-Lop {
            width: 49%;
            margin: 17px -15px 0px 16px;
            height: 30rem;
            background-color: white;
            border-radius: 10px;
            box-shadow: 2px 3px 8px 5px #80808029;
        }

        section {
            margin: 0 auto;
            max-width: 660px;
            padding: 0 20px;
        }

        .ribbon3 {
            width: 15%;
            line-height: 356%;
            padding-left: 0%;
            position: absolute;
            left: 0.6%;
            top: 1%;
            color: white;
            font-size: 14px;
            font-weight: 600;
            background: #d8000b;
        }

            .ribbon3:before, .ribbon3:after {
                content: "";
                position: absolute;
            }

            .ribbon3:before {
                width: 0;
                height: 0;
                top: 50px;
                left: 0px;
                border-top: 9px solid #770006;
                border-left: 9px solid #d8000b00;
            }

            .ribbon3:after {
                right: -14.5px;
                border-top: 25px solid transparent;
                border-bottom: 25px solid transparent;
                border-left: 15px solid #d8000b;
            }

        .ribbon4 {
            width: 15%;
            line-height: 356%;
            padding-left: 1%;
            position: absolute;
            left: 51.1%;
            top: 1%;
            color: white;
            font-size: 14px;
            font-weight: 600;
            background: #d8000b;
        }

            .ribbon4:before, .ribbon4:after {
                content: "";
                position: absolute;
            }

            .ribbon4:before {
                width: 0;
                height: 0;
                top: 50px;
                left: 0px;
                border-top: 9px solid #770006;
                border-left: 9px solid #d8000b00;
            }

            .ribbon4:after {
                top: 0px;
                right: -14.5px;
                border-top: 25px solid transparent;
                border-bottom: 25px solid transparent;
                border-left: 15px solid #d8000b;
            }

        .irs-sidebar-title {
            margin-top: 65px;
        }

        .ThongBaoGanNhat {
            font-size: 10px;
            margin-left: 20px;
        }

        .notification_chinh {
            margin-top: 60px;
            margin-left: -10px;
        }

        .tb {
            color: #b52221;
            font-size: 15px;
            font-weight: 500;
            border-bottom: 1px solid #c7c7c7;
            height: 30px;
        }

        .titlee {
            color: #B51A1A;
            font-size: 15px;
        }

        .hi {
            font-size: 14px;
            margin-left: 10px;
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
        }

        .notification a {
            color: #000;
            font-weight: 500;
            padding: 3px 0px;
            border-bottom: 1px dashed #D73932;
            display: flex;
            align-items: center;
            text-decoration: none;
        }

        .NoiDung {
            margin-top: 10%;
            margin-left: 2%;
        }

        .content_ngoaikhoa {
            width: 100%;
            height: 24rem;
            overflow: auto;
        }

        .hidden {
            font-size: 20px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-block row">
        <div class="col-3">
            <uc1:Web_ThongTinCaNhan runat="server" ID="Web_ThongTinCaNhan" />
        </div>
        <div class="col-9">
            <div class="col-12" style="padding: 0">
                <uc1:Web_VietNhatKids runat="server" ID="Web_VietNhatKids" />
            </div>
            <div class="main col-12 row" style="padding: 0">
                <div class="container-Truong">
                    <section>
                        <div class="ribbon">
                            <span class="ribbon3">THÔNG BÁO TRƯỜNG</span>
                        </div>
                    </section>
                    <div class="NoiDung">
                        <h3 class="hidden">THÔNG BÁO HỌP PHỤ HUYNH ĐẦU NĂM HỌC</h3>
                        <div class="content_ngoaikhoa">
                            <p align="center" style="margin: 0px; text-align: center; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: black; background: white;">THÔNG BÁO</span></strong></p>
                            <p align="center" style="margin: 0cm 0cm 4.5pt; text-align: center; background: white; color: #000000; font-size: 16px; font-family: &quot; times new roman&quot; , serif;"><strong style="color: #000000; font-size: 16px; font-family: &quot; times new roman&quot; , serif;"><span style="font-size: 14pt; color: black; font-family: &quot; times new roman&quot; , serif;">(V/v dời lịch nghỉ học ngày thứ 7 cuối cùng của tháng 8/2022)</span></strong></p>
                            <p align="center" style="margin: 0px; text-align: center; text-indent: 35.25pt; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">&nbsp;</span></strong></p>
                            <p align="center" style="margin: 0px; text-align: center; text-indent: 35.25pt; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">Kính gửi: Quý phụ huynh học sinh </span></strong><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">trường</span></strong> <strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">m</span></strong><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">ầm non Việt Nhật.</span></strong></p>
                            <p align="center" style="margin: 0px; text-align: center; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 115%; font-family: &quot; times new roman&quot; , serif; color: #000000;">&nbsp;</span></strong></p>
                            <p style="margin: 0cm 0cm 4.5pt; text-align: justify; background: white; color: #000000; font-size: 16px; font-family: &quot; times new roman&quot; , serif;"><span style="font-size: 14pt; color: #1d2129; font-family: &quot; times new roman&quot; , serif;">&nbsp;</span></p>
                            <p style="margin: 4.5pt 0cm; text-align: justify; text-indent: 36pt; background: white; color: #000000; font-size: 16px; font-family: &quot; times new roman&quot; , serif;"><span style="font-size: 14pt; color: black; font-family: &quot; times new roman&quot; , serif;">Trường mầm non Việt Nhật xin thông báo dời lịch nghỉ học ngày thứ 7 cuối cùng của tháng để</span><span style="font-size: 14pt; color: black; font-family: &quot; times new roman&quot; , serif;"> nghỉ bù vào <strong style="color: #000000; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">thứ 7 ngày 03/09/2022</strong></span><span style="font-size: 14pt; color: black; font-family: &quot; times new roman&quot; , serif;"> như sau: </span></p>
                            <p style="margin: 0px; text-align: justify; text-indent: 36pt; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 115%; font-family: &quot; times new roman&quot; , serif; color: #050505;">- Thứ 7 ngày 27/08/2022 học sinh toàn trường đi học bình thường.</span></strong></p>
                            <p style="margin: 0px; text-align: justify; text-indent: 36pt; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: black;"><span style="color: #000000; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">&nbsp;</span>Vậy nhà trường kính thông báo để quý phụ huynh được biết.</span> </p>
                            <p style="margin: 0px; text-align: justify; text-indent: 36pt; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #050505;">Kính mong nhận được sự đồng hành, hợp tác và ủng hộ của Quý phụ huynh.</span></p>
                            <p style="margin: 0px; text-align: justify; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #050505;">Trân trọng./</span></p>
                            <p style="margin: 0px 0px 8px; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #050505;"><span style="color: #050505; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color: #050505; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color: #050505; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">&nbsp;&nbsp;&nbsp;&nbsp;</span>Ban Giám Hiệu</span></strong></p>
                            <p style="margin: 0px; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 9pt; font-family: &quot; segoe ui&quot; , sans-serif; color: #000000;">&nbsp;</span></p>
                            <div class="ThongBaoGanNhat">
                                <div class="notification_chinh">
                                    <div class="tb">THÔNG BÁO GẦN NHẤT</div>

                                    <div class="notification">
                                        <a href="/vietnhatkids-su-kien-hang-tuan-851">
                                            <span class="titlee">[1]</span>
                                            <span class="hi">Tiệc Buffet</span>
                                        </a>
                                    </div>
                                    <div class="notification">
                                        <a href="/vietnhatkids-su-kien-hang-tuan-823">
                                            <span class="titlee">[2]</span>
                                            <span class="hi">Kỹ năng "Cầm đũa"</span>
                                        </a>
                                    </div>

                                    <div class="notification">
                                        <a href="/vietnhatkids-su-kien-hang-tuan-467">
                                            <span class="titlee">[3]</span>
                                            <span class="hi">Làm sản phẩm lễ hội triển lãm</span>
                                        </a>
                                    </div>
                                    <div class="notification">
                                        <a href="/vietnhatkids-su-kien-hang-tuan-416">
                                            <span class="titlee">[4]</span>
                                            <span class="hi">Học vẽ</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <div class="container-Lop">
                    <section>
                        <div class="ribbon">
                            <span class="ribbon4">THÔNG BÁO LỚP</span>
                        </div>
                    </section>
                    <div class="NoiDung">
                        <h3 class="hidden">THÔNG BÁO HỌP PHỤ HUYNH ĐẦU NĂM HỌC</h3>
                        <div class="content_ngoaikhoa">
                            <p align="center" style="margin: 0px; text-align: center; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: black; background: white;">THÔNG BÁO</span></strong></p>
                            <p align="center" style="margin: 0cm 0cm 4.5pt; text-align: center; background: white; color: #000000; font-size: 16px; font-family: &quot; times new roman&quot; , serif;"><strong style="color: #000000; font-size: 16px; font-family: &quot; times new roman&quot; , serif;"><span style="font-size: 14pt; color: black; font-family: &quot; times new roman&quot; , serif;">(V/v dời lịch nghỉ học ngày thứ 7 cuối cùng của tháng 8/2022)</span></strong></p>
                            <p align="center" style="margin: 0px; text-align: center; text-indent: 35.25pt; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">&nbsp;</span></strong></p>
                            <p align="center" style="margin: 0px; text-align: center; text-indent: 35.25pt; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">Kính gửi: Quý phụ huynh học sinh </span></strong><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">trường</span></strong> <strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">m</span></strong><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #000000;">ầm non Việt Nhật.</span></strong></p>
                            <p align="center" style="margin: 0px; text-align: center; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 115%; font-family: &quot; times new roman&quot; , serif; color: #000000;">&nbsp;</span></strong></p>
                            <p style="margin: 0cm 0cm 4.5pt; text-align: justify; background: white; color: #000000; font-size: 16px; font-family: &quot; times new roman&quot; , serif;"><span style="font-size: 14pt; color: #1d2129; font-family: &quot; times new roman&quot; , serif;">&nbsp;</span></p>
                            <p style="margin: 4.5pt 0cm; text-align: justify; text-indent: 36pt; background: white; color: #000000; font-size: 16px; font-family: &quot; times new roman&quot; , serif;"><span style="font-size: 14pt; color: black; font-family: &quot; times new roman&quot; , serif;">Trường mầm non Việt Nhật xin thông báo dời lịch nghỉ học ngày thứ 7 cuối cùng của tháng để</span><span style="font-size: 14pt; color: black; font-family: &quot; times new roman&quot; , serif;"> nghỉ bù vào <strong style="color: #000000; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">thứ 7 ngày 03/09/2022</strong></span><span style="font-size: 14pt; color: black; font-family: &quot; times new roman&quot; , serif;"> như sau: </span></p>
                            <p style="margin: 0px; text-align: justify; text-indent: 36pt; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 115%; font-family: &quot; times new roman&quot; , serif; color: #050505;">- Thứ 7 ngày 27/08/2022 học sinh toàn trường đi học bình thường.</span></strong></p>
                            <p style="margin: 0px; text-align: justify; text-indent: 36pt; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: black;"><span style="color: #000000; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">&nbsp;</span>Vậy nhà trường kính thông báo để quý phụ huynh được biết.</span> </p>
                            <p style="margin: 0px; text-align: justify; text-indent: 36pt; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #050505;">Kính mong nhận được sự đồng hành, hợp tác và ủng hộ của Quý phụ huynh.</span></p>
                            <p style="margin: 0px; text-align: justify; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #050505;">Trân trọng./</span></p>
                            <p style="margin: 0px 0px 8px; background: white; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><strong style="color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: &quot; times new roman&quot; , serif; color: #050505;"><span style="color: #050505; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color: #050505; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color: #050505; font-size: 18.6667px; font-family: &quot; times new roman&quot; , serif;">&nbsp;&nbsp;&nbsp;&nbsp;</span>Ban Giám Hiệu</span></strong></p>
                            <p style="margin: 0px; color: #000000; font-size: 14.6667px; font-family: Calibri, sans-serif;"><span style="font-size: 9pt; font-family: &quot; segoe ui&quot; , sans-serif; color: #000000;">&nbsp;</span></p>
                            <div class="ThongBaoGanNhat">
                                <div class="notification_chinh">
                                    <div class="tb">THÔNG BÁO GẦN NHẤT</div>

                                    <div class="notification">
                                        <a href="/vietnhatkids-su-kien-hang-tuan-851">
                                            <span class="titlee">[1]</span>
                                            <span class="hi">Tiệc Buffet</span>
                                        </a>
                                    </div>
                                    <div class="notification">
                                        <a href="/vietnhatkids-su-kien-hang-tuan-823">
                                            <span class="titlee">[2]</span>
                                            <span class="hi">Kỹ năng "Cầm đũa"</span>
                                        </a>
                                    </div>

                                    <div class="notification">
                                        <a href="/vietnhatkids-su-kien-hang-tuan-467">
                                            <span class="titlee">[3]</span>
                                            <span class="hi">Làm sản phẩm lễ hội triển lãm</span>
                                        </a>
                                    </div>
                                    <div class="notification">
                                        <a href="/vietnhatkids-su-kien-hang-tuan-416">
                                            <span class="titlee">[4]</span>
                                            <span class="hi">Học vẽ</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


