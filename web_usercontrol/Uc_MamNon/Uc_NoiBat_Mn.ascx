<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_NoiBat_Mn.ascx.cs" Inherits="web_usercontrol_Uc_MamNon_Uc_NoiBat_Mn" %>
   <section class="section-slide-bodybottom">
    <div class="container wow bounceIn" data-wow-delay="0.7s">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="about-title-mnbody">
                    <h3>Nổi Bật</h3>
                </div>
            </div>
        </div>
        <div class="slide-bodybottom">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                    <div class="slide-autoplay-mamnon">
                        <asp:Repeater ID="rpSlideNoiBat" runat="server">
                            <ItemTemplate>
                                <div class="image-slide-mamnon">
                                    <img src="../../<%#Eval("slide_image") %>" alt="Alternate Text" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <asp:Repeater ID="rpNoiBat" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                            <div class="introduction-mamnon">
                                <h3><%#Eval("intro_title") %></h3>
                                <p><%#Eval("intro_content") %></p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</section>
<div class="testimonial">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="counter-mamnon">
                    <div class="counter-number">
                        <h2 class="counter">27</h2>
                    </div>
                    <h4 class="title">Giáo Viên & Nhân Viên</h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="counter-mamnon">
                    <div class="counter-number">
                        <h2 class="counter">250</h2>
                    </div>
                    <h4 class="title">Học Sinh</h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="counter-mamnon">
                    <div class="counter-number">
                        <h2 class="counter">34</h2>
                    </div>
                    <h4 class="title">Lớp Học</h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="counter-mamnon">
                    <div class="counter-number">
                        <h2 class="counter">12</h2>
                    </div>
                    <h4 class="title">Khu Vui Chơi</h4>
                </div>
            </div>
        </div>
    </div>
</div>
