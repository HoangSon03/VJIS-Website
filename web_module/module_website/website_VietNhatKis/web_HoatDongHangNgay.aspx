<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_HoatDongHangNgay.aspx.cs" Inherits="web_module_module_website_web_HoatDongHangNgay" %>

<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #e7e7e8;
        }

        .main {
            background-color: white;
            height: 32rem;
            border-radius: 10px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        }

        .div_Lichhoc {
            text-align: center;
        }

        .div_ThucDon {
            text-align: center;
            min-width: 80%;
            width: 90%;
            margin: 0 auto;
            margin-top: 15px;
            background: rgba(255, 173, 173, 0.24);
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            padding-bottom: 10px;
            padding-top: 5px;
            margin-bottom: 180px;
        }

        .block_Title {
            font-weight: bold;
            color: #B51A1A;
        }

        .div_hoatdong {
            width: 100%;
            margin: 0 auto;
        }

            .div_hoatdong .table_content {
                width: 100%;
                background: #FFFBFB;
                border: 1px solid #B51A1A;
                box-sizing: border-box;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            }

        .table_content th, .table_content td {
            border: 1px solid #B51A1A;
            padding: 5px 3px;
            text-align: center;
        }

            .table_content th, .table_content td.noidunghoatdong {
                text-align: center;
            }

        .table-bordered td, .table-bordered th {
            border: 1px solid #B51A1A;
        }


        .title_thucdon {
            margin: 0 3%;
            font-weight: bold;
            color: #B51A1A;
        }

        .div_ThucDon .thucdon_item {
            display: flex;
            background: #FFFFFF;
            border: 1px solid #B51A1A;
            box-sizing: border-box;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            width: 94%;
            margin: 0 3%;
            flex-direction: row;
            align-items: center;
            margin-bottom: 15px;
        }

        .block-card {
            flex-direction: column;
        }

        .nav-tabs > li > a {
            background: brown;
            margin-right: 2px;
            line-height: 2.42857143;
            border: 1px solid transparent;
            border-radius: 4px 4px 0 0;
            color: white;
            font-weight: 600;
            padding: 8px 8px;
            font-size: 85%;
        }

        .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
            color: #000;
            cursor: default;
            background-color: #ffffff;
            border: 1px solid #0000001a;
            border-bottom-color: transparent;
            padding: 8px 8px;
            font-size: 85%;
        }

        .tab-1 {
            width: 13% !important;
        }

        .tab-2 {
            width: 9.2% !important;
        }

        .container_left {
            border-radius: 10px;
            margin: 1% 0;
            display: flex;
            flex-direction: column;
            flex-wrap: nowrap;
            justify-content: space-around;
            text-align: center;
        }

        .row {
            padding: 0 !important;
            margin-right: -87px;
        }

        .main {
            background-color: white;
            height: 32rem;
            border-radius: 10px;
            box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
            margin: 1% 0;
        }

        .container_left {
            border-radius: 10px;
            margin: 1% 0;
            display: flex;
            flex-direction: column;
            flex-wrap: nowrap;
            justify-content: space-around;
            text-align: center;
        }

        .container_right {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 1%;
            height: 95%;
            overflow: auto;
            margin: 1% 0;
            margin-left: 0;
            max-height: 32rem;
            box-shadow: 2px 3px 8px 5px #80808029;
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

        .row {
            padding: 0 !important;
            /* height: 600px;*/
            margin-right: -87px;
        }

        .table {
            width: 100% !important;
            text-align: center;
            /* height: 32rem;*/
            overflow: auto;
        }



        .table-dongphuc td {
            border: 0.5px solid gray;
        }

        .table-dongphuc {
            margin: 1% auto;
            width: 98%;
        }

        .box__modal .table {
            width: 100%;
            text-align: center;
        }

        .block-bieudo {
            height: 32rem;
            /* overflow: auto; */
            background-color: #ffffff;
            /* width: 100%; */
            height: 32rem;
            border-radius: 10px;
            padding: 1%;
            /* display: flex; */
            /* flex-direction: column; */
            /* justify-content: space-between; */
        }

        .block_Title {
            font-weight: 600;
        }

        .table td {
            border-bottom: 1px solid #f1ae98;
        }

        .gui {
            background-color: #BD3232;
            border-radius: 6px;
            width: 100%;
            font-weight: 600;
            height: 41px;
            display: flex;
            margin: 4% 0;
            border: none;
            color: #FFFFFF;
            padding: 3px;
            box-shadow: 0px 2px 1px 1px rgb(0 0 0 / 25%);
            justify-content: center;
            align-items: center;
        }

        .btn_Gui {
            height: 40px;
            padding: 8px 20px;
            text-align: center;
            background: #B51A1A;
            color: #fff;
            border: none;
            outline: none;
            border-radius: 8px;
            font-weight: 600;
            box-shadow: 0 1px 2px #999;
            cursor: pointer;
            float: right;
            margin-right: 1%;
        }

        .nav-link {
            display: block;
            padding: .2rem 0.5rem;
        }

        .nav {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: nowrap;
            padding-left: 0;
            margin-bottom: 0;
            list-style: none;
            flex-direction: row;
        }

        .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
            color: #fff;
            background-color: #940808;
            /*background-color: #9c27b0;*/
            box-shadow: 0 5px 20px 0 rgb(0 0 0 / 20%), 0 13px 24px -11px rgb(161 1 1);
        }


        a:hover {
            color: #940808;
            text-decoration: underline;
        }

        a {
            color: #940808;
        }

        th{
            text-align: left;
        }
        td {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid row">
        <div class="col-3">
            <uc1:Web_ThongTinCaNhan runat="server" ID="Web_ThongTinCaNhan" />
        </div>
        <div class="col-9" style="padding: 0">
            <div class="col-12" style="padding: 0!important">
                <uc1:Web_VietNhatKids runat="server" ID="Web_VietNhatKids" />
            </div>
            <div class="col-12 row" style="padding: 0; margin: 0; margin-right: 87px;">
                <div class="container_left col-12">
                    <div class="block-bieudo" style="box-shadow: 2px 3px 8px 5px #80808029;">
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="true">Thời khóa biểu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Thực đơn</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Nhận xét sức khỏe</a>
                            </li>
                        </ul>
                        <div style="float: left">
                            <input style="border-radius: 5px;" type="date" name="name" value="" />
                            <a class="btn btn-danger">Xem</a>
                        </div>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <div class="div_Lichhoc">
                                    <h4 class="Title_Header" style="color: #B51A1A;">Hoạt động trong ngày của bé</h4>
                                    <div class="div_hoatdong">
                                        <table class="table_content">
                                            <thead>
                                                <tr class="table_title">
                                                    <th>Buổi</th>
                                                    <th>Thời gian</th>
                                                    <th>Hoạt động</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th rowspan="4">Sáng</th>
                                                    <td>8h - 8h30</td>
                                                    <td id="ContentPlaceHolder1_lblHoatDong1" class="noidunghoatdong">Hoạt động ngoài trời:<br>
                                                        - Quan sát thời tiết<br>
                                                        - TCDG: Cướp cờ</td>
                                                </tr>
                                                <tr>
                                                    <td>8h45 - 9h15</td>
                                                    <td id="ContentPlaceHolder1_lblHoatDong2" class="noidunghoatdong">Học vẽ</td>
                                                </tr>
                                                <tr>
                                                    <td>9h30 - 10h</td>
                                                    <td id="ContentPlaceHolder1_lblHoatDong3" class="noidunghoatdong">Kỹ năng</td>
                                                </tr>
                                                <tr>
                                                    <td>10h15 - 10h45</td>
                                                    <td id="ContentPlaceHolder1_lblHoatDong4" class="noidunghoatdong">Học  Aerobic</td>
                                                </tr>
                                                <tr>
                                                    <th>Trưa</th>
                                                    <td colspan="2">Ăn trưa và ngủ trưa</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2">Chiều</th>
                                                    <td>14h30 - 15h</td>
                                                    <td id="ContentPlaceHolder1_lblHoatDong5" class="noidunghoatdong">Làm sản phẩm Lễ hội triển lãm (1)</td>
                                                </tr>
                                                <tr>
                                                    <td>15h45 - 17h</td>
                                                    <td id="ContentPlaceHolder1_lblHoatDong6" class="noidunghoatdong">Kỹ năng</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                    <div class="block_Title" style="margin-right: 8px; min-width: 240px;">Nhận xét thường xuyên của bé: </div>
                                    <span id="ContentPlaceHolder1_lblNhanXetThuongXuyen">- Ba mẹ vui lòng chờ giáo viên cập nhật vào cuối ngày.- Ba mẹ vui lòng chờ giáo viên cập nhật vào cuối ngày.</span>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <div class="block-card" style="text-align: center;">
                                    <h4 class="Title_Header" style="color: #B51A1A; margin-bottom: 12px;">Thực đơn của bé</h4>
                                    <table border="1" cellspacing="0" cellpadding="5" class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <th colspan="1" style="text-align: center; vertical-align: middle;">Buổi sáng</th>
                                                <th colspan="4">
                                                    <div id="ContentPlaceHolder1_lblBuoiSang">Soup thịt hoa lơ                                                                 </div>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th colspan="1" style="text-align: center; vertical-align: middle;">Buổi phụ sáng</th>
                                                <th colspan="4">
                                                    <div id="ContentPlaceHolder1_lblBuoiPhuSang">Nước cam</div>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th colspan="1" style="text-align: center; vertical-align: middle;">Buổi trưa</th>
                                                <th colspan="4">
                                                    <div id="ContentPlaceHolder1_lblBuoiTrua">
                                                        - Cơm
                                                                <br>
                                                        - Cải thảo xào dầu hào
                                                                <br>
                                                        - Cá Bớp kho
                                                                <br>
                                                        - Canh rau ngót nấu thịt bò
                                                    </div>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th colspan="1" style="text-align: center; vertical-align: middle;">Buổi xế chiều</th>
                                                <th colspan="4">
                                                    <div id="ContentPlaceHolder1_lblBuoiXeChieu">
                                                        Bánh canh xương, trứng cút 
                                                                <br>
                                                    </div>
                                                </th>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="block_Title" style="margin-right: 8px; min-width: 240px;">Nhận xét bé ăn hôm nay: </div>
                                    <span id="ContentPlaceHolder1_lblBeAnHomNay">- Bé ăn hết bữa chính. </span>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                                <div class="block-card">
                                    <h4 class="Title_Header" style="color: #B51A1A; margin-bottom: 12px; text-align: center;">Nhận xét sức khỏe của bé</h4>
                                    <input name="ctl00$ContentPlaceHolder1$txtNoiDungSucKhoe" type="text" id="ContentPlaceHolder1_txtNoiDungSucKhoe" style="display: none" value="Tâm trạng của bé bình thường.-Bé ngủ trưa tốt.-Nhiệt độ bé bình thường.-Bé không đi đại tiện."><table border="1" cellspacing="0" cellpadding="5" class="table table-bordered" style="box-shadow: 1px 0px 6px -2px grey;">
                                        <tbody>
                                            <tr>
                                                <th colspan="1" style="text-align: center; vertical-align: middle;">Tâm trạng</th>
                                                <th colspan="4">
                                                    <input type="checkbox" id="vehicle1" name="tamtrang" value="Tâm trạng của bé tốt." onclick="return false;">
                                                    <label for="vehicle1">Tốt</label><br>
                                                    <input type="checkbox" id="vehicle2" name="tamtrang" value="Tâm trạng của bé bình thường." onclick="return false;">
                                                    <label for="vehicle2">Bình thường</label><br>
                                                    <input type="checkbox" id="vehicle3" name="tamtrang" value="Tâm trạng của bé xấu." onclick="return false;">
                                                    <label for="vehicle3">Xấu</label><br>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th colspan="1" style="text-align: center; vertical-align: middle;">Ngủ trưa</th>
                                                <th colspan="4">
                                                    <input type="checkbox" id="vehicle4" name="ngutrua" value="Bé ngủ trưa tốt." onclick="return false;">
                                                    <label for="vehicle4">Tốt</label><br>
                                                    <input type="checkbox" id="vehicle5" name="ngutrua" value="Bé ngủ trưa không tốt." onclick="return false;">
                                                    <label for="vehicle5">Không tốt</label><br>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th colspan="1" style="text-align: center; vertical-align: middle;">Nhiệt độ</th>
                                                <th colspan="4">
                                                    <input type="checkbox" id="vehicle6" name="nhietdo" value="Nhiệt độ bé bình thường." onclick="return false;">
                                                    <label for="vehicle6">Bình thường</label><br>
                                                    <input type="checkbox" id="vehicle7" name="nhietdo" value="Bé có sốt." onclick="return false;">
                                                    <label for="vehicle7">Có sốt</label><br>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th colspan="1" style="text-align: center; vertical-align: middle;">Đại tiện</th>
                                                <th colspan="4">
                                                    <input type="checkbox" id="vehicle8" name="daitien" value="Bé có đi đại tiện." onclick="return false;">
                                                    <label for="vehicle8">Có</label><br>
                                                    <input type="checkbox" id="vehicle9" name="daitien" value="Bé không đi đại tiện." onclick="return false;">
                                                    <label for="vehicle9">Không</label><br>
                                                </th>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <span id="ContentPlaceHolder1_lblGhiChuSucKhoe"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            var numItems = $('li.fancyTab').length;
            if (numItems == 12) {
                $("li.fancyTab").width('8.3%');
            }
            if (numItems == 11) {
                $("li.fancyTab").width('9%');
            }
            if (numItems == 10) {
                $("li.fancyTab").width('10%');
            }
            if (numItems == 9) {
                $("li.fancyTab").width('11.1%');
            }
            if (numItems == 8) {
                $("li.fancyTab").width('12.5%');
            }
            if (numItems == 7) {
                $("li.fancyTab").width('14.2%');
            }
            if (numItems == 6) {
                $("li.fancyTab").width('16.666666666666667%');
            }
            if (numItems == 5) {
                $("li.fancyTab").width('20%');
            }
            if (numItems == 4) {
                $("li.fancyTab").width('25%');
            }
            if (numItems == 3) {
                $("li.fancyTab").width('33.3%');
            }
            if (numItems == 2) {
                $("li.fancyTab").width('50%');
            }
        });

        $(window).load(function () {

            $('.fancyTabs').each(function () {

                var highestBox = 0;
                $('.fancyTab a', this).each(function () {

                    if ($(this).height() > highestBox)
                        highestBox = $(this).height();
                });

                $('.fancyTab a', this).height(highestBox);

            });
        });
    </script>
</asp:Content>

