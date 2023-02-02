<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_DanThuoc.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_DanThuoc" %>

<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
            justify-content: space-evenly;
        }



        .container_right {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 1%;
            overflow: auto;
            margin: 1% 0;
            margin-left: 0;
            max-height: 32rem;
        }

        .table {
            width: 100%;
            max-width: 100%;
            background-color: transparent;
            text-align: center;
            overflow-y: scroll;
            height: 50%;
        }

        .block_Title {
            font-size: 18px;
            text-align: center;
            color: #a10101;
        }

        select {
            background-color: #ffffff;
            border: none;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
        }

        thead {
            background-color: #f7e8e3;
            border: 2px solid #f1ae98;
        }

        tr {
            border-bottom: 1.5px solid #f1ae98;
        }

        .row {
            padding: 0 !important;
            /* height: 600px;*/
            margin-right: -87px;
        }

        .table {
            width: 100%;
            max-width: 100%;
            background-color: transparent;
            text-align: center;
            overflow-y: scroll;
            height: 50%;
        }

            .table td, .table th {
                padding: 0.5rem;
                vertical-align: top;
                border-top: 1px solid #940808;
            }

            .table th {
                text-align: inherit;
                border: 1px solid white;
                padding: 1%;
                color: white;
                background: #a10101;
                font-weight: 500;
            }



        .box__modal .table {
            width: 100%;
            text-align: center;
        }

        h4 {
            margin-bottom: 0;
            text-align: center;
            color: #940808;
            font-size: 18px;
            font-weight: bold;
        }

        input {
            width: 70%;
            height: 48px;
            padding: 8px;
            border-radius: 8px;
            outline: none;
            border: 1px solid #333;
        }

        .flex-between {
            margin-bottom: 20px;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
        }

        .block-bieudo {
            background-color: #ffffff;
            width: 100%;
            height: 32rem;
            border-radius: 10px;
            padding: 0 4%;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid row">
        <div class="col-3">
            <uc1:Web_ThongTinCaNhan runat="server" ID="Web_ThongTinCaNhan" />
        </div>
        <div class="col-9" style="padding: 0">
            <div class="col-12" style="padding: 0">
                <uc1:Web_VietNhatKids runat="server" ID="Web_VietNhatKids" />
            </div>
            <div class="col-12 row" style="padding: 0">
                <div class="container_left col-5">
                    <div class="block-bieudo">

                        <div id="block_Content">
                            <div>
                                <h4 style="padding-bottom: 20px;">DẶN THUỐC</h4>
                            </div>
                            <div class="flex-between" style="margin-bottom: 20px;">
                                <h6>Bệnh của con:</h6>
                                <input type="text" id="txtBenh" runat="server" class="inputBlock" />
                            </div>
                            <div class="flex-between position-relative" style="margin-bottom: 20px;">
                                <h6>Từ ngày:</h6>
                                <input type="date" id="dteTuNgay" runat="server" class="inputBlock">
                            </div>
                            <div class="flex-between position-relative" style="margin-bottom: 20px;">
                                <h6>Đến ngày:</h6>
                                <input type="date" id="dteDenNgay" runat="server" class="inputBlock">
                            </div>
                            <div class="flex-between" style="margin-bottom: 20px;">
                                <textarea id="txtDanDo" runat="server" class="inputBlock" style="height: 100%; border-radius: 8px; padding: 1%; width: 100%;" placeholder="Dặn dò..." rows="4"></textarea>
                            </div>

                            <div class="col-auto" style="display: flex; flex-direction: row-reverse; padding-right: 0">
                                <button style="display: block; background: #a10101;" class="btn btn-lg btn-success" type="submit">Gửi</button>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container_right col-7">
                    <div>
                        <h4 style="font-size: 20px; font-weight: bold; color: #1f58c1; /* color: aqua; */">Lịch sử dặn thuốc năm <span class="year">2022</span></h4>
                    </div>

                    <div>
                        <div style="width: 100%; margin-bottom: 10px">
                            <select>
                                <option class="year" selected>2022</option>
                                <option>combobox 1</option>
                                <option>combobox 2</option>
                                <option>combobox 3</option>
                            </select>
                        </div>
                        <div>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Tháng</th>
                                        <th scope="col">Chiều cao(cm)</th>
                                        <th scope="col">Cân nặng(kg)</th>
                                        <th scope="col">Ghi chú</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td scope="row">1</td>
                                        <td>1</td>
                                        <td>1m66</td>
                                        <td>50kg</td>
                                        <td>Bé hơi mập</td>
                                    </tr>
                                    <tr>
                                        <td scope="row">2</td>
                                        <td>2</td>
                                        <td>1m66</td>
                                        <td>50kg</td>
                                        <td>Bé hơi mập</td>
                                    </tr>
                                    <tr>
                                        <td scope="row">3</td>
                                        <td>3</td>
                                        <td>1m66</td>
                                        <td>50kg</td>
                                        <td>Bé hơi mập</td>
                                    </tr>
                                    <%--<tr>
                                <td scope="row">4</td>
                                <td>4</td>
                                <td>1m66</td>
                                <td>50kg</td>
                                <td>Bé hơi mập</td>
                            </tr>
                            <tr>
                                <td scope="row">1</td>
                                <td>1</td>
                                <td>1m66</td>
                                <td>50kg</td>
                                <td>Bé hơi mập</td>
                            </tr>
                            <tr>
                                <td scope="row">2</td>
                                <td>2</td>
                                <td>1m66</td>
                                <td>50kg</td>
                                <td>Bé hơi mập</td>
                            </tr>
                            <tr>
                                <td scope="row">3</td>
                                <td>3</td>
                                <td>1m66</td>
                                <td>50kg</td>
                                <td>Bé hơi mập</td>
                            </tr>
                            <tr>
                                <td scope="row">4</td>
                                <td>4</td>
                                <td>1m66</td>
                                <td>50kg</td>
                                <td>Bé hơi mập</td>
                            </tr>
                            <tr>
                                <td scope="row">1</td>
                                <td>1</td>
                                <td>1m66</td>
                                <td>50kg</td>
                                <td>Bé hơi mập</td>
                            </tr>
                            <tr>
                                <td scope="row">4</td>
                                <td>4</td>
                                <td>1m66</td>
                                <td>50kg</td>
                                <td>Bé hơi mập</td>
                            </tr>
                            <tr>
                                <td scope="row">1</td>
                                <td>1</td>
                                <td>1m66</td>
                                <td>50kg</td>
                                <td>Bé hơi mập</td>
                            </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

