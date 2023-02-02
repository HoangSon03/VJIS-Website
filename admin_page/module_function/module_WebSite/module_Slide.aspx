<%@ Page Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_Slide.aspx.cs" Inherits="admin_page_module_function_module_Slide" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v17.1" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
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
            popupControl.Hide();
        }
        function btnChiTiet() {
            document.getElementById('<%=btnChiTiet.ClientID%>').click();
        }
        function popupHide() {
            document.getElementById('btnClosePopup').click();
        }
        function checkNULL() {
           <%-- var CityName = document.getElementById('<%= txtTrungHocPT.ClientID%>');

            if (CityName.value.trim() == "") {
                swal('Tên Trường không được để trống!', '', 'warning').then(function () { CityName.focus(); });
                return false;
            }
            return true;--%>
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
        //function showImg(img) {
        //    $('#hibodywrapper_popupControl_imgPreview').attr('src', img);
        //}
        function showPreview1(input) {
            if (input.files && input.files[0]) {
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#imgPreview1').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
        function showImg1(img) {
            $('#hibodywrapper_imgPreview1').attr('src', img);
        }
        function showImg1_1(img) {
            $('#imgPreview1').attr('src', img);
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
                        <asp:Button ID="btnTrangChu" runat="server" Text="Trang Chủ" CssClass="btn btn-primary" OnClick="btnTrangChu_Click" />
                       <%-- <asp:Button ID="btnTrungHocPT" runat="server" Text="Trung Học Phổ Thông" CssClass="btn btn-primary" OnClick="btnTrungHocPT_Click" />
                        <asp:Button ID="btnTrungHocCS" runat="server" Text="Trung Học Cở Sở" CssClass="btn btn-primary" OnClick="btnTrungHocCS_Click" />
                        <asp:Button ID="btnTieuHoc" runat="server" Text="Tiểu Học" CssClass="btn btn-primary" OnClick="btnTieuHoc_Click" />
                        <asp:Button ID="btnMamNon" runat="server" Text="Mầm Non" CssClass="btn btn-primary" OnClick="btnMamNon_Click" />--%>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="form-group table-responsive">
            <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="slide_id" Width="100%">
                <Columns>
                    <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="5%">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataColumn Caption="Hình ảnh" FieldName="slide_image" Width="15%" HeaderStyle-HorizontalAlign="Center" CellStyle-VerticalAlign="Middle">
                        <DataItemTemplate>
                            <img src="<%#Eval("slide_image") %>" height="100" />
                        </DataItemTemplate>
                    </dx:GridViewDataColumn>
                     <dx:GridViewDataColumn Caption="Vị trí" FieldName="slidecate_id" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Trang Chủ" FieldName="slide_trangchu" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                   <%-- <dx:GridViewDataColumn Caption="Trung Học Phổ Thông" FieldName="slide_trunghocphothong" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Trung Học Cở Sở" FieldName="slide_trunghoccoso" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Tiểu Học" FieldName="slide_tieuhoc" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Mầm Non" FieldName="slide_mamnon" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>--%>
                    <dx:GridViewDataColumn Caption="Ngày Tạo" FieldName="slide_datecreate" HeaderStyle-HorizontalAlign="Center" Width="25%"></dx:GridViewDataColumn>

                    <%--<dx:GridViewDataColumn Caption="Kiểu slide" FieldName="slidecate_id" HeaderStyle-HorizontalAlign="Center" Width="15%"></dx:GridViewDataColumn>--%>
                    <%--<dx:GridViewDataColumn Caption="Trạng thái" FieldName="slide_active" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>--%>
                </Columns>
                <ClientSideEvents RowDblClick="btnChiTiet" />
                <SettingsSearchPanel Visible="true" />
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText EmptyDataRow="Không có dữ liệu" SearchPanelEditorNullText="Gỏ từ cần tìm kiếm và enter..." />
                <SettingsLoadingPanel Text="Đang tải..." />
                <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
            </dx:ASPxGridView>
        </div>
    </div>
    <dx:ASPxPopupControl ID="popupControl" runat="server" Width="800px" Height="500px" CloseAction="CloseButton" ShowCollapseButton="True" ShowMaximizeButton="True" ScrollBars="Auto" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="popupControl" ShowFooter="true"
        HeaderText="Slide" AllowDragging="True" PopupAnimationType="Fade" EnableViewState="False" AutoUpdatePosition="true" ClientSideEvents-CloseUp="function(s,e){grvList.Refresh();}">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <asp:UpdatePanel ID="udPopup" runat="server">
                    <ContentTemplate>
                        <div class="popup-main">
                            <div class="div_content col-12">
                                  <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Vị Trí:</label>
                                    <div class="col-10">
                                        <asp:DropDownList ID="ddlgroup" runat="server" CssClass="form-control boxed" Width="95%" Height="20px">
                                            <asp:ListItem Value="1" Text="Slide Banner"></asp:ListItem>
                                            <asp:ListItem Value="2" Text="Slide nổi bật"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="text-color1"><i>Kích thước ảnh tiêu chuẩn 520x350</i></div>
                                    <div class="colum-5 form-group">
                                        <label class="form-control-label">Hình ảnh :</label>
                                        <div id="up1" class="">
                                            <asp:FileUpload CssClass="hidden-up" ID="FileUpload1" runat="server" onchange="showPreview1(this)" />
                                            <button type="button" class="btn-chang" onclick="clickavatar1()">
                                                <img id="imgPreview1" src="/admin_images/up-img.png" style="max-width: 100%; height: 200px" />
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 form-group">
                                    <label class="col-2 form-control-label">Vị Trí Show:</label>
                                    <div class="col-10">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>
                                                    <input class="checkbox" type="checkbox" id="txtTrangChu" runat="server" />
                                                    <span></span>
                                                    <p class="pr-name">Trang Chủ</p>
                                                </label>
                                            </div>
                                            <%--<div class="col-md-3">
                                                <label>
                                                    <input class="checkbox" type="checkbox" id="txtTrungHocPT" runat="server" />
                                                    <span></span>
                                                    <p class="pr-name">Trung Học Phổ Thông</p>
                                                </label>
                                            </div>
                                            <div class="col-md-3">
                                                <label>
                                                    <input class="checkbox" type="checkbox" id="txtTrungHocCS" runat="server" />
                                                    <span></span>
                                                    <p class="pr-name">Trung Học Cơ Sở</p>
                                                </label>
                                            </div>
                                            <div class="col-md-3">
                                                <label>
                                                    <input class="checkbox" type="checkbox" id="txtTieuHoc" runat="server" />
                                                    <span></span>
                                                    <p class="pr-name">Tiểu Học</p>
                                                </label>
                                            </div>
                                            <div class="col-md-3">
                                                <label>
                                                    <input class="checkbox" type="checkbox" id="txtMamNon" runat="server" />
                                                    <span></span>
                                                    <p class="pr-name">Mầm Non</p>
                                                </label>
                                            </div>--%>
                                        </div>
                                    </div>
                                </div>

                                <table>
                                    <tr>
                                        <th style="width: 0.1%">SEO&nbsp;Keywords
                                        </th>
                                        <th style="width: 0.1%">&nbsp;:&nbsp;
                                        </th>
                                        <th>
                                            <dx:ASPxTextBox ID="SEO_KEYWORD" runat="server" ClientInstanceName="SEO_KEYWORD" CssClass="InputText"
                                                Width="100%">
                                            </dx:ASPxTextBox>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th style="width: 0.1%">SEO&nbsp;tiêu&nbsp;đề
                                        </th>
                                        <th style="width: 0.1%">&nbsp;:&nbsp;
                                        </th>
                                        <th>
                                            <dx:ASPxTextBox ID="SEO_TITLE" runat="server" ClientInstanceName="SEO_TITLE" CssClass="InputText"
                                                Width="100%">
                                            </dx:ASPxTextBox>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th style="width: 0.1%">SEO&nbsp;link
                                        </th>
                                        <th style="width: 0.1%">&nbsp;:&nbsp;
                                        </th>
                                        <th>
                                            <dx:ASPxTextBox ID="SEO_LINK" runat="server" ClientInstanceName="SEO_LINK" CssClass="InputText"
                                                Width="100%">
                                            </dx:ASPxTextBox>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th style="width: 0.1%">SEO&nbsp;nội&nbsp;dung
                                        </th>
                                        <th style="width: 0.1%">&nbsp;:&nbsp;
                                        </th>
                                        <th>
                                            <input name="SEO_DEP" type="text" id="SEO_DEP" runat="server" class="InputText" style="width: 99.5%; height: 30px" onkeydown="CountLeft(hibodywrapper_popupControl_SEO_DEP, this.form.left,160);" onkeyup="CountLeft(hibodywrapper_popupControl_SEO_DEP,this.form.left,160);" />
                                            <input type="text" name="left" size="3" maxlength="3" value="160" disabled="disabled" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th style="width: 0.1%">SEO&nbsp;Image
                                        </th>
                                        <th style="width: 0.1%">&nbsp;:&nbsp;
                                        </th>
                                        <th>
                                            <dx:ASPxTextBox ID="SEO_IMAGE" runat="server" ClientInstanceName="SEO_IMAGE" CssClass="InputText"
                                                Width="100%">
                                            </dx:ASPxTextBox>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <FooterContentTemplate>
            <div class="mar_but button">
                <asp:Button ID="btnLuu" runat="server" ClientIDMode="Static" Text="Lưu" CssClass="btn btn-primary" OnClientClick="return checkNULL()" OnClick="btnLuu_Click" />
            </div>
        </FooterContentTemplate>
        <ContentStyle>
            <Paddings PaddingBottom="0px" />
        </ContentStyle>
    </dx:ASPxPopupControl>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hifooter" runat="Server">
    <script type="text/javascript">
        function clickavatar1() {
            $("#up1 input[type=file]").click();
        }

    </script>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>
