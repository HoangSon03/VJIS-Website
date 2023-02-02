<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_GiaiDauCoVua.aspx.cs" Inherits="web_module_web_GiaiDauCoVua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <style>
        .btn.btnk {
            color: #fff !important;
            background-color: #8e191b !important;
            padding: 0px 26px;
            margin: 20px 138px;
            font-weight: 600;
            font-size: 20px;
            box-shadow: 1px 1px 5px 1px #000000
        }

        input {
            margin: 0% 1%;
        }

        .tab-content {
            display: flex;
        }

        .block-CoVua {
            background-image: url('../imageGame/game-giaidau/2-50.png');
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            font-size: 25px;
        }

        table, tr, td {
            text-align: center;
            width: 100%;
        }

        tr, td, img {
            width: 100px;
            height: 60px;
            margin-top: 20px;
        }

        tr {
            background-image: url('../imageGame/game-giaidau/3-70.png');
        }

        .imgg {
            margin-top: -30px;
            width: 90px;
            height: 90px;
        }
    </style>
    <script>
        function myGioiTinh(id) {
            document.getElementById('<% =txtGioiTinh.ClientID%>').value = id;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="higlobal" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hislider" runat="Server">
    <div class="row">
        <div class="col-md-3 col-sm-4 d-none d-sm-none d-sm-block sticky-top">
            <div class="irs-side-bar">
                <div class="irs-categories">
                </div>
            </div>
        </div>
        <div class="background">
            <div style="display: flex; margin-top: 2%; align-items: center; font-size: 20px; margin-left: 12%;">
                Giới tính:
                Nam<input type="radio" name="name" value="true" onchange="myGioiTinh(this.value)" />
                Nữ<input type="radio" name="name" value="false" onchange="myGioiTinh(this.value)" />
                <input id="txtGioiTinh" runat="server" type="text" hidden="hidden" />
            </div>
            <div style="display: flex">
                <a href="#" id="btnK1" class="btn btnk" runat="server" onserverclick="btnK1_ServerClick">K1</a>
                <a href="#" id="btnK2_K3" class="btn btnk" runat="server" onserverclick="btnK2_K3_ServerClick">K2-K3</a>
                <a href="#" id="btnK4_K5" class="btn btnk" runat="server" onserverclick="btnK4_K5_ServerClick">K4-K5</a>
            </div>
            <div class="table-CoVua">
                <div class="block-CoVua">
                    <table>
                        <tr style="background-image: unset; font-weight:600;">
                            <td>STT</td>
                            <td></td>
                            <td style="width: 40%">Họ Và Tên</td>
                            <td>Lớp</td>
                            <td>Điểm</td>
                        </tr>
                        <%--hàng 1--%>
                        <asp:Repeater ID="rpBangXepHang" runat="server">
                            <ItemTemplate>
                                <tr style="height: 50px;">
                                </tr>
                                <tr>
                                    <td><%=STT++ %></td>
                                    <td>
                                        <img class="imgg" src="../imageGame/game-giaidau/avt.png" /></td>
                                    <td><%#Eval("hocsinh_name") %></td>
                                    <td><%#Eval("lop_name") %></td>
                                    <td><%#Eval("thanhtich_diem") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--hàng 2--%>
                        <%--<tr style="height: 50px;">
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>
                                <img class="imgg" src="../imageGame/game-giaidau/avt.png" /></td>
                            <td>Đặng Thị Bích Lài</td>
                            <td>1.1</td>
                            <td>2</td>
                        </tr>--%>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibelowtop" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hibodywrapper" runat="Server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>
