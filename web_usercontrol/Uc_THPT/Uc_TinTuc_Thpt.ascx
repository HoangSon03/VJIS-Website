<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_TinTuc_Thpt.ascx.cs" Inherits="web_usercontrol_Uc_THPT_Uc_TinTuc_Thpt" %>
    <section class="section-diemnoibat">
        <div class="container">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="about-title-mnbody">
                    <h3>Những điểm nổi bật</h3>
                </div>
            </div>
            <div class="about-diemnoibat">
                <div class="row">
                    <asp:Repeater ID="rpNews" runat="server">
                        <ItemTemplate>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card">
                            <div class="card-image-top">
                                <img class="card-img-top img-thumbnail" src="../../<%#Eval("news_image") %>" alt="Card image cap">
                                <%--<span><a href="#"><i class="fas fa-info-circle"></i></a></span>--%>
                            </div>
                            <div class="card-body">
                               <h5 class="card-title"><a href="../../tin-tuc/<%#cls_ToAscii.ToAscii(Eval("newscate_title").ToString()) %>/<%#cls_ToAscii.ToAscii(Eval("news_title").ToString()) %>-<%#Eval("news_id") %>" ><%#Eval("news_title") %></a></h5>
                                <p class="card-text"><%#Eval("news_summary") %></p>
                                <a href="../../tin-tuc/<%#cls_ToAscii.ToAscii(Eval("newscate_title").ToString()) %>/<%#cls_ToAscii.ToAscii(Eval("news_title").ToString()) %>-<%#Eval("news_id") %>" class="btn btn-outline-danger">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                            </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </section>
