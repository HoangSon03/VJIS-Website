<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_TaiSaoChonVN_Thcs.ascx.cs" Inherits="web_usercontrol_Uc_THCS_Uc_TaiSaoChonVN_Thcs" %>
<section class="section-about-trunghoc">
    <div class="container">
        <div class="about-trunghoc-block wow bounceIn" data-wow-delay="1s">
            <asp:Repeater ID="rpAboutTHCS" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="title-trunghoc-block">
                                <h3 class="title">
                                    <span><%#Eval("intro_title") %>
                                    </span>
                                </h3>
                            </div>
                            <div class="about-content-trunghoc">
                                <p><%#Eval("intro_content") %></p>
                            </div>
                            <div class="btn-trunghoc-block"><a class="btn btn-default " href="#" title="" target="_self">Read More</a></div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="image-trunghoc-block">
                                <img src="../../<%#Eval("intro_image") %>" alt="Alternate Text" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>
<asp:Repeater ID="rpTaiSaoChonVN" runat="server">
    <ItemTemplate>
<div class="testimonial-trunghoc">
    <div class="title-trunghoc-testi">
        <h4><%#Eval("intro_title") %></h4>
    </div>
    <div class="content-testi">
        <p><%#Eval("intro_content") %></p>
    </div>
</div>
</ItemTemplate>
</asp:Repeater>