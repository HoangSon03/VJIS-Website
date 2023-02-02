<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_DangKyNgoaiKhoa.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_DangKyNgoaiKhoa" %>

<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
            background-color: #e7e7e8;
            display: flex;
            align-items: center;
            float: right;
            /*justify-content: space-between;*/
            flex-direction: row;
            align-content: center;
            flex-wrap: nowrap;
        }


        .container-left {
            height: 32rem;
            display: flex;
            flex-direction: column;
            background-image: url(/images/DangKyNgoaiKhoa/dangkyngoaikhoa-1.png);
            background-size: cover;
            background-repeat: no-repeat;
            border-radius: 10px;
            box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
            margin: 0 3%;
            overflow: auto;
            flex-wrap: nowrap;
            justify-content: center;
            align-items: center;
        }

            .container-left .left-section {
                background-color: white;
                top: 94px;
                position: relative;
                border-radius: 8px;
                margin: 0 4%;
                height: 29.1%;
                width: 91%;
                box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
                padding: 3%;
                margin: 1% 0;
            }

            .container-left h2 {
                font-size: 16px;
                font-weight: 600;
            }

        .section .container-left p {
            font-size: 16px;
            color: #464b50;
        }

        .button {
            font-size: 16px;
            background-color: #BD3232;
            border-radius: 20px;
            width: 31%;
            border: none;
            color: #FFFFFF;
            padding: 1px;
            font-weight: 500;
        }

        .container-left a {
            font-size: 14px;
            padding: 0 2%;
        }

        .container-right {
            height: 32rem;
            background-color: white;
            border-radius: 10px;
            padding: 12% 11%;
            /*  margin: 0 1%;*/
            box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
            overflow: auto;
        }

            .container-right h2 {
                font-size: 19px;
                color: #c3a734;
            }

        .block-title {
            font-size: 17px;
            font-weight: 500;
        }

        .block-sec {
            font-weight: normal;
            font-size: 15px;
        }


        .container-right .img {
            margin: 0 -10%;
            position: relative;
            top: 11%;
        }

        .btn-left button {
            background-color: #BD3232;
            border-radius: 15px;
            padding: 0 2%;
            border: none;
            color: #FFFFFF;
            font-size: 15px;
            font-weight: 500;
        }

        .btn-left .block {
            display: flex;
            flex-direction: row-reverse;
            flex-wrap: nowrap;
            align-content: center;
            justify-content: flex-start;
            align-items: center;
            margin: -6% 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--    <body>--%>
    <div class="container-fluid row">
        <%-- <div class=" section ">--%>
        <div class="col-3">
            <uc1:Web_ThongTinCaNhan runat="server" ID="Web_ThongTinCaNhan" />
        </div>
        <div class="col-9" style="padding: 0">
            <div class="col-12" style="padding: 0">
                <uc1:Web_VietNhatKids runat="server" ID="Web_VietNhatKids" />
            </div>
            <div class="col-12 row" style="padding: 0">
                <div class="col-5" style="padding: 0">
                    <div class="container-left">
                        <div class="left-section">
                            <div>
                                <h2 class="left-title">MÙA HÈ VUI NHỘN VỚI CÁC HOẠT ĐỘNG NGOẠI KHÓA HÈ CHO BÉ</h2>

                            </div>
                            <div>
                            </div>
                            <p class="left-sec">Mỗi mùa hè lại tới, các bạn nhỏ không phải đến trường. Các bố mẹ lại không khỏi đau...</p>
                            <div class="btn-left" style="padding: 0 1%;">
                                <button class="btn-sign">Đăng ký</button>
                                <button class="btn-cancel">Hủy đăng ký</button>

                                <span class="block"><a href="#">Xem chi tiết</a></span>
                            </div>
                        </div>
                        <div class="left-section">
                            <div>
                                <h2 class="left-title">MÙA HÈ VUI NHỘN VỚI CÁC HOẠT ĐỘNG NGOẠI KHÓA HÈ CHO BÉ</h2>

                            </div>
                            <div>
                            </div>
                            <p class="left-sec">Mỗi mùa hè lại tới, các bạn nhỏ không phải đến trường. Các bố mẹ lại không khỏi đau...</p>
                            <div class="btn-left" style="padding: 0 1%;">
                                <button class="btn-sign">Đăng ký</button>
                                <button class="btn-cancel">Hủy đăng ký</button>

                                <span class="block"><a href="#">Xem chi tiết</a></span>
                            </div>
                        </div>
                        <div class="left-section">
                            <div>
                                <h2 class="left-title">MÙA HÈ VUI NHỘN VỚI CÁC HOẠT ĐỘNG NGOẠI KHÓA HÈ CHO BÉ</h2>

                            </div>
                            <div>
                            </div>
                            <p class="left-sec">Mỗi mùa hè lại tới, các bạn nhỏ không phải đến trường. Các bố mẹ lại không khỏi đau...</p>
                            <div class="btn-left" style="padding: 0 1%;">
                                <button class="btn-sign">Đăng ký</button>
                                <button class="btn-cancel">Hủy đăng ký</button>

                                <span class="block"><a href="#">Xem chi tiết</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-7" style="padding: 0">
                    <div class="container-right">
                        <h2>BÙNG NỔ SÁNG TẠO CÙNG TRẠI HÈ VINSCHOOL 2022</h2>
                        <p style="font-size: 15px;">Chương trình trại hè được thiết kế với cùng độ tuổi, giúp học sinh không chỉ trao dồi thêm kiến thức các môn học, mà còn phát triển thể chất và kỹ năng tư duy, đồng thời gặp gỡ, làm quen và giao lưu cùng ngươì bạn đồng trang lứa.</p>
                        <div>
                            <ul>

                                <li class="block-title">Trại hè Khám phá (cả ngày từ thứ 2 - thứ 6):
                                <span class="block-sec">Thỏa sức tham gia các môn học tiếng Anh, Toán, Ngữ Văn, Thể thao, Nghệ thuật,... cùng các hoạt động trải nghiệm phong phú.</span>

                                </li>
                                <li class="block-title">Trại hè trong tuần(1 buổi/ ngày, sáng hoặc chiều):<span class="block-sec">là ác trại hè chuyên biệt về các lĩnh vực như Tiếng Anh (100% thời lượng học với giáo viên nước ngoài), Thể thao, Nghệ thuật hoặc Công Nghệ.</span>
                                </li>
                                <li class="block-title">Trại hè Khám phá (cả ngày từ thứ 2 - thứ 6):
                                <span class="block-sec">Thỏa sức tham gia các môn học tiếng Anh, Toán, Ngữ Văn, Thể thao, Nghệ thuật,... cùng các hoạt động trải nghiệm phong phú.</span>

                                </li>
                                <li class="block-title">Trại hè trong tuần(1 buổi/ ngày, sáng hoặc chiều):<span class="block-sec">là ác trại hè chuyên biệt về các lĩnh vực như Tiếng Anh (100% thời lượng học với giáo viên nước ngoài), Thể thao, Nghệ thuật hoặc Công Nghệ.</span>
                                </li>
                            </ul>
                        </div>
                        <div class="img">
                            <img src="/images/DangKyNgoaiKhoa/dangkyngoaikhoa-2.png" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
 <%--   </body>--%>
</asp:Content>


