<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_ThucDon.aspx.cs" Inherits="web_module_web_ThucDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="higlobal" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hislider" runat="Server">
    <style>
        .table {
            width: 100%;
            max-width: 100%;
            margin-bottom: 1rem;
        }

        .card {
            box-shadow: 0px 3px 8px 1px #85818185;
            margin: 0 6%;
            margin-bottom: 10px;
        }

        th {
            height: 48px;
        }

        th, tr, td {
            text-align: center;
            border: 2px solid white;
        }

            tr td {
                width: 13%;
                height: 146px;
            }

        textarea {
            height: 122px;
        }

        .txt_bưa {
            font-weight: 600;
        }

        .button_gui {
            font-size: 19px;
            padding: 1%;
            text-align: center;
            width: 6%;
            height: 10%;
            color: white;
            border-radius: 6px;
            background-color: cornflowerblue;
        }

        .title_menu {
            text-align: center;
            width: 100%;
            height: 63PX;
            color: white;
            font-size: 20px;
            font-weight: 600;
            padding: 1%;
            /* display: flex; */
            background-color: #fc1420;
        }

        tr th {
            padding: 1%;
        }

            tr th div {
                text-align: left;
                display: flex;
                font-weight: 400;
                justify-content: revert;
                /* padding-left: 33%; */
                padding-left: 33%;
            }

        @media screen and (max-width: 1024px) {
            tr th div {
                padding-left: unset;
            }

            .thu {
                width: 56px;
            }
        }

        @media screen and (max-width: 850px) {
            .ribon {
                width: 126px !important;
                height: 63px !important;
                margin-left: 6% !important;
                z-index: 2 !important;
                background-position: inherit !important;
                margin-top: 2% !important;
                border-bottom-right-radius: unset !important;
                border-bottom-left-radius: unset !important;
                margin-bottom: 1.1% !important;
            }

            .note {
                font-size: 15px !important;
            }
        }

        .ribon {
            font-size: 22px;
            font-weight: 700;
            display: flex;
            DISPLAY: flex;
            color: #947f20;
            background-image: url(/images/gold.jpg);
            width: 126px;
            height: 153px;
            margin-left: 10%;
            z-index: 2;
            background-position: inherit;
            margin-top: 2%;
            border-bottom-right-radius: 56px;
            border-bottom-left-radius: 56px;
            margin-bottom: -7.9%;
            box-shadow: 1px 3px 9px 1px #80808078;
            position: relative;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .tuan {
            display: flex;
            padding: 1% 0;
            align-items: center;
            justify-content: space-around;
        }

            .tuan span {
                padding-right: 1%;
                font-weight: 600;
            }

        .table-bordered th, .table-bordered td {
            border-color: #999;
        }



        .title_note {
            padding: 0 5%;
            /* width: 74%; */
            padding: 10px 5px -1% 5%;
            margin-top: 51px;
        }

            .title_note span {
                font-size: 25px;
                font-family: none;
                font-style: italic;
            }

        .color-01 {
            background: #faffb0;
        }

        .color-02 {
            background: #b0ffbc;
        }

        .color-03 {
            background: #4fcaf7;
        }

        .color-04 {
            background: #ffb0f2;
        }

        .color-05 {
            background: #d88ff7;
        }

        .note {
            margin-left: 6%;
            font-size: 18px;
            font-family: none;
        }
    </style>
    <div class="container-fluid" style="margin-bottom: 90px;">
        <span style="display: flex; margin-top: 3%; font-weight: 700; font-size: 46PX; color: #c32c2c; justify-content: center;">THỰC ĐƠN HÀNG TUẦN</span>
        <div class="title_note">
            <span>Mỗi bữa ăn dinh dưỡng có thể giúp trẻ phát triển thể chất tốt hơn và tràn đầy năng lượng tích cực để tham gia các hoạt động ở trường. Hiểu được điều đó, các chuyên gia dinh dưỡng ở Việt Nhật luôn thay đổi thực đơn để mang đến cho học sinh bữa ăn ngon miệng và đảm bảo sức khỏe.</span>
        </div>
        <div class="ribon">
            <span id="txtTuan" runat="server"></span>
            <span style="text-align: center; font-size: 16px;" id="txtNgay" runat="server"></span>
        </div>
        <div class="card card-block" id="div_KetQua" runat="server">
            <div class="title_menu">BẢNG THỰC ĐƠN KHỐI TH, THCS & THPT</div>
            <table border="1">
                <tr style="background: beige;">
                    <th></th>
                    <th>ĂN SÁNG</th>
                    <th>BỮA TRƯA</th>
                    <th>ĂN XẾ</th>
                </tr>
                <asp:Repeater ID="rpThu" runat="server" OnItemDataBound="rpThu_ItemDataBound">
                    <ItemTemplate>
                        <tr class="thucdonthu">
                            <th class="thu"><%#Eval("thucdon_thu") %></th>
                            <asp:Repeater ID="rpMon" runat="server">
                                <ItemTemplate>
                                    <th>
                                        <div><%#Eval("thucdon_monan") %></div>
                                    </th>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
        <span class="note">*Thực đơn có thể thay đổi theo mùa vụ, thời tiết và hoàn cảnh!</span>
    </div>
    <script>    
        var classes = ["color-01", "color-02", "color-03", "color-04", "color-05"];
        var objectAdd = $(".thucdonthu");

        $(document).ready(function () {
            for (i = 0; i < 5; i++) {
                objectAdd[i].className += ' ' + classes[i % classes.length];
            }
        });
    </script>
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

