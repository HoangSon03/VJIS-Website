<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_TonKho.aspx.cs" Inherits="admin_page_module_function_module_TonKho" %>

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
    <script type="text/javascript">
        function func() {
            grvList.Refresh();
            popupControl.Hide();
        }



        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }

    </script>
    <div class="card card-block">
        <div class="form-group row">
            <div class="col-sm-10">
                <asp:UpdatePanel ID="udButton" runat="server">
                    <ContentTemplate>
                 
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="form-group table-responsive">
            <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="Key" Width="60%">
                <Columns>
    

                    <%-- data ton kho --%>
                    <dx:GridViewDataColumn Caption="Tên sách" FieldName="sach_name" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                     <dx:GridViewDataColumn Caption="Số lượng nhập" FieldName="sach_soluongnhap" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                     <dx:GridViewDataColumn Caption="Số lượng xuất" FieldName="soluongxs" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>
                     <dx:GridViewDataColumn Caption="Tồn kho" FieldName="tonkho" HeaderStyle-HorizontalAlign="Center" Width="30%"></dx:GridViewDataColumn>


                </Columns>
                <SettingsSearchPanel Visible="true" />
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Gõ từ cần tìm kiếm và enter..." />
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

