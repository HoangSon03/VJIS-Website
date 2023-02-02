<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_DangKyAnSangUongSua.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_DangKyAnSangUongSua" %>

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
            float: right;
            justify-content: space-between;
            flex-direction: row;
            align-content: center;
            flex-wrap: nowrap;
        }

            .section .container-left {
                /*  width: 97%;*/
                margin: 0% 3%;
                background: #ffff;
                padding: 5%;
                display: flex;
                height: 32rem;
                flex-direction: column;
                border-radius: 10px;
                box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
            }

        .container-left .container-content {
            display: flex;
            flex-direction: column;
            flex-wrap: wrap;
            align-content: center;
            justify-content: center;
            align-items: center;
        }

        .section h2 {
            font-weight: 700;
            font-size: 19px;
            color: #C90000;
        }

        .section p {
            font-size: 15px;
        }

        .section .container-left-img {
            position: relative;
            background-color: #E5E6F3;
            display: flex;
            flex-direction: row;
            flex-wrap: nowrap;
            align-content: center;
            justify-content: space-between;
            align-items: center;
            padding: 5%;
            border-radius: 6px;
        }

            .section .container-left-img .left-img {
                width: 32%;
                height: 91%;
                background-color: white;
                box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
            }

            .section .container-left-img input {
                position: absolute;
            }

            .section .container-left-img p {
                font-weight: 400;
                text-align: center;
            }

        .section button {
            background-color: #BD3232;
            border-radius: 6px;
            border: none;
            color: #FFFFFF;
            padding: 3px;
            box-shadow: 0px 2px 1px 1px rgb(0 0 0 / 25%);
            margin: 0 1%;
        }

        .section .container-right {
            padding: 2%;
            background: white;
            height: 32rem;
            border-radius: 10px;
            box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
        }

            .section .container-right h2 {
                font-weight: 700;
                font-size: 19px;
                color: #C90000;
                text-align: center;
            }

            .section .container-right table, th, td {
                font-size: 14px;
                border: 1px solid #a3a0a0;
            }

        table tr th {
            font-size: 14px;
            text-align: center;
            color: white;
            background: #BD3232;
            padding: 0.5%;
        }

        .txt {
            text-align: unset;
            padding-left: 1%;
        }

        table tr td {
            text-align: center;
            font-weight: 500;
        }

        .nd {
            font-size: 15px;
            width: 5%;
        }

        .nd-1 {
            width: 16%;
        }

        .container-left .btn-button {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            align-content: center;
            justify-content: flex-start;
            align-items: center;
            margin: 1% 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                            <h2 class="container-left-title">ĐĂNG KÍ ĂN SÁNG, UỐNG SỮA</h2>
                            <div class="container-content">
                                <p class="container-left-sec">
                                    <span class="left-star" style="color: red">*</span>
                                    Phụ huynh đăng kí ăn sáng/uống sữa là đăng kí vào cuối tháng và học phí ăn sáng sẽ được tính vào tháng tiếp theo.
                                </p>
                                <p class="container-left-sec">
                                    <span class="left-star" style="color: red">*</span>
                                    Phụ huynh hủy đăng kí ăn sáng/uống sữa là đăng ký vào cuối tháng. Học phí ăn sáng vẫn được tính đến hết tháng hiện tại và sẽ không tính học phí ăn sáng vào tháng tiếp theo.
                                </p>
                            </div>

                            <div class="container-left-img">
                                <div class="left-img">
                                    <input type="radio" name="choose" style="top: 18%; left: 18%;" />
                                    <img style="padding: 15% 15% 0 15%;" src="/images/DangKyAnSangUongSua/an.png" />
                                    <p style="font-size: 14px; font-weight: 600; top: -5%; position: relative;">
                                        Ăn sáng
                                    </p>
                                </div>
                                <div class="left-img-1" style="width: 30%; height: 91%; background-color: white; box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);">
                                    <input type="radio" name="choose" style="left: 49%; top: 18%;" />
                                    <img style="padding: 15% 15% 0 15%;" src="/images/DangKyAnSangUongSua/uong.png" />
                                    <p style="font-size: 14px; font-weight: 600; top: -4%; position: relative;">
                                        Uống sữa
                                    </p>
                                </div>
                                <div class="left-img-3" style="width: 32%; height: 91%; background-color: white; box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);">
                                    <input type="radio" name="choose" style="left: 79%; top: 18%;" />
                                    <img style="padding: 15% 15% 0 15%;" src="/images/DangKyAnSangUongSua/an-uong.png" />
                                    <p style="font-size: 14px; font-weight: 600; top: -7%; position: relative;">
                                        Ăn sáng, uống sữa
                                    </p>

                                </div>
                            </div>
                            <div class="btn-button">
                                <button class="btn-sign">Đăng ký</button>
                                <button class="btn-cancel">Hủy đăng ký</button>

                            </div>
                        </div>

                    </div>

                    <div class="col-7" style="padding: 0">
                        <div class="container-right">
                            <h2 class="container-right-title">LỊCH SỬ ĐĂNG KÍ</h2>
                            <label for="nam-hoc" style="font-weight: 600;">Năm học</label>
                            <select id="nam-hoc" style="border: none;">
                                <option value="">2022-2023</option>
                                <option value="">2021-2022</option>
                                <option value="">2020-2021</option>
                            </select>
                            <div>
                                <table>
                                    <tr>
                                        <th class="nd">STT</th>
                                        <th class="nd-1">Ngày bắt đầu</th>
                                        <th class="nd-1">Ngày kết thúc</th>
                                        <th>Ngày đăng kí</th>
                                        <th>Nội dung</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>17/08/2022</td>
                                        <td>17/08/2022</td>
                                        <td>16-08-2022 12:44:26</td>
                                        <td class="txt">Kiwi vẫn còn ốm mệt ạ.</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>15/08/2022</td>
                                        <td>17/08/2022</td>
                                        <td>16-08-2022 12:44:26</td>
                                        <td class="txt">Bé bị ốm, ho mệt ạ.</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>15/08/2022</td>
                                        <td>17/08/2022</td>
                                        <td>16-08-2022 12:44:26</td>
                                        <td class="txt">Mẹ xin phép cho Miso nghỉ 1 ngày
                                (thứ 2) do con bị ốm chưa khỏe hẳn cô nhé.</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>15/08/2022</td>
                                        <td>17/08/2022</td>
                                        <td>16-08-2022 12:44:26</td>
                                        <td class="txt">Kiwi bị sốt chưa đỡ nên xin nghỉ tiếp
                                2 ngày cô nhé.</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>



