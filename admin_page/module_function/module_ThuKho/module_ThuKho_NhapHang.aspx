<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_ThuKho_NhapHang.aspx.cs" Inherits="admin_page_module_function_module_ThuKho_module_ThuKho_NhapHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <style>
        .table th, .table td, .table thead tr th {
            border: 1px solid #a6a9ab;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <script type="text/javascript">
        
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
    </script>
    <div class="container">
        <div class="add_Product row">
            <div class="col-8">
                <h2>Nhập hàng</h2>
                <div class="col-12 form-group">
                    <label class="form-control-label">Mã Nhập:</label>
                    <input type="text" id="txtMaNhap" runat="server" class="form-control" disabled="disabled" />
                </div>
                <%--<div class="col-12 form-group">
                    <label class="form-control-label">Nội Dung:</label>
                    <input type="text" id="txtNoiDung" runat="server" class="form-control" placeholder="Nhập Nội Dung" />
                </div>--%>
                <div class="col-12 form-group">
                    <label class="form-control-label">Ngày Nhập:</label>
                    <input type="datetime" id="txtNgayNhap" runat="server" class="form-control" disabled="disabled" />
                </div>
                <div class="col-12 form-group">
                    <label class="form-control-label">Nhân Viên:</label>
                    <input type="text" id="txtNhanVien" runat="server" class="form-control" disabled="disabled" />
                </div>
            </div>
        </div>
        <div class="add_Product_Detail row">
            <div class="col-12">
                <asp:UpdatePanel ID="upListProduct" runat="server">
                    <ContentTemplate>
                        <div class="col-12">
                            <dx:ASPxGridView ID="grvList" runat="server" CssClass="table-hover" ClientInstanceName="grvList" KeyFieldName="thuvien_sach_id" Width="100%">
                                <Columns>
                                    <dx:GridViewDataColumn Caption="STT" HeaderStyle-HorizontalAlign="Center" Width="5%">
                                        <DataItemTemplate>
                                            <%#Container.ItemIndex+1 %>
                                        </DataItemTemplate>
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Tên sách" FieldName="thuvien_sach_name" HeaderStyle-HorizontalAlign="Center" Width="50%"></dx:GridViewDataColumn>
                                    <%-- <dx:GridViewDataColumn Caption="SL trong kho" FieldName="tonkho_soluong" HeaderStyle-HorizontalAlign="Center" Width="10%" CellStyle-CssClass="text-lg-center"></dx:GridViewDataColumn>--%>
                                    <dx:GridViewDataColumn Caption="Chi Tiết" FieldName="xem" HeaderStyle-HorizontalAlign="Center" Width="10%" HeaderStyle-Font-Bold="true">
                                        <DataItemTemplate>
                                            <a href="#" id="btnChiTiet" runat="server" onserverclick="btnChiTiet_ServerClick">Chi tiết</a>
                                        </DataItemTemplate>
                                    </dx:GridViewDataColumn>
                                </Columns>
                                <SettingsSearchPanel Visible="true" />
                                <SettingsBehavior AllowFocusedRow="true" />
                                <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Gõ từ cần tìm kiếm và enter..." />
                                <SettingsLoadingPanel Text="Đang tải..." />
                                <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
                            </dx:ASPxGridView>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="col-12">
                <div class="Product_Detail card card-block">
                    <%--<h5>Nhập sản phẩm chi tiết</h5>--%>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table id="grvChitiet" class="table table-bordered table-hover">
                                <thead>
                                    <tr style="background: #a3a7a199">
                                        <th>STT</th>
                                        <th scope="col">Tên sách</th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Đơn giá</th>
                                        <th scope="col">Thành tiền</th>
                                        <th scope="col">Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater runat="server" ID="rp_grvChiTiet">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%= stt++ %></td>
                                                <td style="width: 150px;">
                                                    <asp:Label ID="thuvien_sach_name" runat="server"><%#Eval("thuvien_sach_name") %></asp:Label>
                                                </td>
                                                <td>
                                                    <input id="<%#Eval("thuvien_sach_id") %>"  class="form-control" style="width: 80px;" onchange="myUpdate(<%#Eval("thuvien_sach_id") %>)" value="<%#Eval("nhapsachchitiet_soluong") %>" />
                                                </td>
                                                <td>
                                                    <input id="dongia<%# Eval("thuvien_sach_id") %>"  class="form-control" style="width: 80px;" onchange="myUpdate(<%#Eval("thuvien_sach_id") %>)" value="<%#Eval("nhapsachchitiet_dongia") %>" />
                                                </td>
                                                <td>
                                                    <input id="thanhtien<%# Eval("thuvien_sach_id") %>" readonly="true"  class="form-control" style="width: 80px;" onchange="myUpdate(<%#Eval("thuvien_sach_id") %>)" value="<%#Eval("nhapsachchitiet_thanhtien") %>" />
                                                </td>
                                                <td>
                                                    <a href="javascript:void(0)" id="btnXoa<%#Eval("thuvien_sach_id") %>" onclick="Delete(<%#Eval("thuvien_sach_id") %>)">Xóa</a>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" CssClass="btn btn-primary" Text="Lưu" />
                            <a href="/admin-quan-ly-nhap-hang" class="btn btn-primary">Quay lại</a>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdatePanel ID="up_ProductCT" runat="server">
                        <ContentTemplate>
                            <div style="display: none;">
                                <input id="txt_ID" type="text" runat="server" />
                                <input id="txt_SoLuong" type="text" runat="server" />
                                <input id="txt_DonGia" type="text" runat="server" />
                                <input id="txt_ThanhTien" type="text" runat="server" />
                                <a href="javascript:void(0)" id="NhapHang" type="button" runat="server" onserverclick="NhapHang_ServerClick">Update</a>

                                <%--nút xóa--%>
                                <a href="javascript:void(0)" id="btnXoa" type="button" runat="server" onserverclick="btnXoa_ServerClick">Xóa</a>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
            <script>
                //var a;
                // update

                function myUpdate(id) {
                    var SoLuong = document.getElementById(id).value;

                    getIdDonGia = "dongia" + id;

                    var DonGia = document.getElementById(getIdDonGia).value;
                    getIdThanhTien = "thanhtien" + id;

                    console.log(getIdDonGia);
                    console.log(getIdThanhTien);
                    document.getElementById("<%= txt_ID.ClientID%>").value = id;
                    document.getElementById("<%= txt_SoLuong.ClientID%>").value = SoLuong;
                    document.getElementById("<%= txt_DonGia.ClientID%>").value = DonGia;

                    document.getElementById("<%= txt_ThanhTien.ClientID%>").value = parseInt(SoLuong) * parseInt(DonGia);
                    document.getElementById(getIdThanhTien).value = parseInt(SoLuong) * parseInt(DonGia);
                    document.getElementById(getIdDonGia).value = document.getElementById("<%= txt_DonGia.ClientID%>").value;

                    document.getElementById("<%= NhapHang.ClientID%>").click();
                }

                function Delete(id) {
                    document.getElementById("<%= txt_ID.ClientID%>").value = id;
                    document.getElementById("<%= btnXoa.ClientID%>").click();
                }
            </script>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>



