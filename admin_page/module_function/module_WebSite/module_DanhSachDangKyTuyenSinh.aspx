<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_DanhSachDangKyTuyenSinh.aspx.cs" Inherits="admin_page_module_function_module_WebSite_module_DanhSachDangKyTuyenSinh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <div class="card card-block">
        <div class="form-group table-responsive">
            <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="hocsinh_id" Width="100%">
                <Columns>
                    <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="5%">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataColumn Caption="STT" HeaderStyle-HorizontalAlign="Center" Width="3%">
                        <DataItemTemplate>
                            <%#Container.ItemIndex+1 %>
                        </DataItemTemplate>
                    </dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Họ tên HS" FieldName="hocsinh_name" HeaderStyle-HorizontalAlign="Center" Width="20%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Năm sinh" FieldName="hocsinh_namsinh" HeaderStyle-HorizontalAlign="Center" Width="5%"></dx:GridViewDataColumn>
                    <%--<dx:GridViewDataColumn Caption="Tuổi" FieldName="hocsinh_tuoi" HeaderStyle-HorizontalAlign="Center" Width="8%"></dx:GridViewDataColumn>--%>
                    <%--<dx:GridViewDataColumn Caption="Lớp đk" FieldName="hocsinh_dangki_class" HeaderStyle-HorizontalAlign="Center" Width="5%"></dx:GridViewDataColumn>--%>
                    <dx:GridViewDataColumn Caption="Họ tên ba" FieldName="hocsinh_phuhuynh_name" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="SĐT ba" FieldName="hocsinh_phone" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Họ tên mẹ" FieldName="hocsinh_tenme" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="SĐT mẹ" FieldName="hocsinh_sdtme" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <%--<dx:GridViewDataColumn Caption="Địa chỉ" FieldName="hocsinh_address" HeaderStyle-HorizontalAlign="Center" Width="20%"></dx:GridViewDataColumn>--%>
                    <%--<dx:GridViewDataColumn Caption="Nơi ĐK" FieldName="hocsinh_noidangky" HeaderStyle-HorizontalAlign="Center" Width="5%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="CSDK" FieldName="cosodangky" HeaderStyle-HorizontalAlign="Center" Width="5%"></dx:GridViewDataColumn>--%>
                    <%--<dx:GridViewDataColumn Caption="Người ĐK" FieldName="username_fullname" HeaderStyle-HorizontalAlign="Center" Width="5%"></dx:GridViewDataColumn>--%>
                    <dx:GridViewDataColumn Caption="Số lần TV" FieldName="trangthai" HeaderStyle-HorizontalAlign="Center" Width="3%">
                        <DataItemTemplate>
                            <p><%#Eval("count") %></p>
                        </DataItemTemplate>
                    </dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Trạng thái" FieldName="chedo_name" HeaderStyle-HorizontalAlign="Center" Width="3%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Ghi chú" FieldName="hocsinh_ghichu" HeaderStyle-HorizontalAlign="Center" Width="25%"></dx:GridViewDataColumn>
                </Columns>
                <SettingsSearchPanel Visible="true" />
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Gỏ từ cần tìm kiếm và enter..." />
                <SettingsLoadingPanel Text="Đang tải..." />
                <SettingsPager PageSize="20" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
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

