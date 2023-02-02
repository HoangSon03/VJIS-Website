<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_ViewSach.aspx.cs" Inherits="web_module_module_ThuVien_web_ViewSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <script src="https://kit.fontawesome.com/f41ccfc950.js" crossorigin="anonymous"></script>
    <%--<link href="web_module/module_ThuVien/assets/css/library1.css" rel="stylesheet" />--%>
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
    <style>
        .section-feeling {
            display: none;
        }
    </style>
    <input type="text" value="" id="txtUserName" runat="server" hidden="hidden" />
    <asp:ScriptManager runat="server" />
    <div class="container">
        <h2 class="title_library">Thư Viện Sách</h2>
        <div class="row">
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="input-group">
                        <div class="form-outline">
                            <input type="search" id="txt_Search" runat="server" class="form-control" />
                        </div>
                        <a href="#" runat="server" id="btnSearch" onserverclick="btnSearch_ServerClick" class="btn btn-primary"><i class="fas fa-search"></i></a>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
        <div class="row mt-5">
            <div class="col-3 content-left">
                <div class="list-type5">
                    <ol class="nav nav-pills nav__liblary">
                        <asp:Repeater runat="server" ID="rpTusach">
                            <ItemTemplate>
                                <li class="nav__liblary-item">
                                    <a class="nav-link nav__liblary-link" data-toggle="pill" href="#v-pills-<%#Eval("thuvien_tusach_id") %>"><%#Eval("thuvien_tusach_name") %></a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ol>
                </div>
            </div>
            <div class="header_list">
                <label for="nav-mobile-input" class="nav-bar-btn nav-menu-bar">
                    <i class=" fas fa-bars icon_link"></i>
                </label>
            </div>
            <input type="checkbox" hidden="hidden" name="" class="nav-input" id="nav-mobile-input" />
            <label for="nav-mobile-input" class="nav-overlay"></label>
            <div class="numberlist">
                <label for="nav-mobile-input" class="nav-mobile-close">
                    <i class="fas fa-times"></i>
                </label>
                <ol class="nav nav-pills">
                    <asp:Repeater runat="server" ID="rpTuSach2">
                        <ItemTemplate>
                            <li class="nav-mobile-links">
                                <a class="nav-mobile-link" data-toggle="pill" href="#v-pills-<%#Eval("thuvien_tusach_id") %>"><%#Eval("thuvien_tusach_name") %></a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%--<li class="active"><a href="#Sach_01" data-toggle="pill" class="nav-mobile-link">Sách thiếu nhi </a>
                    </li>
                    <li><a href="#Sach_02" data-toggle="pill" class="nav-mobile-link">Sách lịch sử </a></li>
                    <li><a href="#Sach_03" data-toggle="pill" class="nav-mobile-link">Sách văn học Việt Nam </a></li>
                    <li><a href="#Sach_04" data-toggle="pill" class="nav-mobile-link">Sách văn học nước ngoài </a></li>
                    <li><a href="#Sach_05" data-toggle="pill" class="nav-mobile-link">Sách cẩm nang </a></li>
                    <li><a href="#Sach_06" data-toggle="pill" class="nav-mobile-link">Sách ngoại ngữ </a></li>
                    <li><a href="#Sach_07" data-toggle="pill" class="nav-mobile-link">Sách khác </a></li>
                    <li><a href="#Sach_08" data-toggle="pill" class="nav-mobile-link">Sách giáo viên </a></li>
                    <li><a href="#Sach_09" data-toggle="pill" class="nav-mobile-link">Sách kĩ năng </a></li>
                    <li><a href="#Sach_10" data-toggle="pill" class="nav-mobile-link">Sách nuôi dạy con </a></li>
                    <li><a href="#Sach_11" data-toggle="pill" class="nav-mobile-link">Sách tham khảo </a></li>
                    <li><a href="#Sach_12" data-toggle="pill" class="nav-mobile-link">Sách tiếng anh </a></li>--%>
                </ol>
            </div>
            <div class="col-9 content-right">
                <div class="tab-content">
                    <asp:Repeater runat="server" ID="rpLoaiSach" OnItemDataBound="rpLoaiSach_ItemDataBound">
                        <ItemTemplate>
                            <div class="tab-pane" id="v-pills-<%#Eval("thuvien_tusach_id") %>">
                                <div class="container">
                                    <div class="row">
                                        <asp:Repeater runat="server" ID="rpSach">
                                            <ItemTemplate>
                                                <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 product-card">
                                                    <div class="card card__liblary">
                                                        <div class="badge">
                                                            <input type="checkbox" name="" class="nav-input heart_checkked" id="heart-checkbox">
                                                            <label class="heart" for="heart-checkbox">
                                                                <a href="javascript:void(0)" title="Thêm vào danh sách yêu thích" id="sach_<%#Eval("thuvien_sach_id") %>" onclick="checkID(this.id)"><i class="fa fa-heart icon_link_fa"></i>
                                                                </a>
                                                            </label>
                                                        </div>
                                                        <div class="product-tumb">
                                                            <img src="../../<%#Eval("thuvien_sach_image") %>" class="card-img-top" alt="<%#Eval("thuvien_sach_name") %>" />
                                                        </div>
                                                        <div class="product-details">
                                                            <h4><a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="<%#Eval("thuvien_sach_name") %>"><%#Eval("thuvien_sach_name") %></a></h4>
                                                            <div class="product-bottom-details">
                                                                <div class="text-content">
                                                                    <button type="button" class="btn btn-primary button_modal"
                                                                        data-toggle="modal" data-target="#exampleModalCenter">
                                                                        Tóm tắt
                                                                    </button>
                                                                </div>
                                                                <div class="product_book">
                                                                    <a class="btn btn-danger text-white" id="<%#Eval("thuvien_sach_id") %>" onclick="getName(<%#Eval("thuvien_sach_id") %>), checkCookie()">Mượn sách</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Tóm tắt sách</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <%--<button type="button" class="btn btn-primary">Save changes</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cartProduct">
            <a href="javascript:void(0)" title="Giỏ hàng" class="btn-scrolltop cart" onclick="checkDonHang()"><i class="fas fa-shopping-cart"></i></a>
            <div class="cart-number" id="cart" style="display: block;">
                <span id="numbercart"></span>
            </div>
        </div>
    </div>
    <div style="display: none;">
        <input id="txt_Name" type="text" runat="server" />
        <input id="txtSoLuong" type="text" runat="server" value="0" />
    </div>
    <script>
        //--------function get name sach-------
        //var name;
        function getName(id) {
            //name = document.getElementById("sach" + id).innerHTML;
            document.getElementById("<%=txt_Name.ClientID%>").value = id;
        }
        function checkCookie() {
            var username = document.getElementById("<%=txtUserName.ClientID%>").value;
            if (username != "") {
                var user = getCookie("cartbook");
                var users = document.getElementById("<%=txt_Name.ClientID%>").value;
                var vitri = user.indexOf(users);
                if (vitri === -1) {
                    if (users != "" && users != null) {
                        setCookie("cartbook", users, 1);
                        //swal("Sách đã được thêm vào đơn mượn sách!", "You clicked the button!", "success");
                        swal({
                            title: "Sách đã được thêm vào đơn mượn sách!",
                            text: "",
                            icon: "success",
                            button: "OK",
                        }).then(function (value) {
                            if (value == true) {
                                var i = document.getElementById("<%=txtSoLuong.ClientID%>").value;
                                i++;
                                document.getElementById("numbercart").innerText = i;
                                document.getElementById("<%=txtSoLuong.ClientID%>").value = i;
                            }
                        });
                    }
                }
                else {
                    swal({
                        title: "Sách này đã được mượn!",
                        text: "",
                        icon: "warning",
                        //buttons: true,
                        dangerMode: true,
                    })
                }
                document.getElementById("cart").style.display = 'block';
            }
            else {
                swal({
                    title: "Vui lòng đăng nhập vào hệ thống của nhà trường để được mượn sách!",
                    text: "",
                    icon: "warning",
                    //buttons: true,
                    dangerMode: true,
                })
            }
        }
        function setCookie(cname, cvalue, exdays) {
            var user = getCookie(cname);
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 365 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + user + "," + cvalue + ";" + expires + ";path=/";
        }

        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
        //----------------------------------function load nav-pills--------------------------------  
        window.onload = function () {

            var pillsTabContent = document.getElementById("v-pills-tabContent").getElementsByTagName("div")[0];
            var childNodes = document.getElementById("v-pills-tab").getElementsByTagName("a")[0];
            childNodes.classList.add("active");
            pillsTabContent.classList.add("active");
            pillsTabContent.classList.add("show");
            //debugger;
            var user = getCookie("cartbook");
            var a = user.split(',');
            if (a.length === 1)
                document.getElementById("cart").style.display = 'none';
            else {
                document.getElementById("cart").style.display = 'block';
                document.getElementById("numbercart").innerText = a.length - 1;
            }
        };
        function checkDonHang() {
            window.location = '/thu-vien-muon-sach';
        };
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

        var array = [];
        //func thêm vào ds yêu thích
        function checkID(id) {
            debugger;
            var user = getCookie("favourite");
            //var arr = user.split(',');
            //if (arr.length>1) {
            //    arr.splice(0, 1);
            //    array = arr;
            //}
            var ID = id.split('_')[1];
            //console.log(ID);
            array = user.split(',');
            //kiểm tra id nếu đã tồn tại rồi thì xóa, chưa có thì push vào
            var index = array.indexOf(ID);
            if (index === -1) {
                setCookie("favourite", ID, 1);
            } else {
                array.splice(index, 1);

            }
            //console.log(array)
            //add cookie với value = array
            //var value = array.toString();
            //console.log(value)
            //setCookie("favourite", value, 1);
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

