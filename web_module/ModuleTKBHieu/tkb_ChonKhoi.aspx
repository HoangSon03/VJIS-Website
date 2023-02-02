<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tkb_ChonKhoi.aspx.cs" Inherits="web_module_ModuleTKBHieu_tkb_ChonKhoi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="/css/fontawesome.css" />
    <link rel="stylesheet" href="/css/fontawesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid">
                <div class="chonkhoi">
                <h1>Thời Khóa Biểu</h1>
                <asp:DropDownList ID="ddlKhoi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlKhoi_SelectedIndexChanged" DataValueField="khoi_id" DataTextField="khoi_name"></asp:DropDownList>
                    <%--<dx:ASPxComboBox ID="ddlKhoi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlKhoi_SelectedIndexChanged"></dx:ASPxComboBox>--%>
                </div>
                
                <div class="chonmonhoc">
                    <h4>Chọn Môn Học</h4>
                    <table class="table">
                        <tr>
                            <td >Chọn môn</td>
                            <td >Tên Môn</td>
                            <td >Nhập tổng số tiết của môn</td>
                            <td >Chọn môn học 2 buổi liên tiếp nhau</td>
                        </tr>
                        <asp:Repeater runat="server" ID="rp_MonHoc">
                            <ItemTemplate>
                                <tr>
                                    <td><input type="checkbox" id="checkMonHoc<%#Eval("monhoc_id") %>" name="name" value="" /></td>
                                    <td><%#Eval("monhoc_name") %></td>
                                    <td><input type="text" id="txtMonHoc<%#Eval("monhoc_id") %>" name="name" value="" /></td>
                                    <td><input type="checkbox" id="checkTietHoc<%#Eval("monhoc_id") %>" name="name" value="" /></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                    </table>
                    
                </div>
                <a href="#" class="btn btn-primary">Tiếp Theo</a>
            </div>
        </div>
        <script src="/js/jquery-1.11.0.min.js"></script>
        <script src="/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="/js/slick.min.js"></script>
        <!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="/js/fontawesome.js"></script>
        <script src="/js/fontawesome.min.js"></script>
        <script src="/js/jquery.nanogallery2.min.js"></script>
        <script src="/js/jquery.magnific-popup.js"></script>
        <script src="/js/jquery.fancybox.min.js"></script>
    </form>
</body>
</html>
