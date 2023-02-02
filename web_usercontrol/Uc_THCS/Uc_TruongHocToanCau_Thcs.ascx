<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_TruongHocToanCau_Thcs.ascx.cs" Inherits="web_usercontrol_Uc_THCS_Uc_TruongHocToanCau_Thcs" %>
<section class="section-slide-bodybottomth">
    <div class="container wow bounceIn" data-wow-delay="0.7s">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="about-title-mnbody">
                    <h3>Trường Học Toàn Cầu</h3>
                </div>
            </div>
        </div>
        <div class="slide-bodybottom">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                    <div class="slide-autoplay-trunghoc">
                        <asp:Repeater ID="rpSlideNoiBat" runat="server">
                            <ItemTemplate>
                                <div class="image-slide-trunghoc">
                                    <img src="../../<%#Eval("slide_image") %>" alt="Alternate Text" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <asp:Repeater ID="rpNoiBat" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                            <div class="introduction-trunghoc">
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
<div class="thanhtuu-trunghoc">
    <div class="container">
        <div class="row" id="counter">
            <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="counter-trunghoc">
                    <div class="counter-number">
                        <h2 class="counterth" data-count="150">0</h2>
                    </div>
                    <h4 class="title">Giáo Viên &amp; Nhân Viên</h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="counter-trunghoc">
                    <div class="counter-number">
                        <h2 class="counterth" data-count="2000">0</h2>
                    </div>
                    <h4 class="title">Học Sinh</h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="counter-trunghoc">
                    <div class="counter-number">
                        <h2 class="counterth" data-count="200">0</h2>
                    </div>
                    <h4 class="title">Lớp Học</h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="counter-trunghoc">
                    <div class="counter-number">
                        <h2 class="counterth" data-count="5">0</h2>
                    </div>
                    <h4 class="title">Cơ Sở</h4>
                </div>
            </div>
        </div>
    </div>
</div>
