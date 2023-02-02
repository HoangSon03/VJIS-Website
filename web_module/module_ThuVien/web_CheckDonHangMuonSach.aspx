<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_CheckDonHangMuonSach.aspx.cs" Inherits="web_module_module_ThuVien_web_CheckDonHangMuonSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <style>
        .section-feeling {
            display: none;
        }

        .loading {
            display: none;
            width: 100%;
            height: 100%;
            z-index: 1;
            background-color: rgba(0,0,0,0.6);
            position: fixed;
        }

        .loading__img {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .loader {
            border: 16px solid #f3f3f3;
            border-radius: 50%;
            border-top: 16px solid #3498db;
            width: 100px;
            height: 100px;
            -webkit-animation: spin 1s linear infinite; /* Safari */
            animation: spin 1s linear infinite;
        }

        .circle-loading {
            width: 7rem;
            height: 7rem;
            border-radius: 50%;
            position: relative;
            margin: 0 auto;
        }

            .circle-loading:before {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border-radius: inherit;
                border: 0.7rem solid #fff;
                border-right-color: var(--secondary);
                border-bottom-color: var(--secondary);
                animation: circleLoading 1.2s forwards infinite linear;
            }

        @keyframes circleLoading {
            to {
                transform: rotate(360deg);
            }
        }
    </style>
    <script src="web_module/module_ThuVien/assets/js/jquery.js"></script>
    <script src="web_module/module_ThuVien/assets/js/jquery.datetimepicker.full.js"></script>
    <link rel="stylesheet" href="web_module/module_ThuVien/assets/js/jquery.datetimepicker.min.css" />
    <link href="web_module/module_ThuVien/assets/css/library.css" rel="stylesheet" />
    <link href="web_module/module_ThuVien/assets/css/reponsive-lib.css" rel="stylesheet" />

    <script>
        //func check null mượn sách
        function checkNULL() {
            var ngayMuon = document.getElementById('<%= txt_NgayMuon.ClientID%>');
            var ngayTra = document.getElementById('<%= txt_NgayTra.ClientID%>');
            var Name = document.getElementById('<%= txt_Name.ClientID%>');
            if (Name.value.trim() == "") {
                swal('Vui lòng nhập tên của bạn!', '', 'warning').then(function () { Name.focus(); });
            }
            else if (ngayMuon.value.trim() == "") {
                swal('Vui lòng chọn ngày mượn!', '', 'warning').then(function () { ngayMuon.focus(); });
            } else if (ngayTra.value.trim() == "") {
                swal('Vui lòng chọn ngày trả!', '', 'warning').then(function () { ngayTra.focus(); });
            } else {
                //loading icon
                //DisplayLoadingIcon();
                document.getElementById("<%= btnMuonSach.ClientID%>").click();
            }
        }

        //không cho chọn những ngày đã quá
        $(document).ready(function () {

            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!
            var yyyy = today.getFullYear();
            if (dd < 10) {
                dd = '0' + dd
            }
            if (mm < 10) {
                mm = '0' + mm
            }

            today = yyyy + '-' + mm + '-' + dd;
            document.getElementById("<%=txt_NgayMuon.ClientID%>").setAttribute("min", today);
            document.getElementById("<%=txt_NgayTra.ClientID%>").setAttribute("min", today);
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="higlobal" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hislider" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibelowtop" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <div class="loading" id="img-loading-icon">
        <div class="loading__img">
            <div class="circle-loading"></div>
        </div>
    </div>
    <div class="apps-library">
        <div class="header_library">
            <h2 class="header-library">Đơn Hàng Mượn Sách</h2>
        </div>
        <div class="container-fluid">
            <div class="row" style="margin: 0">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 app-library">
                    <div class="input-title">
                        <div class="style-form">
                            <div class="group">
                                <input class="input_text" type="text" runat="server" id="txt_Name" />
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Tên Khách Hàng</label>
                            </div>
                            <div class="group">
                                <input class="input_text" type="text" runat="server" id="txt_Email" />
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Email</label>
                            </div>
                            <div class="col-sm-12">
                                Ngày mượn:
                                <input type="date" class="form-control mb-2" id="txt_NgayMuon" runat="server" />
                            </div>
                            <div class="col-sm-12">
                                Ngày trả:
                                <input type="date" class="form-control" id="txt_NgayTra" runat="server" />
                            </div>
                            <div class="warning">
                                <i class="fas fa-exclamation icon-warning"></i>
                                <span><b class="icon-warning">Lưu ý</b> Phí quá hạn mượn là 2k mỗi ngày</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 app-librarys">
                    <div class="table-body table-1">
                        <asp:UpdatePanel runat="server">
                            <ContentTemplate>
                                <table id="cart" class=" table table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Tên Sách</th>
                                            <th class="th-img">Hình ảnh</th>
                                            <th class="text-center" style="width:100px">Số lượng</th>
                                            <th style="width: 10%">Xóa</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater runat="server" ID="rpMuonSach">
                                            <ItemTemplate>
                                                <tr>
                                                    <td data-th="Product">
                                                        <div class="products">
                                                            <h4 class="nomargin"><%#Eval("thuvien_sach_name") %></h4>
                                                        </div>
                                                    </td>
                                                    <td class="td_img">
                                                        <div class=" hidden-xs">
                                                            <img src="<%#Eval("thuvien_sach_image") %>" class="img-responsive" />
                                                        </div>
                                                    </td>
                                                    <td data-th="Quantity">
                                                        <input class="form-control text-center" value="<%#Eval("booksach_chitiet_soluong") %>" type="number" min="1" id="<%#Eval("thuvien_sach_id") %>" onchange="myUpdate(<%#Eval("thuvien_sach_id") %>)" />
                                                    </td>
                                                    <td class="actions" data-th="">
                                                        <a class="btn btn-danger btn-lg" href="javascript:void(0)" id="btnXoa<%#Eval("thuvien_sach_id") %>" onclick="Delete(<%#Eval("thuvien_sach_id") %>)" title="Xóa sách khỏi đơn mượn"><i class="fas fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                                <a href="javascript:void(0)" class="btn btn-primary muonsach" onclick="checkNULL()" title="Mượn sách">Mượn Sách</a>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:UpdatePanel ID="up_ProductCT" runat="server">
        <ContentTemplate>
            <div style="display: none;">
                <input id="txt_ID" type="text" runat="server" />
                <input id="txt_SoLuong" type="text" runat="server" />
                <a href="javascript:void(0)" id="btnUpdate" type="button" runat="server" onserverclick="btnUpdate_ServerClick">Update</a>
                <%--nút xóa--%>
                <a href="javascript:void(0)" id="btnXoa" type="button" runat="server" onserverclick="btnXoa_ServerClick">Xóa</a>
                <%-- nút mượn sách--%>
                <a href="javascript:void(0)" id="btnMuonSach" type="button" runat="server" onserverclick="btnMuonSach_ServerClick">Mượn Sách</a>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script>
        var a, b, c;
        <%-- function myTotal(id) {
            //var a, b, c;
            a = document.getElementById(id).value;
            b = document.getElementById("txtGiaTien" + id).value;
            //str = b.replace(",", "");
            c = a * b;
            document.getElementById("txtThanhTien" + id).value = c;
        }--%>
        // update
        function myUpdate(id) {
            a = document.getElementById(id).value;
            document.getElementById("<%= txt_ID.ClientID%>").value = id;
            document.getElementById("<%= txt_SoLuong.ClientID%>").value = a;
            document.getElementById("<%= btnUpdate.ClientID%>").click();
        }
        function Delete(id) {

            swal("Bạn có thực sự muốn xóa sách này?",
                "Nếu xóa, dữ liệu không thể khôi phục",
                "warning",
                {
                    buttons: true,
                    dangerMode: true
                }).then(function (value) {
                    //debugger;
                    if (value == true) {
                        //xóa phần tử trong cookie
                        var decodedCookie = decodeURIComponent(document.cookie);
                        var ca = decodedCookie.split(';');
                        var c = ca[1].split('=')[1];
                        var array = c.split(',');
                        for (var i = 0; i <= array.length; i++) {
                            if (array[i] == id) {
                                array.splice(i, 1);
                            }
                        }
                        console.log(array);
                        c = array.toString();
                        setCookie("cartbook", c, 365);
                        document.getElementById("<%= txt_ID.ClientID%>").value = id;
                        document.getElementById("<%= btnXoa.ClientID%>").click();
                    }
                });

        }
        function setCookie(cname, cvalue, exdays) {
            var user = "cartbook";
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 365 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + "" + cvalue + ";" + expires + ";path=/";
        }

    </script>

</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>

