<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_Gallery.aspx.cs" Inherits="web_module_web_Gallery" %>

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
    <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
    <div class="style-breadcrumb">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../Default.aspx">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Thư Viện</a></li>
                <li class="breadcrumb-item active">
                    <span id="higlobal_lblNoiDung">Thư Viện Ảnh</span>
                </li>
            </ol>
        </div>
    </div>
    <section class="portfolio section">
        <div class="container">
            <div class="top-side">
                <h2>Thư Viện Ảnh</h2>
            </div>
            <div class="filters">
                <ul class="nav">
                    <ul class="nav">
                        <li class="nav-glr active" data-filter="*">Tất Cả</li>
                        <asp:Repeater ID="rpLibrary" runat="server">
                            <ItemTemplate>
                                <li class="nav-glr" data-filter=".<%#cls_ToAscii.ToAscii(Eval("imagelibcate_title").ToString()) %>"><%#Eval("imagelibcate_title") %></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </ul>
            </div>
            <div class="filters-content">
                <div class="row grid">
                    <asp:Repeater ID="rpImage" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-3 col-sm-4 all <%#cls_ToAscii.ToAscii(Eval("imagelibcate_title").ToString())%>" id="image">
                                <div class="item">
                                    <ul class="library">
                                        <li>
                                            <a href="/ThumbNailHandler.ashx?imgPath=<%#Eval("imagelib_image") %>&width=509&height=466" title="Việt Nhật">
                                                <img src="../images/ajax-loader.gif" class="img-thumbnail lozad" data-src="/ThumbNailHandler.ashx?imgPath=<%#Eval("imagelib_image") %>&width=255&height=200" alt="Baby" />
                                                <div class="overlay">
                                                    <span><i class="fas fa-search-plus"></i></span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </section>
   <%-- <div>
        <input type="type" name="name" value="" id="count" onload="function(tong)" />
    </div>--%>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
    <%-- <script>
        $(function () {

            // Default
            $('img').loadScroll();

            // Custom fadeIn Duration
            $('img').loadScroll(200);

        });
    </script>--%>
    <script>$(document).ready(function () {
            $('.library li:lt(12)').show();
    $('.less').hide();
            var items = 1000;
            var shown = 3;
            $('.more').click(function () {
                $('.less').show();
                shown = $('.library li:visible').length + 12;
                if (shown < items) {
                    $('.library li:lt(' + shown + ')').show(300);
                } else {
                    $('.library li:lt(' + items + ')').show(300);
                    $('.more').hide();
                }
            });
            $('.less').click(function () {
                $('.library li').not(':lt(12)').hide(300);
                $('.more').show();
                $('.less').hide();
            });
        });</script>
    <script>
        const observer = lozad();
        observer.observe();
    </script>
</asp:Content>


