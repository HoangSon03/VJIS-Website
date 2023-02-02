<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_TuyenSinh.aspx.cs" Inherits="web_module_web_TuyenSinh" %>

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
                <li class="breadcrumb-item"><a href="#">Giới thiệu</a></li>
                <li class="breadcrumb-item active">
                    <span id="higlobal_lblNoiDung">CƠ SỞ VẬT CHẤT</span>
                </li>
            </ol>
        </div>
    </div>
    <section class=" irs-courses-single">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-4 d-none d-sm-none d-sm-block sticky-top">
                    <div class="irs-side-bar">

                        <!-------Menu bai viet gioi thieu------>
                      
                        <div class="irs-categories">
                            <div class="irs-sidebar-title">
                                <h3>Giới thiệu</h3>
                            </div>
                            <ul id="sidenav01">
                                <asp:Repeater ID="rpIntroduce" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <a href="../../tuyen-sinh/<%#cls_ToAscii.ToAscii(Eval("intromenu_title").ToString()) %>-<%#Eval("intromenu_id") %>"><i class="fa fa-check" aria-hidden="true"></i><%#Eval("intromenu_title") %></a><a href="javascript:void(0)" data-toggle="collapse" data-target="#4" data-parent="#sidenav01" class="collapsed"><span class="" aria-hidden="true"></span></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </ul>
                        </div>
                        <!-------Fanpage------>
                        <div class="irs-video">
                            <div class="irs-sidebar-title">
                                <h3>Facebook</h3>
                            </div>
                            <div id="fb-root"></div>
                            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v5.0"></script>
                            <div class="fb-page" data-href="https://www.facebook.com/TruongLienCapVietNhat/" data-tabs="timeline" data-width="" data-height="" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                                <blockquote cite="https://www.facebook.com/TruongLienCapVietNhat/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/TruongLienCapVietNhat/">Facebook</a></blockquote>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content_sky_text col-md-9 col-sm-12">
                    <asp:Repeater runat="server" ID="rpContent">
                        <ItemTemplate>
                            <h3 id="hibodywrapper_lblGioiThieu"><%#Eval("intromenu_title") %></h3>
                            <div class="border-gt1">
                                <p><%#Eval("intromenu_content") %></p>
                            </div>
                            <div style="color: #2b2b2b; text-decoration-color: initial; text-align: center;">
                                <img src="<%#Eval("intromenu_image") %>" alt="" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="block-lien-quan">
                        <div class="irs-sidebar-title">
                            <h3>Tin liên quan</h3>
                        </div>
                        <div class="block-list">

                            <a href="../../gioi-thieu/co-so-vat-chat-4.html" class="list_item">
                                <h3 class="title-list-item"><i class="fa fa-angle-double-right"></i>&nbsp; CƠ SỞ VẬT CHẤT</h3>

                            </a>

                            <a href="../../gioi-thieu/co-cau-to-chuc-he-thong-6.html" class="list_item">
                                <h3 class="title-list-item"><i class="fa fa-angle-double-right"></i>&nbsp; CƠ CẤU TỔ CHỨC HỆ THỐNG</h3>

                            </a>

                            <a href="../../gioi-thieu/doi-tac-chien-luoc-8.html" class="list_item">
                                <h3 class="title-list-item"><i class="fa fa-angle-double-right"></i>&nbsp; ĐỐI TÁC CHIẾN LƯỢC</h3>

                            </a>

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

