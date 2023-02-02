<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_BoSungSach.aspx.cs" Inherits="admin_page_module_function_module_BoSungSach" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <script>
        function CountLeft(field, count, max) {
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
        <%--function btnChiTiet() {
            document.getElementById('<%=btnChiTiet.ClientID%>').click();
        }--%>
        function checkNULL() {
            var CityName = document.getElementById('<%= txtNoiDung.ClientID%>');

            if (CityName.value.trim() == "") {
                swal('Tên form không được để trống!', '', 'warning').then(function () { CityName.focus(); });
                return false;
            }
            return true;
        }
        <%--function confirmDel() {
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
        }--%>
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
        .nav {
            display: inline-block;
        }

            .nav li a {
                display: inline-block;
            }

        .subnav {
            display: none;
        }

            .subnav li {
                list-style-type: none;
            }

                .subnav li a {
                    display: list-item;
                }

        .nav:hover .subnav {
            display: block;
        }

        /*.pills_position{
            position:fixed;
        }*/
        .container_right {
            position: absolute;
        }
    </style>
    <div class="form-group row">
        <div class="col-sm-10">
            <%--  <asp:UpdatePanel ID="udButton" runat="server">
                <ContentTemplate>
                    <ul class="nav">
                        <li>
                            <a class="btn btn-primary" href="">Quản Lý Ấn Phẩm</a>
                            <ul class="subnav">
                                <li>
                                    <a class="btn btn-primary" id="pills-addbook-tab" data-toggle="pill" href="#pills-addbook" role="tab" aria-controls="pills-addbook" aria-selected="false">Thêm Mới</a>
                                </li>
                                <li>
                                    <a class="btn btn-primary" id="pills-search-tab" data-toggle="pill" href="#pills-search" role="tab" aria-controls="pills-search" aria-selected="false">Tìm Kiếm</a>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    <asp:Button ID="btnThem" runat="server" Text="popup" CssClass="btn btn-primary" OnClick="btnThem_Click" />
                   <asp:Button ID="Button1" runat="server" Text="Quản Lý Đơn Đặt Hàng" CssClass="btn btn-primary" OnClick="btnThem_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>--%>
        </div>
    </div>
    <div class="card card-block">
        <div class="form-group table-responsive">
            <div class="col-sm-10">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="btnChiTiet" runat="server" Text="Chi tiết" CssClass="btn btn-primary" OnClick="btnChiTiet_Click" />
                        <input type="submit" class="btn btn-primary" value="Xóa" onclick="confirmDel()" />
                        <asp:Button ID="btnXoa" runat="server" CssClass="invisible" OnClick="btnXoa_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="nhapsach_id" Width="60%">
                <Columns>
                    <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="5%">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataColumn Caption="Mã đơn hàng" FieldName="nhapsach_code" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Ngày nhập" FieldName="nhapsach_createdate" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Nội dung" FieldName="nhapsach_content" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                </Columns>
                <ClientSideEvents RowDblClick="btnChiTiet" />
                <SettingsSearchPanel Visible="true" />
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Nhập tủ sách cần tìm kiếm..." />
                <SettingsLoadingPanel Text="Đang tải..." />
                <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
            </dx:ASPxGridView>
        </div>

        <div class="tab-pane fade pills_position" id="pills-addbook" role="tabpanel" aria-labelledby="pills-addbook-tab">
            <div class="container_right col-12">
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <div>
                            <h4 style="font-size: 20px; font-weight: bold; color: #1f58c1; text-align: center;">Thêm Mới Ấn Phẩm
                                                        <asp:Label runat="server" ID="lblNam"></asp:Label></h4>
                        </div>
                        <contenttemplate>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Nhan Đề :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtNhanDe" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Tác Giả :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtTacGia" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Nhà Xuất Bản :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtNhaXuatBan" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Ngày Xuất Bản :</label>
                                        <div class="col-10">
                                            <input id="dateNgayXuatBan" runat="server" type="date" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Ngôn Ngữ :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtNgonNgu" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Số Lượng :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtSoLuong" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Đơn Vị Tính :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtDonVi" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Đơn Giá :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtDonGia" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </contenttemplate>



                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
        </div>

        <div class="tab-pane fade pills_position" id="pills-search" role="tabpanel" aria-labelledby="pills-search-tab">
            <div class="container_right col-12">
                <div class="form-group table-responsive">
                    <div class="col-sm-10">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="btnChiTiet" runat="server" Text="Chi tiết" CssClass="btn btn-primary" OnClick="btnChiTiet_Click" />
                                <input type="submit" class="btn btn-primary" value="Xóa" onclick="confirmDel()" />
                                <asp:Button ID="btnXoa" runat="server" CssClass="invisible" OnClick="btnXoa_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="nhapsach_id" Width="100%">
                        <Columns>
                            <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="5%">
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataColumn Caption="Mã đơn hàng" FieldName="nhapsach_code" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                            <dx:GridViewDataColumn Caption="Ngày nhập" FieldName="nhapsach_createdate" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                            <dx:GridViewDataColumn Caption="Nội dung" FieldName="nhapsach_content" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                        </Columns>
                        <ClientSideEvents RowDblClick="btnChiTiet" />
                        <SettingsSearchPanel Visible="true" />
                        <SettingsBehavior AllowFocusedRow="true" />
                        <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Nhập tủ sách cần tìm kiếm..." />
                        <SettingsLoadingPanel Text="Đang tải..." />
                        <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
                    </dx:ASPxGridView>
                </div>
            </div>
        </div>
    </div>
    <dx:ASPxPopupControl ID="popupControl" runat="server" Width="700" Height="600" CloseAction="CloseButton" ShowCollapseButton="True" ShowMaximizeButton="True" ScrollBars="Auto" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="popupControl" ShowFooter="true"
        HeaderText="Thêm Mới Sách" AllowDragging="True" PopupAnimationType="Fade" EnableViewState="False" AutoUpdatePosition="true" ClientSideEvents-CloseUp="function(s,e){grvList.Refresh();}">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <asp:UpdatePanel ID="udPopup" runat="server">
                    <ContentTemplate>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Nhan Đề :</label>
                                    <div class="col-10">
                                        <asp:TextBox ID="txtDonHang" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Tác Giả :</label>
                                    <div class="col-10">
                                        <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Nhà Xuất Bản :</label>
                                    <div class="col-10">
                                        <asp:TextBox ID="TextBox2" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Ngày Xuất Bản :</label>
                                    <div class="col-10">
                                        <input id="dtNgayNhap" runat="server" type="date" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Ngôn Ngữ :</label>
                                    <div class="col-10">
                                        <asp:TextBox ID="TextBox3" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Số Lượng :</label>
                                    <div class="col-10">
                                        <asp:TextBox ID="txtNoiDung" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Đơn Vị Tính :</label>
                                    <div class="col-10">
                                        <asp:TextBox ID="TextBox4" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Đơn Giá :</label>
                                    <div class="col-10">
                                        <asp:TextBox ID="TextBox5" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
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
</asp:Content>

