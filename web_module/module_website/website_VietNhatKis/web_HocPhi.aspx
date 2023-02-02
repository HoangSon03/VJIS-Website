<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_HocPhi.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_HocPhi" %>

<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        .section {
            background-color: #e7e7e8;
            display: flex;
            align-items: center;
        }

        .section .container-left {
                height: 32rem;
                border-radius: 10px;
                box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
                background: white;
                margin: 0 3%;
        }

        .container-left h2 {
            font-size: 19px;
            text-align: center;
            color: red;
            padding: 2% 0;
        }

        table, th, td {
            border: 1px solid #a3a0a0;
        }

        table thead th {
                text-align: center;
                font-size: 17px;
                color: white;
                background: #BD3232;
        }

        .table table tbody td {
            font-size: 15px;
        }

        .table-row {
            margin: 0 2%;
        }

        .section .container-right {
            padding: 2%;
            background: white;
            height: 32rem;
            border-radius: 10px;
            box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
            /*margin: 0 1%;*/
        }

        .container-right h2 {
            font-size: 17px;
            text-align: center;
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <body>
        <div class="container-fluid row">
            <div class="row section ">
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
                                <h2 class="left-title">Học phí tháng 8/2022</h2>
                                <div class="table-row">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">STT</th>
                                                <th scope="col">Khoản thu</th>
                                                <th scope="col">Số tiền</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>

                                                <td>1</td>
                                                <td>Ăn sáng mần non</td>
                                                <td>0</td>

                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>Ăn sáng và sữa chiều mầm non</td>
                                                <td>0</td>

                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>Ăn trưa + phụ sáng + phụ chiều Mầm non</td>
                                                <td>601.538</td>

                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>Học phí mầm non 25 tháng-6 tuổi</td>
                                                <td>0</td>

                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>Học Aerobic</td>
                                                <td>100.000</td>

                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>Học anh văn- Usagi + Kirin + Ralon</td>
                                                <td>100.000</td>

                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>Tổng tiền</td>
                                                <td>801.531</td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="col-7" style="padding: 0">
                            <div class="container-right">
                                <h2>LỊCH SỬ ĐÓNG HỌC PHÍ</h2>
                                <label for="nam-hoc" style="font-weight: 600;">Năm học</label>
                                <select id="nam-hoc" style="border: none;">
                                    <option value="">2022-2023</option>
                                    <option value="">2021-2022</option>
                                    <option value="">2020-2021</option>
                                </select>
                                <div class="table-hocphi1">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">STT</th>
                                                <th scope="col">Thời gian nộp</th>
                                                <th scope="col">Nội dung</th>
                                                <th scope="col">Xem chi tiết</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td scope="row">1</td>
                                                <td>21/07/2022</td>
                                                <td>Nộp học phí tháng 7</td>
                                                <td><a href="#">Thông tin chi tiết</a></td>

                                            </tr>
                                            <tr>
                                                <td scope="row">2</td>
                                                <td>21/07/2022</td>
                                                <td>Nộp học phí tháng 7</td>
                                                <td><a href="#">Thông tin chi tiết</a></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">1</td>
                                                <td>21/07/2022</td>
                                                <td>Nộp học phí tháng 7</td>
                                                <td><a href="#">Thông tin chi tiết</a></td>
                                            </tr>
                                            <tr>
                                                <td scope="row">1</td>
                                                <td>21/07/2022</td>
                                                <td>Nộp học phí tháng 7</td>
                                                <td><a href="#">Thông tin chi tiết</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</asp:Content>


