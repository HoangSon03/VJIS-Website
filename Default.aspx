<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


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
    <script>
        function checkNull() {
            var hsName = document.getElementById('<%= txtNameHs.ClientID%>');
            var hsNgaySinh = document.getElementById('<%= dteDateHS.ClientID%>');
            var phName = document.getElementById('<%= txtNamePh.ClientID%>');
            var phMail = document.getElementById('<%= txtEmail.ClientID%>');
            var phPhone = document.getElementById('<%= txtSoDienThoai.ClientID%>');
            var class_select = document.getElementById('<%=ddlTuyenSinh.ClientID%>').value;
            if (hsName.value.trim() == "") {
                swal('Tên học sinh không được để trống!', '', 'warning').then(function () { hsName.focus(); });
                return false;
            }
            if (hsNgaySinh.value.trim() == "") {
                swal('Vui lòng nhập ngày sinh !', '', 'warning').then(function () { hsNgaySinh.focus(); });
                return false;
            }
            if (phName.value.trim() == "") {
                swal('Tên ba/mẹ không được để trống!', '', 'warning').then(function () { phName.focus(); });
                return false;
            }
            //if (phMail.value.trim() == "") {
            //    swal('Email không được để trống!', '', 'warning').then(function () { phMail.focus(); });
            //    return false;
            //}
            if (phPhone.value.trim() == "") {
                swal('Số điện thoại không được để trống!', '', 'warning').then(function () { phPhone.focus(); });
                return false;
            }
            if (class_select=='0') {
                swal('Vui lòng chọn lớp đăng ký!', '', 'warning').then(function () { });
                return false;
            }
            return true;
        };
    </script>
    <%--Giáo dục quốc phòng lớp 10--%>
    <asp:Panel ID="pnlDynamicControl" runat="server"></asp:Panel>
    <section class="section-festival">
        <h2 style="margin-top: 115px">Lễ Hội Lớn Của Hệ Thống Trường</h2>
        <div class="container">
            <div class="row mb-5">
                <asp:Repeater runat="server" ID="rpLeHoiTheThao">
                    <ItemTemplate>
                        <div class="col-lg-7 col-md-6 col-sm-12 col-12 mb-5 mb-lg-0 mb-md-5 mb-lg-0 mb-md-5">
                            <div class="why__ytb">
                                <iframe class="ytb__VN" width="560" height="315" src="<%#Eval("lehoi_video") %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6 col-sm-12 col-12">
                            <div class="why__inner">
                                <h4 class="festival__title"><%#Eval("lehoi_title") %>
                                    <img src=" image/icon_LHAN.png" alt=" Lễ hội âm nhạc tại trường Liên Cấp Việt Nhật" />
                                </h4>
                                <div class="test">
                                    <%#Eval("lehoi_description") %>
                                </div>
                            </div>
                                <a href="le-hoi-am-nhac-tai-truong-viet-nhat" class="btn-language btn-outline-danger" href="javascript:void(0)">Xem thêm</a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="row mb-5 fl-cl__rever--lh">
                <asp:Repeater runat="server" ID="rpLeHoiHoaAnhDao">
                    <ItemTemplate>
                        <div class="col-lg-5 col-md-6 col-sm-12 col-12">
                            <div class="why__inner">
                                <h4 class="festival__title"><%#Eval("lehoi_title") %>
                                    <img src="image/vongthethao.png" alt="Lễ hội thể thao tại trường Liên Cấp Việt Nhật" />
                                </h4>
                                <div class="test">
                                    <%#Eval("lehoi_description") %>
                                </div>
                            </div>
                            <a class="btn-language btn-outline-danger" href="le-hoi-the-thao-tai-truong-viet-nhat">Xem thêm</a>
                        </div>
                        <div class="col-lg-7 col-md-6 col-sm-12 col-12 mb-5 mb-lg-0 mb-md-5 mb-lg-0 mb-md-5">
                            <div class="why__ytb">
                                <iframe class="ytb__VN" width="560" height="315" src="<%#Eval("lehoi_video") %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="row mb-5 mb-lg-0 mb-md-0">
                <asp:Repeater runat="server" ID="rpLeHoiAmNhac">
                    <ItemTemplate>
                        <div class="col-lg-7 col-md-6 col-sm-12 col-12 mb-5 mb-lg-0 mb-md-5 mb-lg-0 mb-md-5">
                            <div class="why__ytb">
                                <iframe class="ytb__VN" width="560" height="315" src="<%#Eval("lehoi_video") %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6 col-sm-12 col-12">
                            <div class="why__inner">
                                <h4 class="festival__title">
                                    <img src="image/hoaAD.png" alt="Lễ hội hoa anh đào tại trường Liên Cấp Việt Nhật" /><%#Eval("lehoi_title") %>
                                </h4>
                                <div class="test">
                                    <%#Eval("lehoi_description") %>
                                </div>
                            </div>
                               <a class="btn-language btn-outline-danger" href="le-hoi-hoa-anh-dao-tai-truong-viet-nhat">Xem thêm</a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <%--<div>
            <img src="images/trangchu/We_12.gif" style="width: 100%; height: 210px; margin-bottom: -5px;" />
        </div>--%>
        <img src="images/trangchu/We_13_1.gif" />
    </section>
    <section class="section-language">

        <h2 style="margin: 0">Chương Trình Đào Tạo Nổi Bật </h2>
        <div class="language">
            <div class="container">
                <div class="row">
                    <asp:Repeater runat="server" ID="rpChuongTrinhDaoTao">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="language__content">
                                    <img src="<%#Eval("daotaongonngu_image") %>" alt="<%#Eval("daotaongonngu_image") %>" />
                                    <h4 class="language__content--title"><%#Eval("daotaongonngu_name") %></h4>
                                    <%--<p class="language-text">- Giáo Trình</p>--%>
                                    <div class="language-text__content">
                                        <%#Eval("daotaongonngu_description") %>
                                        <a class="btn-language btn-outline-danger" href="<%#Eval("daotaongonngu_link") %>">Xem thêm</a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </section>
    <section class="section-language__bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-6">
                    <h4 class="language__content--title">Đội Ngũ Giáo Viên</h4>
                    <div class="row">
                        <asp:Repeater ID="rpGiaoVien" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-6 mt-3 mb-3">
                                    <div class="card__dngv" style="text-align: center;">
                                        <img src=" <%#Eval("giaovien_image") %>" class="dngv__img" alt=" <%#Eval("giaovien_name") %>" />
                                        <h4 class="card__bottom"><%#Eval("giaovien_name") %></h4>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="dngv__bottom">
                            <a class="btn-language btn-language__bottom btn-outline-danger" href="danh-sach-giao-vien-chi-tiet" id="btnGiaoVienDetail">Xem thêm</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <h4 class="language__content--title">Cảm Nhận Của Phụ Huynh</h4>
                    <div class="autoplay__cnph">
                        <asp:Repeater runat="server" ID="rpCamNhanPhuHuynh">
                            <ItemTemplate>
                                <div class="cnph__slider">
                                    <p class="testimonial__text">
                                        <%#Eval("camnhan_content") %>
                                    </p>
                                    <img class="testimonial__img" src="<%#Eval("camnhan_image") %>" alt="<%#Eval("camnhan_namephuhuynh") %>" />
                                    <h4 class="testimonial__title"><%#Eval("camnhan_namephuhuynh") %></h4>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%-- <div class="cnph__slider">
                            <h4 class="testimonial__title">Phụ huynh Thanh Thủy - Học sinh Lớp 3/3</h4>
                            <img class="testimonial__img" src="images/Untitled-3-02.png" alt="avatar 1" />
                        </div>
                        <div class="cnph__slider">
                            <h4 class="testimonial__title">Phụ huynh Thanh Thủy - Học sinh Lớp 3/3</h4>
                            <img class="testimonial__img" src="images/Untitled-3-02.png" alt="avatar 1" />
                        </div>--%>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section class="section__contract" id="section__contract">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-8 col-sm-12 col-12">
                    <h4 class="heading__contract">GHI DANH, NHẬN THÔNG TIN TƯ VẤN TUYỂN SINH</h4>
                    <div class="form__contract">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <h5 class="contract__title">Thông tin học sinh</h5>
                                <div class="signup-form">
                                    <div class="form-group">
                                        <input type="datetime" id="txtNameHs" runat="server" class="form-input" placeholder="Họ và tên" name="nameHS" autocomplete="off" />
                                    </div>
                                    <div class="form-group">
                                        <input type="date" id="dteDateHS" runat="server" class="form-input" placeholder="Ngày sinh " name="date" autocomplete="off" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" id="txtSchool" runat="server" class="form-input" placeholder="Quốc tịch" name="school" autocomplete="off" />
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList runat="server" ID="ddlTuyenSinh" class="form-input">
                                            <asp:ListItem Value="0" Text="Đăng ký tuyển sinh" />
                                            <asp:ListItem Value="Mầm non" Text="Mầm non" />
                                            <asp:ListItem Value="Lớp 1" Text="Lớp 1" />
                                            <asp:ListItem Value="Lớp 2" Text="Lớp 2" />
                                            <asp:ListItem Value="Lớp 3" Text="Lớp 3" />
                                            <asp:ListItem Value="Lớp 4" Text="Lớp 4" />
                                            <asp:ListItem Value="Lớp 5" Text="Lớp 5" />
                                            <asp:ListItem Value="Lớp 6" Text="Lớp 6" />
                                            <asp:ListItem Value="Lớp 7" Text="Lớp 7" />
                                            <asp:ListItem Value="Lớp 8" Text="Lớp 8" />
                                            <asp:ListItem Value="Lớp 9" Text="Lớp 9" />
                                            <asp:ListItem Value="Lớp 10" Text="Lớp 10" />
                                            <asp:ListItem Value="Lớp 11" Text="Lớp 11" />
                                            <asp:ListItem Value="Lớp 12" Text="Lớp 12" />
                                        </asp:DropDownList>
                                        <%-- <select id="ddlTuyenSinh" class="form-input" runat="server">
                                            <option value="0">Đăng ký tuyển sinh</option>
                                            <option value="Lớp 1">Lớp 1</option>
                                            <option value="Lớp 2">Lớp 2</option>
                                            <option value="Lớp 3">Lớp 3</option>
                                            <option value="Lớp 4">Lớp 4</option>
                                            <option value="Lớp 5">Lớp 5</option>
                                            <option value="Lớp 6">Lớp 6</option>
                                            <option value="Lớp 7">Lớp 7</option>
                                            <option value="Lớp 8">Lớp 8</option>
                                            <option value="Lớp 9">Lớp 9</option>
                                            <option value="Lớp 10">Lớp 10</option>
                                            <option value="Lớp 11">Lớp 11</option>
                                            <option value="Lớp 12">Lớp 12</option>
                                        </select>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <h4 class="contract__title">Thông tin phụ huynh</h4>
                                <div class="form-group">
                                    <input type="text" id="txtNamePh" runat="server" class="form-input" placeholder="Họ và tên" name="namePh" autocomplete="off" />
                                </div>
                                <div class="form-group">
                                    <input type="text" id="txtDiaChi" runat="server" class="form-input" placeholder="Địa Chỉ" name="diaChi" autocomplete="off" />
                                </div>
                                <div class="form-group">
                                    <input type="text" id="txtEmail" runat="server" class="form-input" placeholder="Email" name="email" autocomplete="off" />
                                </div>
                                <div class="form-group">
                                    <input type="text" id="txtSoDienThoai" runat="server" class="form-input" placeholder="Số điện thoại" name="sdt" autocomplete="off" />
                                </div>
                                <a href="javascript:void(0)" class="btn-contract" onclick="return checkNull()" runat="server" id="btnDangKy" onserverclick="btnDangKy_ServerClick">Gửi</a>
                            </div>
                        </div>
                    </div>
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
    <script>
        $('.autoplay__cnph').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            //autoplaySpeed: 2000,
        });
    </script>
</asp:Content>



