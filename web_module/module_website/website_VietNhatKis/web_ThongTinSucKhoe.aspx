<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage2.master" AutoEventWireup="true" CodeFile="web_ThongTinSucKhoe.aspx.cs" Inherits="web_ThongTinSucKhoe" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>
<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>

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
            padding: 0 1%;
            border-radius: 10px;
            display: flex;
            margin: 1% 0;
            flex-direction: column;
            flex-wrap: nowrap;
            justify-content: space-around;
            text-align: center;
        }

        .container_left_top {
            background-color: #ffffff;
            flex-direction: column;
            flex-wrap: nowrap;
            align-items: center;
            color: #B51A1A;
            font-weight: bold;
        }

        .container_right {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 1%;
            overflow: auto;
            margin-left: 0;
            max-height: 32rem;
            margin: 1% 0;
            overflow-x: hidden;
            overflow-y: auto;
        }

        .table {
            width: 100%;
            max-width: 100%;
            background-color: transparent;
            text-align: center;
            height: 50%;
        }

        .h4, h4 {
            font-size: 18px;
            text-align: center;
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
            /*height: 600px;*/
            margin-right: -87px;
        }

        .block-bieudo {
            background-color: #ffffff;
            width: 100%;
            height: 32rem;
            border-radius: 10px;
            padding: 1%;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }

        .table td, .table th {
            padding: 0.5rem;
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
                <div class="container_left col-4">
                    <div class="block-bieudo">
                        <div class="container_left_top">
                            <div>
                                <h4>BIỂU ĐỒ CHIỀU CAO</h4>
                            </div>

                            <canvas id="myChart" style="width: 100%; max-width: 400px"></canvas>
                        </div>
                        <div class="container_left_top">
                            <div>
                                <h4>BIỂU ĐỒ CÂN NĂNG</h4>
                            </div>
                            <canvas id="myChart1" style="width: 100%; max-width: 400px"></canvas>
                        </div>
                    </div>

                </div>
                <div class="container_right col-8">
                    <div>
                        <h4 style="font-size: 20px; font-weight: bold; color: #1f58c1; /* color: aqua; */">Theo dõi sức khỏe năm <span class="year">2022</span></h4>
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
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- </div>--%>
    <script>
        var xValues = [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150];
        var yValues = [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15];

        new Chart("myChart", {
            type: "line",
            data: {
                labels: xValues,
                datasets: [{
                    fill: false,
                    lineTension: 0,
                    backgroundColor: "rgba(0,0,255,1.0)",
                    borderColor: "rgba(0,0,255,0.1)",
                    data: yValues
                }]
            },
            options: {
                legend: { display: false },
                scales: {
                    yAxes: [{ ticks: { min: 6, max: 16 } }],
                }
            }
        });
        var xValues = [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150];
        var yValues = [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15];

        new Chart("myChart1", {
            type: "line",
            data: {
                labels: xValues,
                datasets: [{
                    fill: false,
                    lineTension: 0,
                    backgroundColor: "rgba(0,0,255,1.0)",
                    borderColor: "rgba(0,0,255,0.1)",
                    data: yValues
                }]
            },
            options: {
                legend: { display: false },
                scales: {
                    yAxes: [{ ticks: { min: 6, max: 16 } }],
                }
            }
        });
    </script>
</asp:Content>

