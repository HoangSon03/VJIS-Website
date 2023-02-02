<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_Detail_GiaoVien.aspx.cs" Inherits="web_module_web_Detail_GiaoVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <style>
        img {
            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
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
    <div class="style-breadcrumb">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../Default.aspx">Trang chủ</a></li>
                <li class="breadcrumb-item active">
                    <span id="higlobal_lblNoiDung">Giáo viên trường Liên Cấp Việt nhật</span>
                </li>
            </ol>
        </div>
    </div>
    <section class=" irs-courses-single">
        <div class="container">
            <div class="text-center text-primary">
                <h4>NHỮNG CÂU CHUYỆN CHIA SẼ TỪ GIÁO VIÊN TRƯỜNG LIÊN CẤP VIỆT NHẬT</h4>
            </div>
            <br />
            <div class="row">
                <asp:Repeater runat="server" ID="rpList">
                    <ItemTemplate>
                        <div class="col-4">
                            <img src="../<%#Eval("giaovien_image") %>" />
                            <div style="text-align:center">
                                <%#Eval("giaovien_name") %>
                                <%#Eval("giaovien_content") %>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
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

