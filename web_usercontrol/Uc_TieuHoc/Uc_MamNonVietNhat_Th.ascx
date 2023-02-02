<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_MamNonVietNhat_Th.ascx.cs" Inherits="web_usercontrol_Uc_MamNon_Uc_MamNonVietNhat_Th" %>
<section class="section-mamnon-header">
    <div class="container">
        <div class="about-mamnon-header wow bounceIn" data-wow-delay="1s">
            <asp:Repeater ID="rpIntroduce_Th" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="about-mamnon-block">
                                <div class="about-title-mamnon">
                                    <h4><%#Eval("intro_title") %></h4>
                                </div>
                                <div class="about-content-mamnon">
                                    <p><%#Eval("intro_content") %></p>
                                </div>
                                <div class="about-more-mamnon">
                                    <a class="btn btn-purple" href="#">Xem Thêm</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="about-image-mamnon">
                                <img src="../../<%#Eval("intro_image") %>" alt="Alternate Text" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </div>
</section>
