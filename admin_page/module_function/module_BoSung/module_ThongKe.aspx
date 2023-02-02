<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_ThongKe.aspx.cs" Inherits="admin_page_module_function_module_ThuVien_module_ThongKe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
<%--    <script>
        function myDDLThongKe(id) {
            alert(id);
            if (id === 3) {

            }
            else
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hibodywrapper" runat="Server">

<%--    <script>
        function setDropDownList(elementRef, valueSetTo) {
            var isFound = false;

            for (var i = 0; i < elementRef.options.length; i++) {
                if (elementRef.options[i].value == valueSetTo) {
                    elementRef.options[i].selected = true;
                    isFound = true;
                }
            }

            if (isFound == false) {
                elementRef.options[0].selected = true;
            }
        }

    </script>--%>

    <div class="card card-block">
        <div class="form-group row">
            <div class="col-sm-10">
                <%--<asp:Button CssClass="btn btn-primary" ID="btnChiTiet" runat="server" OnClick="btnChiTiet_Click" Text="Chi tiết"></asp:Button>--%>
            </div>
        </div>
        <div class="form-group table-responsive">
            <asp:UpdatePanel ID="upListProduct" runat="server">
                <ContentTemplate>
                    <%--<label>Thống kê </label>--%>

                    <div class="form-group ">
                        <asp:DropDownList ID="ddlThongKe" runat="server" OnSelectedIndexChanged="ddlThongKe_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="0" Text="-- Chọn thống kê--" />
                            <asp:ListItem Value="1" Text="Trong tuần" />
                            <asp:ListItem Value="2" Text="Trong tháng" />
                            <asp:ListItem Value="3" Text="Theo ngày" />
                        </asp:DropDownList>
                    </div>

                    <div id="bl_TuNgayToiNgay" runat="server">
                        <div class="form-group">
                            <label class="form-control-label">Từ ngày *</label>
                            <input class="form-control" id="dteTuNgay" type="date" runat="server" />
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">Đến ngày *</label>
                            <input class="form-control" id="dteDenNgay" type="date" runat="server" />
                        </div>

                          <asp:Button CssClass="btn btn-primary" ID="btnChon" runat="server" OnClick="btnChon_Click" Text="Chọn"></asp:Button>

                    </div>

                    <div class="form-group">
                        <h3 id="txtContent" runat="server" style="text-align: center" />
                    </div>

                    <dx:ASPxGridView ID="grvList" runat="server" CssClass="table-hover" ClientInstanceName="grvList" KeyFieldName="Key" Width="90%">

                        <Columns>
                            <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="5%">
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataColumn Caption="Tủ sách" FieldName="tusach_name" HeaderStyle-HorizontalAlign="Center" Width="40%" HeaderStyle-Font-Bold="true"></dx:GridViewDataColumn>
                            <dx:GridViewDataColumn Caption="Số lượng sách mượn" FieldName="sl_muon" HeaderStyle-HorizontalAlign="Center" Width="20%" HeaderStyle-Font-Bold="true"></dx:GridViewDataColumn>
                            <dx:GridViewDataColumn Caption="Số lượng sách đã trả" FieldName="sl_tra" HeaderStyle-HorizontalAlign="Center" Width="20%" HeaderStyle-Font-Bold="true"></dx:GridViewDataColumn>
                            <dx:GridViewDataColumn Caption="Số lượng sách quá hạn" FieldName="sl_quahan" HeaderStyle-HorizontalAlign="Center" Width="20%" HeaderStyle-Font-Bold="true"></dx:GridViewDataColumn>
                        </Columns>
                        <SettingsSearchPanel Visible="true" />
                        <SettingsBehavior AllowFocusedRow="true" />
                        <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Gõ từ cần tìm kiếm và enter..." />
                        <SettingsLoadingPanel Text="Đang tải..." />
                        <SettingsPager PageSize="11" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
                    </dx:ASPxGridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>

