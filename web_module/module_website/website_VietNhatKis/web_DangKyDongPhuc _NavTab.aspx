<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_DangKyDongPhuc _NavTab.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_DangKyDongPhuc" %>

<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
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
            height: 32rem;
            overflow: auto;
        }

            .table td, .table th {
                padding: 0.5rem;
                vertical-align: top;
                border-top: 1px solid #940808;
            }

        th {
            text-align: inherit;
            border: 1px solid white;
            padding: 0.5%;
            color: white;
            background: #a10101;
            font-weight: 500;
            font-size: 17px;
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

        .đo-dung {
            width: 100%;
        }

            .đo-dung td {
                border: 1px solid black;
            }

                .đo-dung td input {
                    border: none !important;
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
        a{
             color: #940808;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid row">
        <div class="col-3">
            <uc1:Web_ThongTinCaNhan runat="server" ID="Web_ThongTinCaNhan" />
        </div>
        <%--<div class="main col-9">--%>
        <div class="col-9" style="padding: 0">
            <div class="col-12" style="padding: 0">
                <uc1:Web_VietNhatKids runat="server" ID="Web_VietNhatKids" />
            </div>
            <div class="col-12 row" style="padding: 0">
                <div class="container_left col-6">
                    <div class="block-bieudo" style="box-shadow: 2px 3px 8px 5px #80808029;">
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="true">Đăng ký lễ phục</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Đăng kí đồng phục</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Đăng kí dụng cụ</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <div class="box__modal" id="box-lephuc">
                                    <div id="block_Title" class="block_Title">BẢNG SỐ ĐO LỄ PHỤC</div>
                                    <table class="table-dongphuc">
                                        <tr>
                                            <th>Size số</th>
                                            <th>Cân nặng (kg)</th>
                                            <th>Vai (cm)</th>
                                            <th>Ngực (cm)</th>
                                            <th>Dài (cm)</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>10 - 11</td>
                                            <td>30</td>
                                            <td>36</td>
                                            <td>45</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>12 - 13</td>
                                            <td>30</td>
                                            <td>38</td>
                                            <td>47</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>14 - 15 </td>
                                            <td>31</td>
                                            <td>39</td>
                                            <td>48</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>16 - 17</td>
                                            <td>32</td>
                                            <td>40</td>
                                            <td>50</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>18 - 19</td>
                                            <td>34</td>
                                            <td>42</td>
                                            <td>52</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>20 - 23</td>
                                            <td>36</td>
                                            <td>44</td>
                                            <td>54</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>24 - 27</td>
                                            <td>40</td>
                                            <td>46</td>
                                            <td>56</td>
                                        </tr>
                                    </table>
                                    <br />
                                    <table class="table-dongphuc">
                                        <tbody style="font-weight: 500;">
                                            <tr style="font-size: 15px;">
                                                <th>Kiểu</th>
                                                <th>Size số</th>
                                                <th>Số lượng (bộ)</th>
                                            </tr>
                                            <tr>
                                                <td>Lễ phục</td>
                                                <td>
                                                    <div style="display: flex; justify-content: space-around">
                                                        <label class="mr-2">
                                                            <input type="radio" name="lephuc" id="rdSo1" value="Số 1" onclick="myLePhuc(this.value)">
                                                            Số 1
                                                        </label>
                                                        <label class="mr-2">
                                                            <input type="radio" name="lephuc" id="rdSo2" value="Số 2" onclick="myLePhuc(this.value)">
                                                            Số 2
                                                        </label>
                                                        <label class="mr-2">
                                                            <input type="radio" name="lephuc" id="rdSo3" value="Số 3" onclick="myLePhuc(this.value)">
                                                            Số 3
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="lephuc" id="rdSo4" value="Số 4" onclick="myLePhuc(this.value)">
                                                            Số 4
                                                        </label>
                                                    </div>
                                                    <div style="display: flex; justify-content: space-around">
                                                        <label class="mr-2">
                                                            <input type="radio" name="lephuc" id="rdSo5" value="Số 5" onclick="myLePhuc(this.value)">
                                                            Số 5
                                                        </label>
                                                        <label class="mr-2">
                                                            <input type="radio" name="lephuc" id="rdSo6" value="Số 6" onclick="myLePhuc(this.value)">
                                                            Số 6
                                                        </label>
                                                        <label class="mr-2">
                                                            <input type="radio" name="lephuc" id="rdSo7" value="Số 7" onclick="myLePhuc(this.value)">
                                                            Số 7
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="lephuc" value="Khác" onclick="myLePhuc(this.value)">
                                                            Khác
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <input style="width: 6rem; text-align: center" name="ctl00$ContentPlaceHolder1$txtSoLuongLePhuc" type="number" id="ContentPlaceHolder1_txtSoLuongLePhuc" value="0" min="0" class="inputBlock" placeholder="Nhập số lượng (bộ) ..." autocomplete="off" style="text-align: center">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <input class="btn_Gui" type="submit" name="ctl00$ContentPlaceHolder1$btnGui" value="Gửi" id="ContentPlaceHolder1_btnGui">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <div class="box__modal" id="box-dongphuc">
                                    <div class="block_Title">BẢNG SỐ ĐO ĐỒNG PHỤC</div>
                                    <table class="table-dongphuc">
                                        <tr>
                                            <th>Size số</th>
                                            <th>Chiều cao (cm)</th>
                                            <th>Cân nặng (kg)</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>80 - 85</td>
                                            <td>8-10</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>85 - 90</td>
                                            <td>11 - 13</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>90 - 95</td>
                                            <td>14 - 16</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>95 - 100</td>
                                            <td>17 - 19</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>100 - 105</td>
                                            <td>20 - 23</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>105 - 110</td>
                                            <td>23 - 26</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>110 - 120</td>
                                            <td>27 - 32</td>
                                        </tr>
                                    </table>
                                    <br />
                                    <table class="table-dongphuc">
                                        <tbody style="font-weight: 500;">
                                            <tr style="font-size: 15px;">
                                                <th>Kiểu</th>
                                                <th>Size số</th>
                                                <th>Số lượng (bộ)</th>
                                            </tr>
                                            <tr>
                                                <td>Đồng phục</td>
                                                <td>
                                                    <div style="display: flex; justify-content: space-around">
                                                        <label>
                                                            <input type="radio" name="lephuc" id="rdSo1" value="Số 1" onclick="myLePhuc(this.value)">
                                                            Số 1
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="lephuc" id="rdSo2" value="Số 2" onclick="myLePhuc(this.value)">
                                                            Số 2
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="lephuc" id="rdSo3" value="Số 3" onclick="myLePhuc(this.value)">
                                                            Số 3
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="lephuc" id="rdSo4" value="Số 4" onclick="myLePhuc(this.value)">
                                                            Số 4
                                                        </label>
                                                    </div>
                                                    <div style="display: flex; justify-content: space-around">
                                                        <label>
                                                            <input type="radio" name="lephuc" id="rdSo5" value="Số 5" onclick="myLePhuc(this.value)">
                                                            Số 5
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="lephuc" id="rdSo6" value="Số 6" onclick="myLePhuc(this.value)">
                                                            Số 6
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="lephuc" id="rdSo7" value="Số 7" onclick="myLePhuc(this.value)">
                                                            Số 7
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="lephuc" value="Khác" onclick="myLePhuc(this.value)">
                                                            Khác
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <input style="width: 6rem; text-align: center" name="ctl00$ContentPlaceHolder1$txtSoLuongLePhuc" type="number" id="ContentPlaceHolder1_txtSoLuongLePhuc" value="0" min="0" class="inputBlock" placeholder="Nhập số lượng (bộ) ..." autocomplete="off" style="text-align: center">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                                <input class="btn_Gui" type="submit" name="ctl00$ContentPlaceHolder1$btnGui" value="Gửi">
                            </div>
                            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                                <div class="box__modal" id="box-dodung">
                                    <table class="đo-dung">
                                        <tbody>
                                            <tr>
                                                <th>&nbsp;&nbsp;&nbsp;#&nbsp;&nbsp;&nbsp;</th>
                                                <th>Tên đồ dùng</th>
                                                <th>Số lượng</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" id="ckDan" value="Đàn" onclick="checkedDan(this.value)">
                                                </td>
                                                <td>Đàn</td>
                                                <td>
                                                    <input name="ctl00$ContentPlaceHolder1$txtDoDungDan" type="text" id="ContentPlaceHolder1_txtDoDungDan" style="display: none">
                                                    <input name="ctl00$ContentPlaceHolder1$txtSoLuongDan" type="number" id="ContentPlaceHolder1_txtSoLuongDan" value="0" min="0" class="inputBlock" placeholder="Nhập số lượng ..." autocomplete="off" style="text-align: center">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" id="ckDayDan" value="Dây đàn" onclick="checkedDayDan(this.value)"></td>
                                                <td>Dây đàn</td>
                                                <td>
                                                    <input name="ctl00$ContentPlaceHolder1$txtDoDungDayDan" type="text" id="ContentPlaceHolder1_txtDoDungDayDan" style="display: none">
                                                    <input name="ctl00$ContentPlaceHolder1$txtSoLuongDayDan" type="number" id="ContentPlaceHolder1_txtSoLuongDayDan" value="0" min="0" class="inputBlock" placeholder="Nhập số lượng ..." autocomplete="off" style="text-align: center">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" id="ckMen" value="Mền" onclick="checkedMen(this.value)"></td>
                                                <td>Mền</td>
                                                <td>
                                                    <input name="ctl00$ContentPlaceHolder1$txtDoDungMen" type="text" id="ContentPlaceHolder1_txtDoDungMen" style="display: none">
                                                    <input name="ctl00$ContentPlaceHolder1$txtSoLuongMen" type="number" id="ContentPlaceHolder1_txtSoLuongMen" value="0" min="0" class="inputBlock" placeholder="Nhập số lượng ..." autocomplete="off" style="text-align: center">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" id="ckGoi" value="Gối" onclick="checkedGoi(this.value)"></td>
                                                <td>Gối</td>
                                                <td>
                                                    <input name="ctl00$ContentPlaceHolder1$txtDoDungGoi" type="text" id="ContentPlaceHolder1_txtDoDungGoi" style="display: none">
                                                    <input name="ctl00$ContentPlaceHolder1$txtSoLuongGoi" type="number" id="ContentPlaceHolder1_txtSoLuongGoi" value="0" min="0" class="inputBlock" placeholder="Nhập số lượng ..." autocomplete="off" style="text-align: center">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" id="ckBalo" value="Balo" onclick="checkedBalo(this.value)"></td>
                                                <td>Balo Việt Nhật</td>
                                                <td>
                                                    <input name="ctl00$ContentPlaceHolder1$txtDoDungBaLo" type="text" id="ContentPlaceHolder1_txtDoDungBaLo" style="display: none">
                                                    <input name="ctl00$ContentPlaceHolder1$txtSoLuongBalo" type="number" id="ContentPlaceHolder1_txtSoLuongBalo" value="0" min="0" class="inputBlock" placeholder="Nhập số lượng ..." autocomplete="off" style="text-align: center">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <input class="btn_Gui" type="submit" name="ctl00$ContentPlaceHolder1$btnGui" value="Gửi" style="margin-top: 1%; margin-right: 0;">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container_right col-6">
                    <div>
                        <h4 style="font-size: 20px; font-weight: bold; color: #1f58c1; text-align: center; color: #940808;">LỊCH SỬ ĐẶT <span class="year">2020</span></h4>
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
                                        <th scope="col">Thời gian</th>
                                        <th scope="col">Loại</th>
                                        <th scope="col">Size</th>
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
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

