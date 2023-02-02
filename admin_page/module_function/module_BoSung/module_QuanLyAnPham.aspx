<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_QuanLyAnPham.aspx.cs" Inherits="admin_page_module_function_module_QuanLyAnPham" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <style>
        .dxgv {
            text-align: center;
        }

        .colora {
            color: white !important;
        }

        .form-group {
            margin-bottom: 0px;
            margin-top: 1rem;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        function func() {
            grvList.Refresh();
            popupControl.Hide();
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
                        var xoa = document.getElementById('<%=btnXoa2.ClientID%>');
                        xoa.click();
                    }
                });
        }

    </script>
    <a id="btnXoa2" runat="server" onserverclick="btnXoa2_ServerClick"></a>
    <div class="card card-block">
        <div class="form-group table-responsive">
            <div class="form-group row">
                <div class="col-sm-10">
                    <span><a href="#" id="btnThem" runat="server" onserverclick="btnThem_Click" class="btn btn-primary">Thêm Mới</a></span>
                    <span>
                        <asp:Button CssClass="btn btn-primary" ID="btnChiTiet" runat="server" OnClick="btnChiTiet_Click" Text="Chi tiết"></asp:Button></span>
                    <a id="btnXoa" runat="server" onclick="confirmDel()" class="btn btn-primary colora">Xoá</a>
                    <a href="#" id="btnImportExcel" class="btn btn-primary" data-toggle="modal" data-target="#modal_ImportExcel">Nhập Excel</a>
                </div>
            </div>
         <%--   <div class="col-lg-4 form-group row">
                <asp:DropDownList ID="ddlTuSach" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlTuSach_SelectedIndexChanged" AutoPostBack="true" Style="float: left;">
                </asp:DropDownList>
            </div>--%>
            <div class="col-lg-8">
                <dx:ASPxGridView ID="grvList" runat="server" ClientInstanceName="grvList" KeyFieldName="thuvien_sach_id" Width="100%">
                    <Columns>
                        <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="5%">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataColumn Caption="Tên sách" FieldName="thuvien_sach_name" HeaderStyle-HorizontalAlign="Center" Width="25%"></dx:GridViewDataColumn>
                        <dx:GridViewDataColumn Caption="Loại ấn phẩm" FieldName="thuvien_sach_loaianpham" HeaderStyle-HorizontalAlign="Center" Width="5%"></dx:GridViewDataColumn>
                        <dx:GridViewDataColumn Caption="Hình ảnh" HeaderStyle-HorizontalAlign="Center" Width="20%">
                            <DataItemTemplate>
                                <img src='<%#Eval("thuvien_sach_image") %>' alt="Alternate Text" style="max-width: 100px; height: auto;" />
                            </DataItemTemplate>
                        </dx:GridViewDataColumn>
                    </Columns>
                    <ClientSideEvents />
                    <SettingsSearchPanel Visible="true" />
                    <SettingsBehavior AllowFocusedRow="true" />
                    <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Nhập từ cần tìm kiếm..." />
                    <SettingsLoadingPanel Text="Đang tải..." />
                    <SettingsLoadingPanel Text="Đang tải..." />
                    <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
                </dx:ASPxGridView>
            </div>
            <div class="col-lg-4">
                <input type="text" id="txtImage" runat="server" style="display: none" />
                <label class="form-control-label">Image :</label>
                <div id="up1" class="">
                    <asp:FileUpload CssClass="hidden-xs-up" ID="FileUpload1" runat="server" onchange="showPreview1(this)" accept=".png,.jpeg,.jpg" />
                    <button type="button" class="btn-chang" onclick="clickavatar1()">
                        <img id="imgPreview1" src="/admin_images/up-img.png" style="max-width: 100%; height: 200px" />
                    </button>
                </div>
                <div>
                    <a  id="btnLuuImage" runat="server" onserverclick="btnLuuImage_ServerClick" class="btn btn-primary">Lưu</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modal_ImportExcel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <span class="title_modal">Import excel
                                                <%--<asp:FileUpload CssClass="hidden-xs-up" ID="FileUpload1" runat="server" onchange="showPreview1(this)" accept=".png,.jpeg,.jpg" />--%>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </span>
                </div>
                <div class="modal-body">

                    <asp:FileUpload ID="fuUpload" multiple="multiple" runat="server" onchange="showPreview(this)" accept=".xls,.xlsx" />
                    <div>
                        <span>Nếu chưa có mẫu file vui lòng download <a href="../../../Excel_Files/MauNhapQuanLiAnPham.xlsx" download style="color: #0275d8">tại đây</a></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-primary" id="ia" runat="server" onserverclick="btnImport_ServerClick">Lưu</a>
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

