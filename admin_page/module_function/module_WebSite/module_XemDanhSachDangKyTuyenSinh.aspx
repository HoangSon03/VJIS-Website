<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_XemDanhSachDangKyTuyenSinh.aspx.cs" Inherits="admin_page_module_function_module_WebSite_module_XemDanhSachDangKyTuyenSinh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="hibodyhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hibodywrapper" Runat="Server">
     <div class="card card-block">
         <div class="form-group table-responsive">
            <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="hocsinh_id" Width="100%">
                <Columns>
                    <dx:GridViewDataColumn Caption="STT" HeaderStyle-HorizontalAlign="Center" Width="5%">
                        <DataItemTemplate>
                            <%#Container.ItemIndex+1 %>
                        </DataItemTemplate>
                    </dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Họ tên HS" FieldName="hocsinh_name" HeaderStyle-HorizontalAlign="Center" Width="10%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Ngày sinh" FieldName="hocsinh_dateofbirth" HeaderStyle-HorizontalAlign="Center" Width="8%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Lớp ĐK" FieldName="hocsinh_dangki_class" HeaderStyle-HorizontalAlign="Center" Width="5%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Họ tên PH" FieldName="hocsinh_phuhuynh_name" HeaderStyle-HorizontalAlign="Center" Width="8%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Địa chỉ" FieldName="hocsinh_address" HeaderStyle-HorizontalAlign="Center" Width="8%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="SĐT" FieldName="hocsinh_phone" HeaderStyle-HorizontalAlign="Center" Width="8%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Email" FieldName="hocsinh_email" HeaderStyle-HorizontalAlign="Center" Width="8%"></dx:GridViewDataColumn>
                    <dx:GridViewDataColumn Caption="Ngày đăng ký" FieldName="hocsinh_ngaydangky" HeaderStyle-HorizontalAlign="Center" Width="8%"></dx:GridViewDataColumn>
                </Columns>
                <SettingsSearchPanel Visible="true" />
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText EmptyDataRow="Không có dữ liệu" SearchPanelEditorNullText="Gỏ từ cần tìm kiếm và enter..." />
                <SettingsLoadingPanel Text="Đang tải..." />
                <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
            </dx:ASPxGridView>
        </div>
         </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibodybottom" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hifooter" Runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hifootersite" Runat="Server">
</asp:Content>

