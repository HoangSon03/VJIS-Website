<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_GalleryVideo.aspx.cs" Inherits="web_module_web_GalleryVideo" %>

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
                <li class="breadcrumb-item"><a href="#">Thư Viện</a></li>
                <li class="breadcrumb-item active">
                    <span id="higlobal_lblNoiDung">Thư Viện Video</span>
                </li>
            </ol>
        </div>
    </div>

    <section class="portfolio section">
        <div class="container">
            <div class="top-side">
                <h2>Thư Viện Video</h2>
            </div>
            <div class="filters">
                <ul class="nav">
                    <li class="nav-glr active" data-filter="*">Tất Cả</li>
                    <asp:Repeater ID="rpLibrary" runat="server">
                        <ItemTemplate>
                            <li class="nav-glr" data-filter=".<%#cls_ToAscii.ToAscii(Eval("lop_name").ToString()) %>"><%#Eval("lop_name") %></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>

            <div class="filters-content-video">
                <div class="row grid">
                    <asp:Repeater ID="rpImage" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-3 all <%#cls_ToAscii.ToAscii(Eval("lop_name").ToString())%>">
                                <div class="image-block img-thumbnail">
                                    <a class="fancybox fancybox.iframe" href="<%#Eval("imagelib_link") %>">
                                        <img class="videoThumb" src="../../<%#Eval("imagelib_image") %>" />
                                        <div class="overlay">
                                            <span><i class="fas fa-play"></i></span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
               <%--     <div class="col-sm-3 all <%#cls_ToAscii.ToAscii(Eval("lop_name").ToString())%>">
                        <div class="image-block img-thumbnail">
                            <a class="fancybox fancybox.iframe" href="<%#Eval("imagelib_link") %>">
                                <img class="videoThumb" src="../../<%#Eval("imagelib_image") %>" />
                                <div class="overlay">
                                    <span><i class="fas fa-play"></i></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-3 all personal">
                        <div class="image-block img-thumbnail">
                            <a class="fancybox fancybox.iframe" href="https://www.youtube.com/watch?v=5tM30YdFWlE">
                                <img class="videoThumb" src="../images/babies.jpg" />
                                <div class="overlay">
                                    <span><i class="fas fa-play"></i></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-3 all agency">
                        <div class="image-block img-thumbnail">
                            <a class="fancybox fancybox.iframe" href="https://www.youtube.com/watch?v=a0-QhP-7ZNw">
                                <img class="videoThumb" src="../images/afterschool.jpg" />
                                <div class="overlay">
                                    <span><i class="fas fa-play"></i></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-3 all portal">
                        <div class="image-block img-thumbnail">
                            <a class="fancybox fancybox.iframe" href="https://www.youtube.com/watch?v=HwBZI3WH9Zc">
                                <img class="videoThumb" src="../images/about-kindergarten.png" />
                                <div class="overlay">
                                    <span><i class="fas fa-play"></i></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-3 all sport">
                        <div class="image-block img-thumbnail">
                            <a class="fancybox fancybox.iframe" href="https://www.youtube.com/watch?v=gBjZXwSGJXk">
                                <img class="videoThumb" src="../images/9F6BACA2F74676055A948D141EA08637.jpg" />
                                <div class="overlay">
                                    <span><i class="fas fa-play"></i></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-3 all sport">
                        <div class="image-block img-thumbnail">
                            <a class="fancybox fancybox.iframe" href="https://www.youtube.com/watch?v=Zrspg-PXxzo">
                                <img class="videoThumb" src="../images/26-holiday_sports.jpg" />
                                <div class="overlay">
                                    <span><i class="fas fa-play"></i></span>
                                </div>
                            </a>
                        </div>
                    </div>--%>
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


