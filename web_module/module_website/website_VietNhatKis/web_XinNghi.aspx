<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_XinNghi.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_XinNghi" %>

<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="../../../assets/css/gioithieu/Calender.css" rel="stylesheet" />
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #e7e7e8;
        }

        .container_left {
            /*            background-color: #ffffff;*/
            border-radius: 10px;
            margin: 1% 0;
            display: flex;
            height: 32rem;
        }



        .container_right {
            background-color: #ffffff;
            border-radius: 10px;
            overflow: auto;
            margin-left: 0;
            max-height: 32rem;
            height: 100%;
            padding: 2%;
            overflow-x: hidden;
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

        /*thead {
            background-color: #f7e8e3;
            border: 2px solid #f1ae98;
        }*/

        tr {
            border-bottom: 1.5px solid #f1ae98;
        }

        .row {
            padding: 0 !important;
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
                padding: 10px;
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
                font-size: 12px;
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
            padding: 2px 8px;
            border-radius: 8px;
            outline: none;
            border: 1px solid #333;
        }

        .flex-between {
            margin-bottom: 2%;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
        }

        .blockMain {
            text-align: center;
            background-color: white;
            border-radius: 10px;
            box-shadow: 3px 2px 18px #99999942;
            height: 100%;
            display: flex;
            flex-direction: column;
            flex-wrap: nowrap;
            justify-content: center;
        }

        .col-5 {
            padding: 0
        }

        .container_left_bottom {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 2%;
            display: flex;
            flex-direction: column;
            width: 60%;
            justify-content: center;
        }

        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        h6 {
            font-size: 14px;
        }

        .table tr {
            font-size: 11px;
            padding: 1% 0.5%;
        }

        .container-calendar th {
            text-align: inherit;
            border: 1px solid white;
            padding: 1%;
            color: white;
            background: #a10101;
            font-size: 10px;
            font-weight: 500;
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
                <div class="container_left col-7">
                    <div class="container_left_top" style="margin-right: 2.5%;">
                        <div id="block_DiemDanh" class="blockMain">
                            <div id="block_ContentDiemDanh">
                                <div>
                                    <div id="block_TitleDiemDanh" class="block_Title" style="font-size: 18px; font-weight: bold;">Nhật kí điểm danh</div>
                                    <div class="container-calendar" style="border-radius: 10px;">

                                        <h3 id="monthAndYear" class="mb-4">Tháng 08 2022</h3>

                                        <div class="button-container-calendar" style="display: none;">
                                            <button id="previous" onclick="previous()">‹</button>
                                            <button id="next" onclick="next()">›</button>
                                        </div>

                                        <table class="table-calendar" id="calendar" data-lang="en">
                                            <thead id="thead-month">
                                                <tr>
                                                    <th data-days="CN" class="date_header">CN</th>
                                                    <th data-days="Thứ 2" class="date_header">Thứ 2</th>
                                                    <th data-days="Thứ 3" class="date_header">Thứ 3</th>
                                                    <th data-days="Thứ 4" class="date_header">Thứ 4</th>
                                                    <th data-days="Thứ 5" class="date_header">Thứ 5</th>
                                                    <th data-days="Thứ 6" class="date_header">Thứ 6</th>
                                                    <th data-days="Thứ 7" class="date_header">Thứ 7</th>
                                                </tr>
                                            </thead>
                                            <tbody id="calendar-body">
                                                <tr>
                                                    <td></td>
                                                    <td data-date="1" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>1</span></td>
                                                    <td data-date="2" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>2</span></td>
                                                    <td data-date="3" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>3</span></td>
                                                    <td data-date="4" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>4</span></td>
                                                    <td data-date="5" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>5</span></td>
                                                    <td data-date="6" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>6</span></td>
                                                </tr>
                                                <tr>
                                                    <td data-date="7" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>7</span></td>
                                                    <td data-date="8" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>8</span></td>
                                                    <td data-date="9" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>9</span></td>
                                                    <td data-date="10" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>10</span></td>
                                                    <td data-date="11" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>11</span></td>
                                                    <td data-date="12" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>12</span></td>
                                                    <td data-date="13" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>13</span></td>
                                                </tr>
                                                <tr>
                                                    <td data-date="14" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>14</span></td>
                                                    <td data-date="15" data-month="8" data-year="2022" data-month_name="Tháng 08" class="ngay_nghihoc"><span>15</span></td>
                                                    <td data-date="16" data-month="8" data-year="2022" data-month_name="Tháng 08" class="ngay_nghihoc"><span>16</span></td>
                                                    <td data-date="17" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>17</span></td>
                                                    <td data-date="18" data-month="8" data-year="2022" data-month_name="Tháng 08" class="ngay_nghihoc"><span>18</span></td>
                                                    <td data-date="19" data-month="8" data-year="2022" data-month_name="Tháng 08" class="ngay_nghihoc"><span>19</span></td>
                                                    <td data-date="20" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>20</span></td>
                                                </tr>
                                                <tr>
                                                    <td data-date="21" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker selected"><span>21</span></td>
                                                    <td data-date="22" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>22</span></td>
                                                    <td data-date="23" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>23</span></td>
                                                    <td data-date="24" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>24</span></td>
                                                    <td data-date="25" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>25</span></td>
                                                    <td data-date="26" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>26</span></td>
                                                    <td data-date="27" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>27</span></td>
                                                </tr>
                                                <tr>
                                                    <td data-date="28" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>28</span></td>
                                                    <td data-date="29" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>29</span></td>
                                                    <td data-date="30" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>30</span></td>
                                                    <td data-date="31" data-month="8" data-year="2022" data-month_name="Tháng 08" class="date-picker"><span>31</span></td>
                                                </tr>
                                                <tr></tr>
                                            </tbody>
                                        </table>

                                        <div class="footer-container-calendar" style="display: none;">
                                            <label for="month">Jump To: </label>
                                            <select id="month" onchange="jump()">
                                                <option value="0">Jan</option>
                                                <option value="1">Feb</option>
                                                <option value="2">Mar</option>
                                                <option value="3">Apr</option>
                                                <option value="4">May</option>
                                                <option value="5">Jun</option>
                                                <option value="6">Jul</option>
                                                <option value="7">Aug</option>
                                                <option value="8">Sep</option>
                                                <option value="9">Oct</option>
                                                <option value="10">Nov</option>
                                                <option value="11">Dec</option>
                                            </select>
                                            <select id="year" onchange="jump()">
                                                <option value="1970">1970</option>
                                                <option value="1971">1971</option>
                                                <option value="1972">1972</option>
                                                <option value="1973">1973</option>
                                                <option value="1974">1974</option>
                                                <option value="1975">1975</option>
                                                <option value="1976">1976</option>
                                                <option value="1977">1977</option>
                                                <option value="1978">1978</option>
                                                <option value="1979">1979</option>
                                                <option value="1980">1980</option>
                                                <option value="1981">1981</option>
                                                <option value="1982">1982</option>
                                                <option value="1983">1983</option>
                                                <option value="1984">1984</option>
                                                <option value="1985">1985</option>
                                                <option value="1986">1986</option>
                                                <option value="1987">1987</option>
                                                <option value="1988">1988</option>
                                                <option value="1989">1989</option>
                                                <option value="1990">1990</option>
                                                <option value="1991">1991</option>
                                                <option value="1992">1992</option>
                                                <option value="1993">1993</option>
                                                <option value="1994">1994</option>
                                                <option value="1995">1995</option>
                                                <option value="1996">1996</option>
                                                <option value="1997">1997</option>
                                                <option value="1998">1998</option>
                                                <option value="1999">1999</option>
                                                <option value="2000">2000</option>
                                                <option value="2001">2001</option>
                                                <option value="2002">2002</option>
                                                <option value="2003">2003</option>
                                                <option value="2004">2004</option>
                                                <option value="2005">2005</option>
                                                <option value="2006">2006</option>
                                                <option value="2007">2007</option>
                                                <option value="2008">2008</option>
                                                <option value="2009">2009</option>
                                                <option value="2010">2010</option>
                                                <option value="2011">2011</option>
                                                <option value="2012">2012</option>
                                                <option value="2013">2013</option>
                                                <option value="2014">2014</option>
                                                <option value="2015">2015</option>
                                                <option value="2016">2016</option>
                                                <option value="2017">2017</option>
                                                <option value="2018">2018</option>
                                                <option value="2019">2019</option>
                                                <option value="2020">2020</option>
                                                <option value="2021">2021</option>
                                                <option value="2022">2022</option>
                                                <option value="2023">2023</option>
                                                <option value="2024">2024</option>
                                                <option value="2025">2025</option>
                                                <option value="2026">2026</option>
                                                <option value="2027">2027</option>
                                                <option value="2028">2028</option>
                                                <option value="2029">2029</option>
                                                <option value="2030">2030</option>
                                                <option value="2031">2031</option>
                                                <option value="2032">2032</option>
                                                <option value="2033">2033</option>
                                                <option value="2034">2034</option>
                                                <option value="2035">2035</option>
                                                <option value="2036">2036</option>
                                                <option value="2037">2037</option>
                                                <option value="2038">2038</option>
                                                <option value="2039">2039</option>
                                                <option value="2040">2040</option>
                                                <option value="2041">2041</option>
                                                <option value="2042">2042</option>
                                                <option value="2043">2043</option>
                                                <option value="2044">2044</option>
                                                <option value="2045">2045</option>
                                                <option value="2046">2046</option>
                                                <option value="2047">2047</option>
                                                <option value="2048">2048</option>
                                                <option value="2049">2049</option>
                                                <option value="2050">2050</option>
                                            </select>
                                        </div>
                                        <div class="col-auto" style="display: flex; flex-direction: row-reverse; padding-right: 0; margin-top: 5%;">
                                            <button style="display: block; background: #a10101; line-height: 1;" class="btn  btn-success" type="submit">Điểm danh</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="container_left_bottom" style="box-shadow: 2px 3px 8px 5px #80808029;">
                        <div>
                            <h4 style="padding-bottom: 20px;">Đơn xin nghỉ</h4>
                        </div>
                        <div id="block_Content">
                            <div class="flex-between position-relative" style="margin-bottom: 2% 0">
                                <h6>Ngày xin:</h6>
                                <input type="date" id="Date1" runat="server" class="inputBlock">
                            </div>
                            <div class="flex-between position-relative" style="margin-bottom: 2% 0">
                                <h6>Từ ngày:</h6>
                                <input type="date" id="dteTuNgay" runat="server" class="inputBlock">
                            </div>
                            <div class="flex-between position-relative" style="margin-bottom: 20px;">
                                <h6>Đến ngày:</h6>
                                <input type="date" id="dteDenNgay" runat="server" class="inputBlock">
                            </div>
                            <div class="flex-between" style="margin-bottom: 2% 0">
                                <textarea id="txtDanDo" runat="server" class="inputBlock" style="height: 100%; border-radius: 8px; padding: 1%; width: 100%;" placeholder="Lý do..." rows="4"></textarea>
                            </div>
                            <%--  <div class="flex-between" style="margin-bottom: 20px;">
                    <textarea id="txtConTent" runat="server" class="inputBlock" style="height: 100%; width: 100%;" placeholder="Nhập nội dung..." rows="4"></textarea>
                    </div>--%>
                            <div class="col-auto" style="display: flex; flex-direction: row-reverse; padding-right: 0; margin-top: 5%;">
                                <button style="display: block; background: #a10101; line-height: 1;" class="btn  btn-success" type="submit">Xin phép nghỉ</button>
                            </div>
                        </div>
                        <input type="text" id="txtSoNgayNghi" runat="server" hidden />
                        <input type="text" id="txtNgayBatDau" runat="server" hidden />
                        <input type="text" id="txtNgayKetThuc" runat="server" hidden />
                        <input type="text" id="txtDanhSachNgayNghi" runat="server" hidden />
                    </div>
                </div>
                <div class="col-5" style="margin: 1% 0; padding-right: 0">
                    <div class="container_right" style="box-shadow: 2px 3px 8px 5px #80808029;">
                        <div>
                            <h4 style="font-size: 20px; font-weight: bold; color: #1f58c1; /* color: aqua; */">Lịch sử xin nghỉ năm <span class="year">2022-2023</span></h4>
                        </div>

                        <div>
                            <div style="width: 100%; margin: 2% 0;">
                                <select>
                                    <option class="year" selected>2022-2023</option>
                                    <option>combobox 1</option>
                                    <option>combobox 2</option>
                                    <option>combobox 3</option>
                                </select>
                            </div>
                            <div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">STT</th>
                                            <th scope="col">Ngày bắt đầu</th>
                                            <th scope="col">Ngày kết thúc</th>
                                            <th scope="col">Ngày đăng kí</th>
                                            <th scope="col">Nội dung</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td scope="row">1</td>
                                            <td>22/08/2022</td>
                                            <td>23/08/2022</td>
                                            <td>21/8/2022</td>
                                            <td>Bé bị sốt</td>
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
    </div>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.2.3/flatpickr.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment-with-locales.min.js"></script>
    <script>

        $(function () {
            var dtToday = new Date();

            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if (month < 10)
                month = '0' + month.toString();
            if (day < 10)
                day = '0' + day.toString();

            var maxDate = year + '-' + month + '-' + day;

            $('#ContentPlaceHolder1_dteTuNgay').attr('min', maxDate);
            $('#ContentPlaceHolder1_dteDenNgay').attr('min', maxDate);
        });

        function generate_year_range(start, end) {
            var years = "";
            for (var year = start; year <= end; year++) {
                years += "<option value='" + year + "'>" + year + "</option>";
            }
            return years;
        }

        var today = new Date();
        var currentMonth = today.getMonth();
        var currentYear = today.getFullYear();

        var selectYear = document.getElementById("year");

        var selectMonth = document.getElementById("month");


        var createYear = generate_year_range(1970, 2050);
        /** or
        * createYear = generate_year_range( 1970, currentYear );
        */

        document.getElementById("year").innerHTML = createYear;

        var calendar = document.getElementById("calendar");
        var lang = calendar.getAttribute('data-lang');

        var months = ["Tháng 01", "Tháng 02", "Tháng 03", "Tháng 04", "Tháng 05", "Tháng 06", "Tháng 07", "Tháng 08", "Tháng 09", "Tháng 10", "Tháng 11", "Tháng 12"];
        var days = ["CN", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7"];

        var dayNghi = ["CN", "Thứ 7"];

        var dayHeader = "<tr>";

        for (day in days) {
            dayHeader += "<th data-days='" + days[day] + "' class='date_header'>" + days[day] + "</th>";
        }

        dayHeader += "</tr>";

        document.getElementById("thead-month").innerHTML = dayHeader;

        monthAndYear = document.getElementById("monthAndYear");
        showCalendar(currentMonth, currentYear);

        function jump() {
            currentYear = parseInt(selectYear.value);
            currentMonth = parseInt(selectMonth.value);
            showCalendar(currentMonth, currentYear);
        }

        <%--function showCalendar(month, year) {
            var soNgayNghi = parseInt(document.getElementById("<%=txtSoNgayNghi.ClientID%>").value);

            var ngayBatDau = document.getElementById("<%=txtNgayBatDau.ClientID%>").value.split(';');
            var ngayKetThuc = document.getElementById("<%=txtNgayKetThuc.ClientID%>").value.split(';');

            //var arr_ngayNghi = document.getElementById('<%=txtDanhSachNgayNghi.ClientID%>').value.split(',');
            var arr_ngayNghi = [];
            var arr_thangNghi = [];--%>

        console.log(ngayBatDau.length, ngayKetThuc.length)

        Date.prototype.addDays = function (days) {
            const date = new Date(this.valueOf());
            date.setDate(date.getDate() + days);
            return date;
        };

        for (var i = 0; i < ngayBatDau.length; i++) {
            var middle
            var future = moment(ngayKetThuc[i]);
            var start = moment(ngayBatDau[i]);
            var d = parseInt(future.diff(start, 'days') + 1);//số lượng ngày nghỉ
            //console.log(d);
            var ngayNghiBatDau = new Date(ngayBatDau[i]);
            console.log(ngayNghiBatDau)
            console.log(ngayNghiBatDau.getMonth() + 1)
            //console.log(ngayNghiBatDau.addDays(1).getMonth().toString())
            for (var j = 1; j <= d; j++) {
                if (j == 1) {
                    arr_ngayNghi.push(ngayNghiBatDau.getDate().toString())
                    parseInt(arr_thangNghi.push(ngayNghiBatDau.getMonth() + 1));
                } else {
                    arr_ngayNghi.push(middle.getDate().toString())
                    parseInt(arr_thangNghi.push(middle.getMonth() + 1));
                }
                middle = ngayNghiBatDau.addDays(j)
            }
        }
        //const d = new Date("July 21, 1983 01:15:00");
        //let day = d.getDate();
        //console.log(day)

        //var ngayNghiBatDau = new Date(ngayBatDau);
        //var middle

        //var listNgayBatDau = 

        //arr_ngayNghi.push(ngayNghiBatDau.getDate().toString());
        //parseInt(arr_thangNghi.push(ngayNghiBatDau.getMonth()));

        //for (var i = 1; i <= soNgayNghi; i++) {
        //    if (i == 1) {
        //        arr_ngayNghi.push(ngayNghiBatDau.addDays(1).getDate().toString())
        //        parseInt(arr_thangNghi.push(ngayNghiBatDau.addDays(1).getMonth()));
        //    } else {
        //        arr_ngayNghi.push(middle.addDays(1).getDate().toString())
        //        parseInt(arr_thangNghi.push(middle.addDays(1).getMonth()));
        //    }
        //    middle = ngayNghiBatDau.addDays(i)
        //}

        console.log(arr_ngayNghi, arr_thangNghi, soNgayNghi)

        var firstDay = (new Date(year, month)).getDay();

        tbl = document.getElementById("calendar-body");

        tbl.innerHTML = "";

        monthAndYear.innerHTML = months[month] + " " + year;
        selectYear.value = year;
        selectMonth.value = month;

        // creating all cells
        var date = 1;
        for (var i = 0; i < 6; i++) {
            var row = document.createElement("tr");

            for (var j = 0; j < days.length; j++) {
                if (i === 0 && j < firstDay) {
                    cell = document.createElement("td");
                    cellText = document.createTextNode("");
                    cell.appendChild(cellText);
                    row.appendChild(cell);
                } else if (date > daysInMonth(month, year)) {
                    break;
                } else {
                    cell = document.createElement("td");
                    cell.setAttribute("data-date", date);
                    cell.setAttribute("data-month", month + 1);
                    cell.setAttribute("data-year", year);
                    cell.setAttribute("data-month_name", months[month]);
                    cell.className = "date-picker";
                    cell.innerHTML = "<span>" + date + "</span>";

                    if (date === today.getDate() && year === today.getFullYear() && month === today.getMonth()) {
                        cell.className = "date-picker selected";
                    }

                    for (var x = 0; x < arr_ngayNghi.length; x++)
                        if (arr_thangNghi[x] == currentMonth + 1)
                            if (arr_ngayNghi[x] == cell.getAttribute("data-date"))
                                cell.setAttribute("class", "ngay_nghihoc")
                    row.appendChild(cell);
                    date++;
                }
            }
            tbl.appendChild(row);
        }      

        function daysInMonth(iMonth, iYear) {
            return 32 - new Date(iYear, iMonth, 32).getDate();
        }


    </script>

</asp:Content>

