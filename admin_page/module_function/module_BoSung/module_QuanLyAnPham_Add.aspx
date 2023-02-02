<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_QuanLyAnPham_Add.aspx.cs" Inherits="admin_page_module_function_module_QuanLyAnPham_Add" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <style>
        #hibodywrapper_FileUpload1 {
            display: none;
        }

        .align {
            display: flex;
        }

        .align_back {
            margin: auto;
        }

        .add_Product {
            background: white;
            margin-top: 4%;
            border-radius: 12px;
            padding-top: 4%;
            box-shadow: 0px -1px 11px -1px #8080804f;
        }

        .heading-nhapsach {
            font-size: 40PX;
            font-weight: bold;
            text-align: center;
            color: darkblue;
            padding-bottom: 3%;
        }

        .btn-pad {
            padding: 0 3% !important;
        }

        .Pre-btn {
            position: absolute;
            right: 1.5%;
            top: 2%;
        }

        .add_Product {
            position: relative;
        }
    </style>
    <script>
        function ValidateKeypress(numcheck, e) {
            var keynum, keychar, numcheck;
            if (window.event) {//IE
                keynum = e.keyCode;
            }
            else if (e.which) {// Netscape/Firefox/Opera
                keynum = e.which;
            }
            if (keynum == 8 || keynum == 127 || keynum == null || keynum == 9 || keynum == 0 || keynum == 13) return true;
            keychar = String.fromCharCode(keynum);
            var result = numcheck.test(keychar);
            return result;
        }
        function CountLeft(field, count, max) {

            if (field.value.length > max)
                field.value = field.value.substring(0, max);
            else
                count.value = max - field.value.length;
        }
        function checkNULL() {
            var nxb = document.getElementById("<%=txtNamXuatBan.ClientID%>").value;
            if (nxb.length != 4) {
                swal('Vui lòng nhập đúng năm xuất bản!', '', 'warning').then(function () { txtNamXuatBan.focus(); });
                return false;
            }
            return true;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <div class="form-group row align">
        <div class="col-sm-10 align_back">
            <div class="container">

                <div class="add_Product row">
                    <a href="/admin-bo-sung" class="btn btn-primary Pre-btn">Quay lại</a>
                    <div class="col-12">
                        <h2 class="heading-nhapsach" id="txtTitle" runat="server">Thêm ấn phẩm</h2>
                        <%--<input class="heading-nhapsach" id="txtTitle" runat="server" value="Nhập ấn phẩm" />--%>

                        <div class="col-12 form-group">
                            <div class="col-8">
                                <label class="form-control-label">Tên Sách:</label>
                                <input type="text" id="txtNhanDe" runat="server" class="form-control" placeholder="Nhập Nội Dung" />
                            </div>
                            <div class="col-4 form-group">
                                <label class="col-12 form-control-label">Ngôn Ngữ :</label>
                                <div class="col-10">
                                    <asp:DropDownList runat="server" ID="ddlNgonNgu" CssClass="form-control">
                                        <asp:ListItem Value="Việt Nam" Selected="True">Việt Nam</asp:ListItem>
                                        <asp:ListItem Value="Nhật Bản">Nhật Bản</asp:ListItem>
                                        <asp:ListItem Value="Anh">Anh</asp:ListItem>
                                        <asp:ListItem Value="Pháp">Pháp</asp:ListItem>
                                        <asp:ListItem Value="Hàn Quốc">Hàn Quốc</asp:ListItem>
                                        <asp:ListItem Value="Trung Quốc">Trung Quốc</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 form-group">
                            <div class="col-8">
                                <label class="form-control-label">Tác Giả:</label>
                                <input type="text" id="txtTacGia" runat="server" class="form-control" placeholder="Nhập Nội Dung" />
                            </div>
                            <div class="col-4 form-group">
                                <label class="col-12 form-control-label">Loại ấn phẩm :</label>
                                <div class="col-10">
                                    <asp:DropDownList runat="server" ID="ddlLoaiAnPham" CssClass="form-control">
                                        <asp:ListItem Value="Sách" Selected="True">Sách</asp:ListItem>
                                        <asp:ListItem Value="Báo">Báo</asp:ListItem>
                                        <asp:ListItem Value="Luận án - Luận văn">Luận án-Luận văn</asp:ListItem>
                                        <asp:ListItem Value="Đa phương tiện">Đa phương tiện</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 form-group">
                            <div class="col-4 form-group">
                                <label class="form-control-label">Năm Xuất Bản:</label>
                                <input type="text" id="txtNamXuatBan" runat="server" class="form-control" placeholder="Nhập Năm" onkeypress="return ValidateKeypress(/\d/,event);" />
                            </div>
                            <div class="col-4 form-group">
                                <label class="form-control-label">ISBN:</label>
                                <input type="text" id="txtISBN" runat="server" class="form-control" placeholder="Nhập Số" onkeypress="return ValidateKeypress(/\d/,event);" />
                            </div>
                            <div class="col-4 form-group">
                                <label class="form-control-label">Ghi Chú:</label>
                                <input type="text" id="txtGhiChu" runat="server" class="form-control" placeholder="Nhập Nội Dung" />
                            </div>
                        </div>
                         <div class="col-12 form-group">
                            <div class="col-4 form-group">
                                <label class="form-control-label">Số cutter:</label>
                                <input type="text" id="txtCuTter" runat="server" class="form-control" />
                            </div>
                            <div class="col-4 form-group">
                                <label class="form-control-label">Số trang:</label>
                                <input type="text" id="txtSoTrang" runat="server" class="form-control" />
                            </div>
                            <div class="col-4 form-group">
                                <label class="form-control-label">Minh họa:</label>
                                <input type="text" id="txtMinhHoa" runat="server" class="form-control"  />
                            </div>
                        </div>
                        <div class="col-12 form-group">
                             <div class="col-4 mt-1">
                                <label class="col-3 form-control-label">NXB:</label>
                                <div class="col-9">
                                    <dx:ASPxComboBox ID="ddlNhaXuatBan" runat="server" TextField="nhaxuatban_name"
                                        ValueField="nhaxuatban_id" ValueType="System.Int32" ClientInstanceName="ddlSoPhanLoai" Width="95%">
                                    </dx:ASPxComboBox>
                                </div>
                            </div>
                            <div class="col-4 mt-1">
                                <label class="col-3 form-control-label">Số PL:</label>
                                <div class="col-9">
                                    <dx:ASPxComboBox ID="ddlSoPhanLoai" runat="server" TextField="phanloai_sophanloai"
                                        ValueField="phanloai_id" ValueType="System.Int32" ClientInstanceName="ddlSoPhanLoai" Width="95%">
                                    </dx:ASPxComboBox>
                                </div>
                            </div>
                            <div class="col-4 mt-1">
                                <label class="col-3 form-control-label">Tủ Sách:</label>
                                <div class="col-9">
                                    <dx:ASPxComboBox ID="ddlTuSach" runat="server" TextField="thuvien_tusach_name"
                                        ValueField="thuvien_tusach_id" ValueType="System.Int32" ClientInstanceName="ddlTuSach" Width="95%">
                                    </dx:ASPxComboBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 form-group">
                            <div id="dvnoidungcauhoi" class="col-8">
                                <label class="form-control-label">Nội dung:</label>
                                <dx:ASPxHtmlEditor ID="edtContent" ClientInstanceName="edtContent" runat="server" Width="100%" Height="400px" Border-BorderStyle="Solid" Border-BorderWidth="1px" Border-BorderColor="#dddddd">
                                    <SettingsHtmlEditing EnablePasteOptions="true" />
                                    <Settings AllowHtmlView="true" AllowContextMenu="Default" />
                                    <settingsimageupload uploadfolder="~/editorimages"></settingsimageupload>
                                    <Toolbars>
                                        <dx:HtmlEditorToolbar>
                                            <Items>
                                                <dx:ToolbarFontSizeEdit>
                                                    <Items>
                                                        <dx:ToolbarListEditItem Value="1" Text="1 (8pt)"></dx:ToolbarListEditItem>
                                                        <dx:ToolbarListEditItem Value="2" Text="2 (10pt)"></dx:ToolbarListEditItem>
                                                        <dx:ToolbarListEditItem Value="3" Text="3 (12pt)"></dx:ToolbarListEditItem>
                                                        <dx:ToolbarListEditItem Value="4" Text="4 (14pt)"></dx:ToolbarListEditItem>
                                                        <dx:ToolbarListEditItem Value="5" Text="5 (18pt)"></dx:ToolbarListEditItem>
                                                        <dx:ToolbarListEditItem Value="6" Text="6 (24pt)"></dx:ToolbarListEditItem>
                                                        <dx:ToolbarListEditItem Value="7" Text="7 (36pt)"></dx:ToolbarListEditItem>
                                                    </Items>
                                                </dx:ToolbarFontSizeEdit>
                                                <dx:ToolbarBoldButton BeginGroup="True" />
                                                <dx:ToolbarItalicButton />
                                                <dx:ToolbarUnderlineButton />
                                                <dx:ToolbarStrikethroughButton />
                                                <dx:ToolbarJustifyLeftButton BeginGroup="True" />
                                                <dx:ToolbarJustifyCenterButton />
                                                <dx:ToolbarJustifyRightButton />
                                                <dx:ToolbarJustifyFullButton />
                                                <dx:ToolbarBackColorButton BeginGroup="True" />
                                                <dx:ToolbarFontColorButton />
                                            </Items>
                                        </dx:HtmlEditorToolbar>
                                    </Toolbars>
                                </dx:ASPxHtmlEditor>
                                <%--<textarea runat="server" id="txtcontent" name="w3review" rows="2" class="form-control"></textarea>--%>
                            </div>
                            <div class="col-4 form-group">
                                <input type="text" id="txtImage" runat="server" style="display: none" />
                                <label class="form-control-label">Image :</label>
                                <div id="up1" class="">
                                    <asp:FileUpload CssClass="hidden-xs-up" ID="FileUpload1" runat="server" onchange="showPreview1(this)" accept=".png,.jpeg,.jpg" />
                                    <button type="button" class="btn-chang" onclick="clickavatar1()">
                                        <img id="imgPreview1" src="/admin_images/up-img.png" style="max-width: 100%; height: 200px" />
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 form-group" style="display:none">
                            <input id="imgPreview2" type="text" runat="server" />
                        </div>
                    </div>
                    <div class="col-12 form-group btn-pad" style="display: block;">
                        <a id="btnLuuVaThemMoi" runat="server" class="btn btn-primary" onclick="return checkNULL()" onserverclick="btnLuuVaThemMoi_ServerClick">Lưu và thêm mới</a>
                        <a id="btnLuu" runat="server" class="btn btn-primary" onclick="return checkNULL()" onserverclick="btnLuu_ServerClick">Lưu</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script> 
        function clickavatar1() {
            $("#up1 input[type=file]").click();
        }
        function showPreview1(input) {
            if (input.files && input.files[0]) {
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#imgPreview1').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
        function showImg(img) {
            $('#hibodywrapper_popupControl_imgPreview').attr('src', img);
        }
        function showImg1_1(img) {
            $('#imgPreview1').attr('src', img);
        }
    </script>
</asp:Content>


