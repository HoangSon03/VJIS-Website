<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_TinTuc_Tc.ascx.cs" Inherits="web_usercontrol_Uc_TrangChu_Uc_TinTuc_Tc" %>

<section class="section-news-mamnon">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="about-title-index">
                    <h2>Tin Tức</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="news-mamnon">
        <div class="news-autoplay-default">
            <asp:Repeater ID="rpNews" runat="server">
                <ItemTemplate>
                    <div class="image-news">
                        <div class="card">
                            <div class="card-image-top">
                                <img class="card-img-top img-thumbnail" src="<%#Eval("news_image") %>" alt="Card image cap">
                                <%--<span><a href="#"><i class="fas fa-info-circle"></i></a></span>--%>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">     <a href="../../tin-tuc/<%#cls_ToAscii.ToAscii(Eval("newscate_title").ToString()) %>/<%#cls_ToAscii.ToAscii(Eval("news_title").ToString()) %>-<%#Eval("news_id") %>" ><%#Eval("news_title") %></a></h5>
                                <p class="card-text"><%#Eval("news_summary") %></p>
                                <a href="../../tin-tuc/<%#cls_ToAscii.ToAscii(Eval("newscate_title").ToString()) %>/<%#cls_ToAscii.ToAscii(Eval("news_title").ToString()) %>-<%#Eval("news_id") %>" class="btn btn-outline-danger">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>
