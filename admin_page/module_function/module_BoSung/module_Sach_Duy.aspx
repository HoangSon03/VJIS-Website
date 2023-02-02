<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_Sach_Duy.aspx.cs" Inherits="admin_page_module_function_module_Sach" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v17.1" %>
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
    <script type="text/javascript">
        function func() {
            grvList.Refresh();
        }
        function btnChiTiet() {
            document.getElementById('<%=btnChiTiet.ClientID%>').click();
        }
        function popupHide() {
            document.getElementById('btnClosePopup').click();
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
        function showPreview(input) {
            if (input.files && input.files[0]) {
                
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#hibodywrapper_popupControl_imgPreview').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
        function showImg(img) {
            alert(img);
            $('#hibodywrapper_popupControl_imgPreview').attr('src', img);
        }
    </script>
    <div class="card card-block">

        <div class="form-group row">
            <div class="col-sm-10">
                <asp:UpdatePanel ID="udButton" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btnThem_Click" />
                        <asp:Button ID="btnChiTiet" runat="server" Text="Chi tiết" CssClass="btn btn-primary" OnClick="btnChiTiet_Click" />
                        <input type="submit" class="btn btn-primary" value="Xóa" onclick="confirmDel()" />
                        <asp:Button ID="btnXoa" runat="server" CssClass="invisible" OnClick="btnXoa_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>

        <div class="form-group table-responsive">
            <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="thuvien_sach_id" Width="100%">
                <Columns>
                    <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="2%">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataColumn Caption="Tên sách" FieldName="thuvien_sach_name" HeaderStyle-HorizontalAlign="Center" Width="20%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Tên tủ sách" FieldName="thuvien_tusach_name" HeaderStyle-HorizontalAlign="Center" Width="40%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn FieldName="thuvien_sach_image" Width="120px" Caption="Hình ảnh" HeaderStyle-HorizontalAlign="Center" CellStyle-VerticalAlign="Middle">
                        <DataItemTemplate>
                            <img src="<%#Eval("thuvien_sach_image") %>" width="120" />
                        </DataItemTemplate>
                    </dx:GridViewDataColumn>
                </Columns>
                <ClientSideEvents RowDblClick="btnChiTiet" />
                <SettingsSearchPanel Visible="true" />
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText EmptyDataRow="Không có dữ liệu" SearchPanelEditorNullText="Nhập tên sách cần tìm kiếm..." />
                <SettingsLoadingPanel Text="Đang tải..." />
                <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
            </dx:ASPxGridView>
        </div>

        <dx:ASPxPopupControl ID="popupControl" runat="server" Width="700" Height="600" CloseAction="CloseButton" ShowCollapseButton="True" ShowMaximizeButton="True" ScrollBars="Auto" CloseOnEscape="true" Modal="True"
            PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="popupControl" ShowFooter="true"
            HeaderText="Tủ sách" AllowDragging="True" PopupAnimationType="Fade" EnableViewState="False" AutoUpdatePosition="true" ClientSideEvents-CloseUp="function(s,e){grvList.Refresh();}">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <asp:UpdatePanel ID="udPopup" runat="server">
                        <ContentTemplate>
                            <div class="popup-main">
                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Tên sách :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtTenSach" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Số lượng :</label>
                                        <div class="col-10">
                                            <asp:TextBox ID="txtSoLuong" runat="server" ClientIDMode="Static" CssClass="form-control boxed" Width="95%"> </asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="div_content col-12">
                                    <div class="col-12 form-group">
                                        <label class="col-2 form-control-label">Tên tủ sách :</label>
                                        <div class="col-10">
                                            <dx:ASPxComboBox ID="cbbTuSach" runat="server" ValueType="System.Int32" TextField="thuvien_tusach_name" ValueField="thuvien_tusach_id" ClientInstanceName="cbbTuSach" CssClass="" Width="95%"></dx:ASPxComboBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="div_content col-12">
                                    <label class="col-2 form-control-label">Hình ảnh:</label>
                                    <div class="col-10">
                                        <p>Kích thước ảnh tiêu chuẩn 800x600</p>
                                        <asp:FileUpload ID="upLogo" runat="server" onchange="showPreview(this)" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="col-12 form-group">
                                    <img id="imgPreview" runat="server" src="/" style="width: 100%" />
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
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>

