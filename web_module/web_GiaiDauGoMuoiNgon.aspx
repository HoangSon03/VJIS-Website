<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_GiaiDauGoMuoiNgon.aspx.cs" Inherits="web_module_web_GiaiDauGoMuoiNgon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <style>
        .nav {
            flex-wrap: wrap;
            padding-left: 0;
            margin-bottom: 0;
            list-style: none;
            display: flex;
            justify-content: space-between;
        }

        .tab-pane {
            background-image: url("/image/giaidau10ngon.png");
            background-color: #cccccc;
            height: 625px;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            margin-top: 2%;
        }

        .content_sky_text {
            padding: 2%;
        }

        .table {
            font-size: 35px;
            width: 90%;
            margin-left: 5%;
        }

            .table td {
                font-size: 30px;
                border-top: none;
                vertical-align: middle;
            }

        .img-avata {
            width: 50px;
            height: 50px;
        }

        tr:nth-child(even) {
            background-color: pink;
        }
    </style>
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
        <div class="content_sky_text col-md-9 col-sm-12">
            <ul class="nav nav-tabs" id="example-tabs" role="tablist">
                <li class="nav-item">
                    <a id="tab1" class="nav-link active" data-toggle="tab" role="tab" href="#pane-tab-1">K1</a>
                </li>
                <li class="nav-item">
                    <a id="tab2" class="nav-link" data-toggle="tab" role="tab" href="#pane-tab-2">K2 K3</a>
                </li>
                <li class="nav-item">
                    <a id="tab3" class="nav-link" data-toggle="tab" role="tab" href="#pane-tab-3">K4 K5</a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade show active" id="pane-tab-1" role="tabpanel" aria-labelledby="tab1">
                    <table class="table">
                        <tr>
                            <th></th>
                            <th>STT</th>
                            <th>Họ và tên</th>
                            <th>Lớp</th>
                            <th>Điểm</th>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                    </table>
                </div>
                <div class="tab-pane fade" id="pane-tab-2" role="tabpanel" aria-labelledby="tab2">
                    <table class="table">
                        <tr>
                            <th></th>
                            <th>STT</th>
                            <th>Họ và tên</th>
                            <th>Lớp</th>
                            <th>Điểm</th>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                    </table>
                </div>
                <div class="tab-pane fade" id="pane-tab-3" role="tabpanel" aria-labelledby="tab3">
                    <table class="table">
                        <tr>
                            <th></th>
                            <th>STT</th>
                            <th>Họ và tên</th>
                            <th>Lớp</th>
                            <th>Điểm</th>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <img class="img-avata" src="../image/avatar2.png" />
                            </td>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>1A</td>
                            <td>10</td>
                        </tr>
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

