<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_PhongVaLopHoc_Th.ascx.cs" Inherits="web_usercontrol_Uc_MamNon_Uc_PhongVaLopHoc_Th" %>
<section class="section-mamnon-body">
    <div class="container">
        <div class="row wow fadeInUp" data-wow-delay="0.5s">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="about-title-mnbody ">
                    <h3>Phòng & Lớp Học</h3>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="content-mnbody-top">
                    <p>Elipsis magna a terminal nulla elementum morbi elite forte maecenas est magna vehicula est node maecenas. Praesent arcu gravida vehicula est node maecenas loareet morbi a dosis luctus. Urna eget lacinia eleifend praesent luctus a arcu quis facilisis venenatis.</p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="content-mnbody-top">
                    <p>Elipsis magna a terminal nulla elementum morbi elite forte maecenas est magna vehicula est node maecenas. Praesent arcu gravida vehicula est node maecenas loareet morbi a dosis luctus. Urna eget lacinia eleifend praesent luctus a arcu quis facilisis venenatis. Elipsis magna a terminal nulla elementum morbi elite forte maecenas est magna vehicula est node maecenas.</p>
                </div>
            </div>
        </div>
        <div class="space"></div>
        <div class="row wow bounceIn" data-wow-delay="1s">
            <asp:Repeater ID="rpNews" runat="server">
                <ItemTemplate>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12 room">
                        <div class="about-block-mnbody">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="image-mnbody">
                                        <img class="rounded" src="<%#Eval("news_image") %>" alt="Alternate Text" />
                                        <div class="title-image-mnbody">
                                            <span class="months-old">0-24
                                            <br />
                                                Months Old</span>
                                            <span class="class-size">9
                                                <br />
                                                Class Size</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="about-content-mnbody">
                                        <div class="title-mnbody">
                                            <h4><%#Eval("news_title") %></h4>
                                        </div>
                                        <div class="content-mnbody-block">
                                            <p><%#Eval("news_content") %></p>
                                        </div>
                                        <div class="more-mnbody">
                                            <a class="btn btn-mnbody" href="#">Xem Thêm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
           <%-- <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="about-block-mnbody one">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="image-mnbody">
                                <img src="/images/class-size-img.jpg" alt="Alternate Text" />
                                <div class="title-image-mnbody">
                                    <span class="months-old">0-72
                                            <br />
                                        Months Old</span>
                                    <span class="class-size">15
                                                <br />
                                        Class Size</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="about-content-mnbody">
                                <div class="title-mnbody">
                                    <h4>Butterfly Room</h4>
                                </div>
                                <div class="content-mnbody-block">
                                    <p>Elipsis magna a terminal nulla elementum morbi elite forte.</p>
                                </div>
                                <div class="more-mnbody">
                                    <a class="btn btn-mnbody" href="#">Xem Thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="about-block-mnbody two">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12  ">
                            <div class="image-mnbody">
                                <img src="/images/kids.jpg" alt="Alternate Text" />
                                <div class="title-image-mnbody">
                                    <span class="months-old">24-48
                                            <br />
                                        Months Old</span>
                                    <span class="class-size">12
                                                <br />
                                        Class Size</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="about-content-mnbody">
                                <div class="title-mnbody">
                                    <h4>Little People Room</h4>
                                </div>
                                <div class="content-mnbody-block">
                                    <p>Elipsis magna a terminal nulla elementum morbi elite forte.</p>
                                </div>
                                <div class="more-mnbody">
                                    <a class="btn btn-mnbody" href="#">Xem Thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="about-block-mnbody three">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12  ">
                            <div class="image-mnbody">
                                <img src="/images/afterschool.jpg" alt="Alternate Text" />
                                <div class="title-image-mnbody">
                                    <span class="months-old">48-72
                                            <br />
                                        Months Old</span>
                                    <span class="class-size">13
                                                <br />
                                        Class Size</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="about-content-mnbody">
                                <div class="title-mnbody">
                                    <h4>After School Club</h4>
                                </div>
                                <div class="content-mnbody-block">
                                    <p>Elipsis magna a terminal nulla elementum morbi elite forte.</p>
                                </div>
                                <div class="more-mnbody">
                                    <a class="btn btn-mnbody" href="#">Xem Thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
    </div>
</section>