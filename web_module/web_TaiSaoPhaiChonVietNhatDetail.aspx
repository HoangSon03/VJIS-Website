<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_TaiSaoPhaiChonVietNhatDetail.aspx.cs" Inherits="web_TaiSaoPhaiChonVietNhatDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="higlobal" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hislider" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibelowtop" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <div class="style-breadcrumb">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../Default.aspx">Trang chủ</a></li>
                <%--<li class="breadcrumb-item"><a href="#">Hệ thống trường liên cấp Việt Nhật</a></li>--%>
                <li class="breadcrumb-item active">
                    <span id="higlobal_lblNoiDung">Điều gì khiến phụ huynh tin tưởng và lựa chọn hệ thống giáo dục Việt Nhật</span>
                </li>
            </ol>
        </div>
    </div>
    <section class=" irs-courses-single">
        <div style="float: right;position:fixed">
            <a href="trang-chu" class="btn btn-primary">Quay lại</a>
        </div>
        <div class="container">
            <div class="row">
                <div class="content_sky_text col-md-12 col-sm-12">
                    <asp:Repeater runat="server" ID="rpChiTiet">
                        <ItemTemplate>
                            <h3 id="hibodywrapper_lblGioiThieu"><%#Eval("taisaochonvietnhat_title") %></h3>
                            <div class="border-gt1">
                                <p><%#Eval("taisaochonvietnhat_content") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="block-lien-quan">
                        <div class="irs-sidebar-title">
                            <h3>Tin liên quan</h3>
                        </div>
                        <div class="block-list">
                            <asp:Repeater ID="rpLienQuan" runat="server">
                                <ItemTemplate>
                                    <a href="dieu-gi-khien-phu-huynh-tin-tuong-va-lua-chon-he-thong-truong-lien-cap-viet-nhat-<%#Eval("taisaochonvietnhat_id") %>" class="list_item">
                                        <h3 class="title-list-item"><i class="fa fa-angle-double-right"></i>&nbsp; <%#Eval("taisaochonvietnhat_title") %></h3>
                                    </a>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>

