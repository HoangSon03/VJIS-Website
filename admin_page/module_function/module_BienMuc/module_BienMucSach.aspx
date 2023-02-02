<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_BienMucSach.aspx.cs" Inherits="admin_page_module_function_module_BienMucSach" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <script>
        function CountLeft(field, count, max) {
            7
            if (field.value.length > max)
                field.value = field.value.substring(0, max);
            else
                count.value = max - field.value.length;
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
    <script type="text/javascript">
        function func() {
            grvList.Refresh();
            popupControl.Hide();
        }
        function btnChiTiet() {
            document.getElementById('<%=btnChiTiet.ClientID%>').click();
        }
        function checkNULL() {
            
            var CityName = document.getElementById('<%= txtNhanDeSongSong.ClientID%>');

            if (CityName.value.trim() == "") {
                swal('Tên form không được để trống!', '', 'warning').then(function () { CityName.focus(); });
                return false;
            }
            else {
                document.getElementById("<%= UploadImages.ClientID%>").click();
                return true;
            }

        }
        function confirmDel() {
            swal("Bạn có thực sự muốn xóa?",
                "Nếu xóa, dữ liệu sẽ không thể khôi phục.",
                "warning",
                {
                    buttons: true,
                    dangerMode: true
                }).then(function (value) {
                    if (value == true) {
                        var xoa = document.getElementById('<%=btnXoa.ClientID%>');
                        xoa.click();
                    }
                });
        }
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }

    </script>
    <style>
        input[type="date"]::-webkit-datetime-edit, input[type="date"]::-webkit-inner-spin-button, input[type="date"]::-webkit-clear-button {
            color: #fff;
            position: relative;
        }

        input[type="date"]::-webkit-datetime-edit-year-field {
            position: absolute !important;
            border-left: 1px solid #8c8c8c;
            padding: 2px;
            color: #000;
            left: 56px;
        }

        input[type="date"]::-webkit-datetime-edit-month-field {
            position: absolute !important;
            border-left: 1px solid #8c8c8c;
            padding: 2px;
            color: #000;
            left: 26px;
        }


        input[type="date"]::-webkit-datetime-edit-day-field {
            position: absolute !important;
            color: #000;
            padding: 2px;
            left: 4px;
        }

        /*Toan*/
        .popup_form {
            display: flex;
        }

            .popup_form span {
                color: red;
            }

        .boxed {
            width: 85%;
            position: absolute;
            left: -8%;
        }

        .form-control-label {
            line-height: 38px;
        }

        .dxpc-content {
            height: inherit !important;
        }
    </style>
    <div class="form-group row">
        <div class="col-sm-10">
            <asp:UpdatePanel ID="udButton" runat="server">
                <ContentTemplate>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="card card-block">
        <div class="form-group table-responsive">
            <div class="col-sm-10">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="btnThem" runat="server" Text="Thêm Mới" CssClass="btn btn-primary" OnClick="btnThem_Click" />
                        <asp:Button ID="btnChiTiet" runat="server" Text="Chi tiết" CssClass="btn btn-primary" OnClick="btnChiTiet_Click" />
                        <input type="submit" class="btn btn-primary" value="Xóa" onclick="confirmDel()" />
                        <asp:Button ID="btnXoa" runat="server" CssClass="invisible" OnClick="btnXoa_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="bienmucsach_id" Width="100%">
                <Columns>
                    <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="5%">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataColumn Caption="Số phân loại" FieldName="phanloai_sophanloai" HeaderStyle-HorizontalAlign="Center" Width="20%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Nhan Đề" FieldName="nhapsach_nhande" HeaderStyle-HorizontalAlign="Center" Width="20%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Nhan Đề Song Song" FieldName="bienmucsach_nhandesongsong" HeaderStyle-HorizontalAlign="Center" Width="20%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Tác Giả" FieldName="tacgia_name" HeaderStyle-HorizontalAlign="Center" Width="20%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Tùng Thư" FieldName="bienmucsach_tungthu" HeaderStyle-HorizontalAlign="Center" Width="20%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Ngày nhập" FieldName="bienmucsach_createdate" HeaderStyle-HorizontalAlign="Center" Width="32%"></dx:GridViewDataColumn>
                </Columns>
                <ClientSideEvents RowDblClick="btnChiTiet" />
                <SettingsSearchPanel Visible="true" />
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Nhập tủ sách cần tìm kiếm..." />
                <SettingsLoadingPanel Text="Đang tải..." />
                <SettingsLoadingPanel Text="Đang tải..." />
                <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
            </dx:ASPxGridView>
        </div>
    </div>
    <dx:ASPxPopupControl ID="popupControl" runat="server" Width="700" Height="600" CloseAction="CloseButton" ShowCollapseButton="True" ShowMaximizeButton="True" ScrollBars="Auto" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="popupControl" ShowFooter="true"
        HeaderText="Thêm Mới Biểu Ghi Sách" AllowDragging="True" PopupAnimationType="Fade" EnableViewState="False" AutoUpdatePosition="true" ClientSideEvents-CloseUp="function(s,e){grvList.Refresh();}">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <asp:UpdatePanel ID="udPopup" runat="server">
                    <ContentTemplate>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Nhan đề chính: <span>*</span></label>
                                    <div class="col-sm-2">
                                        <dx:ASPxComboBox ID="ddlNhanDe" runat="server" ValueType="System.Int32" TextField="nhapsach_nhande" ValueField="nhapsach_id" ClientInstanceName="ddlNhanDe" CssClass="" Width="95%"></dx:ASPxComboBox>
                                        <%--<a runat="server" id="btnAddNhanDe" onserverclick="btnAddNhanDe_ServerClick" class="btn btn-primary">Add</a>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-4 form-control-label">Nhan đề song song : <span>*</span></label>
                                    <div class="col-8">
                                        <asp:TextBox ID="txtNhanDeSongSong" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Tác Giả :</label>
                                    <div class="col-sm-2">
                                        <dx:ASPxComboBox ID="ddlTacGia" runat="server" ValueType="System.Int32" TextField="tacgia_name" ValueField="tacgia_id" ClientInstanceName="ddlTacGia" CssClass="" Width="95%"></dx:ASPxComboBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Lần xuất bản : <span>*</span></label>
                                    <div class="col-9">
                                        <asp:TextBox ID="txtLanXuatBan" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Nhà xuất bản :</label>
                                    <div class="col-sm-2">
                                        <dx:ASPxComboBox ID="ddlNhaXuatBan" runat="server" ValueType="System.Int32" TextField="nhaxuatban_name" ValueField="nhaxuatban_id" ClientInstanceName="ddlNhaXuatBan" CssClass="" Width="95%"></dx:ASPxComboBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--<div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Năm xuất bản :</label>
                                    <div class="col-sm-2">
                                       <dx:ASPxComboBox ID="ddlNamXuatBan" runat="server" ValueType="System.Int32" TextField="nhaxuatban_namxuatban" ValueField="nhapsach_id" ClientInstanceName="ddlNamXuatBan" CssClass="" Width="95%"></dx:ASPxComboBox>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Số trang: <span>*</span></label>
                                    <div class="col-9">
                                        <asp:TextBox ID="txtSoTrang" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Minh hoạ :</label>
                                    <div class="col-9">
                                        <asp:TextBox ID="txtMinhHoa" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Khổ sách :</label>
                                    <div class="col-9">
                                        <asp:TextBox ID="txtKhoSach" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Tùng thư :</label>
                                    <div class="col-9">
                                        <asp:TextBox ID="txtTungThu" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Tên dề mục :</label>
                                    <div class="col-sm-2">
                                        <dx:ASPxComboBox ID="ddlDeMuc" runat="server" ValueType="System.Int32" TextField="demuc_name" ValueField="demuc_id" ClientInstanceName="ddlDeMuc" CssClass="" Width="95%"></dx:ASPxComboBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Số phân loại :</label>
                                    <div class="col-sm-2">
                                        <dx:ASPxComboBox ID="ddlSoPhanLoai" runat="server" ValueType="System.Int32" TextField="phanloai_sophanloai" ValueField="phanloai_id" ClientInstanceName="ddlPhanLoai" CssClass="" Width="95%"></dx:ASPxComboBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group popup_form">
                                    <label class="col-3 form-control-label">Tập đính kèm :</label>
                                    <div class="col-9">
                                       
                                        <%--<asp:TextBox ID="txtTapDinhKem" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>--%>
                                        <%--<asp:FileUpload ID="ImageUpload" runat="server" CssClass="form-control boxed" Width="95%" />--%>
                                        <input type="text" onclick="Myfile()" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <FooterContentTemplate>
            <div class="mar_but button">
                <asp:UpdatePanel ID="udSave" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="btnLuu" runat="server" ClientIDMode="Static" Text="Lưu" CssClass="btn btn-primary" OnClientClick="return checkNULL()" OnClick="btnLuu_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </FooterContentTemplate>
        <ContentStyle>
            <Paddings PaddingBottom="0px" />
        </ContentStyle>

    </dx:ASPxPopupControl>
    <%-- <asp:UpdatePanel ID="up_ProductCT" runat="server">
        <ContentTemplate>--%>
    <div style="display: block;">

        <asp:FileUpload type="file" ID="file" runat="server" name="file" />
        <a href="javascript:void(0)" id="UploadImages" type="button" runat="server" onserverclick="UploadImages_ServerClick">Update</a>
    </div>
    <%--   </ContentTemplate>
    </asp:UpdatePanel>--%>
    <script>
        function Myfile() {
            document.getElementById("<%= file.ClientID%>").click();
        }
    </script>
</asp:Content>

