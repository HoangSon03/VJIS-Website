<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_News.aspx.cs" Inherits="web_module_web_News" %>

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
                <li class="breadcrumb-item"><a href="./Default.aspx">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Tin tức</a></li>
                <li class="breadcrumb-item active">
                    <span id="higlobal_lblNoiDung"><%=title %></span>
                </li>
            </ol>
        </div>
    </div>

    <section class="irs-blog-field">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-4 d-none d-sm-none d-md-block ">
                    <div class="sticky-top">
                        <div class="irs-side-bar">

                            <!-------Menu loai tin tuc------>
                            <div class="irs-categories">
                                <div class="irs-sidebar-title">
                                    <h3>Tin tức</h3>
                                </div>
                                <ul>
                                    <asp:Repeater ID="rpCateNews" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <i class="fa fa-check" aria-hidden="true"></i><a href="../../tin-tuc/<%#cls_ToAscii.ToAscii(Eval("newscate_title").ToString()) %>-<%#Eval("newscate_id") %>"><%#Eval("newscate_title") %></a>
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
                       <%-- <div class="iris-banner form-group">
                            <img src="/images/6724183-0-ielts-indore.jpg" />
                        </div>--%>
                    </div>

                </div>
                <asp:Repeater runat="server" ID="rpNewsCate" OnItemDataBound="rpNewsCate_ItemDataBound">
                    <ItemTemplate>
                        <div class="col-md-9 col-sm-12">
                            <div class="title-block">
                                <h2 class="color1">
                                    <span id=""><%#Eval("newscate_title")%></span>
                                </h2>
                            </div>
                            <div class="row">
                                <asp:Repeater ID="rpNews" runat="server">
                                    <ItemTemplate>
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                            <div class="card">
                                                <div class="card-image-top">
                                                    <img class="card-img-top img-thumbnail" src="../../<%#Eval("news_image") %>" alt="Card image cap">
                                                    <%--<span><a href="#"><i class="fas fa-info-circle"></i></a></span>--%>
                                                </div>
                                                <div class="card-body">
                                                    <h5 class="card-title"><a href="#"><%#Eval("news_title") %></a></h5>
                                                    <p class="card-text"><%#Eval("news_summary") %></p>
                                                    <a href="../../tin-tuc/<%#cls_ToAscii.ToAscii(Eval("newscate_title").ToString()) %>/<%#cls_ToAscii.ToAscii(Eval("news_title").ToString()) %>-<%#Eval("news_id") %>">Xem thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
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

