<%@ Page Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_MuonSachChiTiet.aspx.cs" Inherits="admin_page_module_function_module_ThuVien_module_MuonSachChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <style>
        .table th, .table td, .table thead tr th {
            border: 1px solid #a6a9ab;
        }
         .table tr th.a{
            line-height:38px;
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
const { date } = require("gulp-util");

        function check() {
            var result;
            if (document.getElementById('giaovien').checked) {
                result = document.getElementById('giaovien').value;
            }
            if (document.getElementById('hocsinh').checked) {
                result = document.getElementById('hocsinh').value;
            }
            document.getElementById('/*********************/').value = result;
        }
        function checkNULL() {
            var CityName = document.getElementById('/********************/');

            if (CityName.value.trim() == "") {
                swal('Tên người mượn không được để trống!', '', 'warning').then(function () { CityName.focus(); });
                return false;
            }
            return true;
        }
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
        <%--function addDayMuon() {
            var songay = document.getElementById('<%= txtSoNgay.ClientID%>').value;
            var ngaytra = document.getElementById('<%= dteNgayMuon.ClientID%>').value;
            var date = new Date();
            var ngaytra = new Date();
            ngaytra.setDate(date.getDate() + songay);
            var dateString = ngaytra.getUTCDate() + "/" + (ngaytra.getUTCMonth()) + "/" + ngaytra.getUTCFullYear();
            document.getElementById('<%= dteNgayTra.ClientID%>').value = dateString;

        }--%>
    </script>
    <div class="container">
        <div class="row">
            <div class="col-6 info-nguoinhan">
                <h2>Mượn sách</h2>
                <div class="form-group">
                    <label class="form-control-label">Nhân viên *</label>
                    <input type="text" class="form-control" id="txtNhanVien" runat="server" disabled="disabled" />
                    <input type="text" name="name" value="" runat="server" id="txtMaNhanVien" hidden="hidden" />
                </div>
                <div class="form-group">
                    <label class="form-control-label">Họ và tên người mượn *</label>
                    <input type="text" class="form-control" id="txtName" runat="server" />
                </div>
                <div class="form-group">
                    <input type="radio" onclick="check()" name="colors" id="giaovien" value="1" />Giáo viên
                    <input type="radio" onclick="check()" name="colors" id="hocsinh" value="2" />Học sinh
                    <input type="text" name="name" value="" runat="server" id="txtBoPhan" hidden="hidden" />
                </div>
                <div class="form-group">
                    <label class="form-control-label">Ngày mượn *</label>
                    <input class="form-control" id="dteNgayMuon" type="datetime" runat="server" disabled="disabled"/>
                </div>
                <div class="form-group">
                    <label class="form-control-label">Số Ngày*</label>
                    <input class="form-control" id="txtSoNgay" type="datetime" runat="server" onchange="addDayMuon()"/>
                </div>
                <%--<div class="form-group">
                    <label class="form-control-label">Ngày trả *</label>
                    <input class="form-control" id="dteNgayTra" type="datetime" runat="server" disabled="disabled"/>
                </div>--%>
            </div>
        </div>
        <div class="add_Product_Detail row card card-block">
            <div class="col-6">
                <asp:UpdatePanel ID="upListProduct" runat="server">
                    <ContentTemplate>
                       <dx:ASPxGridView ID="grvList" runat="server" CssClass="table-hover" ClientInstanceName="grvList" KeyFieldName="thuvien_sach_id" Width="100%">
                            <Columns>
                                <dx:GridViewDataColumn Caption="STT" HeaderStyle-HorizontalAlign="Center" Width="3%">
                                    <DataItemTemplate>
                                        <%#Container.ItemIndex+1 %>
                                    </DataItemTemplate>
                                </dx:GridViewDataColumn>
                                <dx:GridViewDataColumn Caption="Tên sách" FieldName="thuvien_sach_name" HeaderStyle-HorizontalAlign="Center" Width="40%"></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn Caption="Tồn kho" FieldName="tonkho_soluong" HeaderStyle-HorizontalAlign="Center" Width="5%" CellStyle-CssClass="text-lg-center"></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn Caption="Chi Tiết" FieldName="xem" HeaderStyle-HorizontalAlign="Center" Width="15%" HeaderStyle-Font-Bold="true">
                                    <DataItemTemplate>
                                        <a href="#" id="btnDatHang" runat="server" onclick="return checkNULL()" onserverclick="btnDatHang_ServerClick">Mượn sách</a>
                                    </DataItemTemplate>
                                </dx:GridViewDataColumn>
                            </Columns>
                            <SettingsSearchPanel Visible="true" />
                            <SettingsBehavior AllowFocusedRow="true" />
                            <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Gõ từ cần tìm kiếm và enter..." />
                            <SettingsLoadingPanel Text="Đang tải..." />
                            <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
                        </dx:ASPxGridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="col-6">
                <div class="Product_Detail card card-block">
                    <h5>Chi tiết mượn sách</h5>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table id="grvChitiet" class="table table-bordered table-hover  ">
                                <thead>
                                    <tr style="background: #a3a7a199">
                                        <th class="a">STT</th>
                                        <th scope="col" class="a">Tên sách</th>
                                        <th scope="col">Số lượng mượn</th>
                                        <th scope="col" class="a">Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater runat="server" ID="rp_grvChiTiet">
                                        <ItemTemplate>
                                            <tr>
                                                <td style="text-align: center"><%= stt++ %></td>
                                                <td style="text-align: center"><%= stt++  %></td>
                                                <td style="width: 280px;">
                                                    <asp:Label ID="thuvien_sach_name" runat="server"><%#Eval("thuvien_sach_name") %></asp:Label>
                                                </td>
                                                <td>
                                                    <input id="<%#Eval("thuvien_sach_id") %>" onchange="myUpdate(<%#Eval("thuvien_sach_id") %>)" class="form-control" style="width: 80px; margin: 0 auto; text-align: center" value="<%#Eval("booksach_chitiet_soluong") %>" onkeypress="return isNumberKey(event)"/>
                                                </td>
                                                <td style="text-align: center">
                                                    <a href="javascript:void(0)" id="btnXoa<%#Eval("thuvien_sach_id") %>" onclick="Delete(<%#Eval("thuvien_sach_id") %>)">Xóa</a>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                            <asp:Button ID="btnMuonSach" runat="server" OnClick="btnMuonSach_Click" CssClass="btn btn-primary" Text="Mượn sách" />
                            <a href="/admin-danh-sach-muon" class="btn btn-primary">Quay lại</a>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdatePanel ID="up_ProductCT" runat="server">
                        <ContentTemplate>
                            <div style="display: none;">
                                <input id="txt_ID" type="text" runat="server" />
                                <input id="txt_SoLuong" type="text" runat="server" placeholder="sl" />
                                <%--<input id="txt_GiaTien" type="text" runat="server" />--%>
                                <a href="javascript:void(0)" id="DatHang" type="button" runat="server" onserverclick="DatHang_ServerClick">Mượn sách</a>
                                <%--nút xóa--%>
                                <a href="javascript:void(0)" id="btnXoa" type="button" runat="server" onserverclick="btnXoa_ServerClick">Xóa</a>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                   <%-- <asp:UpdatePanel ID="up_ProductCT" runat="server">
                        <ContentTemplate>
                            <div style="display: none;">
                                <input id="txt_ID" type="text" runat="server" />
                                <input id="txt_SoLuong" type="text" runat="server" placeholder="sl" />
                                
                                <a href="javascript:void(0)" id="DatHang" type="button" runat="server" onserverclick="DatHang_ServerClick">Mượn sách</a>
                              
                                <a href="javascript:void(0)" id="btnXoa" type="button" runat="server" onserverclick="btnXoa_ServerClick">Xóa</a>
                              
                                <a href="javascript:void(0)" id="btnKiemTra" type="button" runat="server">Kiểm tra</a>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>--%>
                </div>
            </div>
        </div>
    </div>
    <script>

        // update
        function myUpdate(id) {
            var a = document.getElementById(id).value;
            document.getElementById("<%= txt_ID.ClientID%>").value = id;
            document.getElementById("<%= txt_SoLuong.ClientID%>").value = a;
            document.getElementById("<%= DatHang.ClientID%>").click();
                document.getElementById("<%= txt_SoLuong.ClientID%>").value = a;
                document.getElementById("<%= DatHang.ClientID%>").click();
        }
        function Delete(id) {
            document.getElementById("<%= txt_ID.ClientID%>").value = id;
            document.getElementById("<%= btnXoa.ClientID%>").click();
        }
        window.onload = function () {
            var a = document.getElementById('<%=txtBoPhan.ClientID%>').value;
            if (a == "1") {
                document.getElementById("giaovien").checked = true;
            }
            if (a == "2") {
                document.getElementById("hocsinh").checked = true;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hifootersite" runat="Server">
       <%-- function CheckSL() {
            document.getElementById("<%= btnKiemTra.ClientID%>").click();
        }
    </script>--%>
</asp:Content>

