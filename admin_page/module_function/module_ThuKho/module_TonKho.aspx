<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_TonKho.aspx.cs" Inherits="admin_page_module_function_module_ThuKho_module_TonKho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <script>
        function btnChiTiet() {
           
        }
    </script>
    <div class="card card-block">
        <div class="form-group row">
            <div class="col-sm-10">
                <span><a href="/admin-nhap-lo-sach" class="btn btn-primary" >Nhập hàng</a></span>
                <span>
                    <%--<asp:Button CssClass="btn btn-primary" ID="btnChiTiet" runat="server" OnClick="btnChiTiet_Click" Text="Chi tiết"></asp:Button></span>--%>
            </div>
        </div>
        <div class="form-group table-responsive">
            <dx:ASPxGridView ID="grvList" runat="server" CssClass="table-hover" ClientInstanceName="grvList" KeyFieldName="tonkho_id" Width="100%">
                <Columns>
                    <dx:GridViewDataColumn Caption="STT" HeaderStyle-HorizontalAlign="Center" Width="5%">
                        <DataItemTemplate>
                            <%#Container.ItemIndex+1 %>
                        </DataItemTemplate>
                    </dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Tên sách" FieldName="nhapsach_nhande" HeaderStyle-HorizontalAlign="Center" Width="50%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Số lượng" FieldName="tonkho_soluong" HeaderStyle-HorizontalAlign="Center" Width="50%"></dx:GridViewDataColumn>
                </Columns>
                <ClientSideEvents RowDblClick="btnChiTiet" />
                <SettingsSearchPanel Visible="true" />
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Gõ từ cần tìm kiếm và enter..." />
                <SettingsLoadingPanel Text="Đang tải..." />
                <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
            </dx:ASPxGridView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>


