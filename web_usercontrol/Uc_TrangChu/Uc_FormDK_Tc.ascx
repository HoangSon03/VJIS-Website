<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_FormDK_Tc.ascx.cs" Inherits="web_usercontrol_Uc_TrangChu_Uc_FormDK_Tc" %>
<script src="../../admin_js/sweetalert.min.js"></script>
<div id="form-dang-ky" class="wow bounceInLeft" data-wow-delay="1s">
    <div class="title-form-dang-ky">
        <h4>ĐĂNG KÝ NHẬN TƯ VẤN MIỄN PHÍ</h4>
    </div>
    <div class="content-form-dang-ky">
        <div>
            <p>
                (Vui lòng để lại thông tin chính xác.<br />
                Tư vấn viên sẽ gọi điện lại cho bạn sau 3 - 5 ngày)
            </p>
        </div>
        <div class="chuongtrinh">
            <p><strong>* Chương trình hấp dẫn của Việt Nhật </strong></p>
        </div>
        <div class="form">
            <div class="form-group">
                <div class="icon-form-dang-ky">
                    <i class="fas fa-user-alt"></i>
                </div>
                <div class="input-form-dang-ky">
                    <input type="text" name="name" id="txt_name" runat="server" class="form-control" placeholder="Họ và tên" />
                </div>
            </div>
            <div class="form-group">
                <div class="icon-form-dang-ky">
                    <i class="fas fa-envelope"></i>
                </div>
                <div class="input-form-dang-ky">
                    <input type="text" name="email" id="txt_email" runat="server" class="form-control" placeholder="Nhập Email" />
                </div>
            </div>
            <div class="form-group">
                <div class="icon-form-dang-ky">
                    <i class="fas fa-phone-alt"></i>
                </div>
                <div class="input-form-dang-ky">
                    <input type="text" name="phone" id="txt_phone" runat="server" class="form-control" placeholder="Số điện thoại" />
                </div>
            </div>
            <div class="form-group">
                <div class="icon-form-dang-ky">
                    <i class="fas fa-question-circle"></i>
                </div>
                <div class="input-form-dang-ky">
                    <input type="text" name="age" id="txt_age" runat="server" class="form-control" placeholder="Độ Tuổi của bé" />
                </div>
            </div>
        </div>
        <div class="login--center">
            Việt Nhật cam kết bảo mật thông tin cá nhân của bạn. Xem chi tiết điều khoản bảo mật <a style="color: #c82333" href="#" target="_blank">tại đây</a>

        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div class="button-form-dang-ky">
            <asp:UpdatePanel ID="upConfirm" runat="server">
                <ContentTemplate>
                    <a class="btn btn-danger" href="#" id="btnConfirm" runat="server" type="button" onserverclick="btnConfirm_ServerClick">Nhận Thông Tin Ngay</a>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="lienhe">
            <div class="phone">
                <p><span><i class="fas fa-phone-alt"></i></span>0236.3889.916 - 3889.598</p>
            </div>
            <div class="markt">
                <p><span><i class="fas fa-envelope-open"></i></span>vanphong@vjis.edu.vn</p>
            </div>
        </div>
    </div>
</div>