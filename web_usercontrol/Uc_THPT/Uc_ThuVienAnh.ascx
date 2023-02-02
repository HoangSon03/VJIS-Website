<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_ThuVienAnh.ascx.cs" Inherits="web_usercontrol_Uc_THPT_Uc_ThuVienAnh" %>
<section class="portfolio section trunghoc">
    <div class="container">
        <div class="top-side">
            <h2>Thư Viện Ảnh</h2>
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
        <div class="filters-content">
            <div class="row grid">
                <asp:Repeater ID="rpImage" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-sm-4 all <%#cls_ToAscii.ToAscii(Eval("lop_name").ToString())%>">
                            <div class="item">
                                <a href="<%#Eval("imagelib_image") %>" title="Việt Nhật">
                                    <img class="img-thumbnail" src="/ThumbNailHandler.ashx?imgPath=<%#Eval("imagelib_image") %>&width=255&height=200" alt="Baby" />
                                    <div class="overlay">
                                        <span><i class="fas fa-search-plus"></i></span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</section>
