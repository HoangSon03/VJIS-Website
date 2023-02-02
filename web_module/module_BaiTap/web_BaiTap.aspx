<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_BaiTap.aspx.cs" Inherits="web_module_web_BaiTap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <script>

        function showPreview1(input) {
            if (input.files && input.files[0]) {
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#imgPreview1').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
        //function showImg(img) {
        //    $('#hibodywrapper_popupControl_imgPreview').attr('src', img);
        //}
        function showImg1_1(img) {
            $('#imgPreview1').attr('src', img);
        }
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
    <section class=" irs-courses-single">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-4 d-none d-sm-none d-sm-block sticky-top">
                    <div class="irs-side-bar">
                        <!-------Fanpage------>
                        <div class="irs-video">
                            <div class="irs-sidebar-title">
                                <h3>Facebook</h3>
                            </div>
                            <div id="fb-root"></div>
                            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v5.0"></script>
                            <div class="fb-page" data-href="https://www.facebook.com/TruongLienCapVietNhat/" data-tabs="timeline" data-width="" data-height="" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                                <blockquote cite="https://www.facebook.com/TruongLienCapVietNhat/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/TruongLienCapVietNhat/">Facebook</a></blockquote>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content_sky_text col-md-9 col-sm-12 center">
                    <div id="dv_Khoi1va2">
                        <a id="btnToan" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnToan_ServerClick">Toán</a>
                        <a id="btnTiengViet" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnTapDoc_ServerClick">Tiếng Việt</a>
                    </div>
                    <div id="dv_Khoi3">
                        <a id="btnTiengAnh" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnTiengAnh_ServerClick">Tiếng Anh</a>
                        <a id="btnTinHoc" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnTinHoc_ServerClick">Tin học</a>
                    </div>
                    <div id="dv_Khoi4va5">
                        <a id="btnKhoaHoc" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnKhoaHoc_ServerClick">Khoa học</a>
                        <a id="btnLichSu" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnLichSu_ServerClick">Lịch sử</a>
                        <a id="btnDiaLy" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnDiaLy_ServerClick">Địa lý</a>
                    </div>
                    <div id="dv_Khoi6va7">
                        <a id="btnNguVan" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnNguVan_ServerClick">Ngữ Văn</a>
                        <a id="btnGiaoDucCongDanh" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnGiaoDucCongDanh_ServerClick">Giáo dục công dân</a>
                        <a id="btnSinhHoc" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnSinhHoc_ServerClick">Sinh học</a>
                        <a id="btnCongNghe" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnCongNghe_ServerClick">Công nghệ</a>
                        <a id="btnVuiHoc" runat="server" class="btn btn-primary" style="color: white" onserverclick="btnVuiHoc_ServerClick">Vui học</a>
                    </div>
                    <div>
                        <asp:Repeater ID="rpContent" runat="server">
                            <ItemTemplate>
                                <%#Eval("giaobaitap_content") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div>
                        <div class="col-12 form-group">
                            <div class="colum-5 form-group">
                                <label class="form-control-label">Nộp bài :</label>
                                <div id="up1" class="">
                                    <asp:FileUpload CssClass="hidden-up" ID="FileUpload1" runat="server" onchange="showPreview1(this)" />
                                    <button type="button" class="btn-chang" onclick="clickavatar1()">
                                        <img id="imgPreview1" src="/admin_images/up-img.png" style="max-width: 100%; height: 200px" />
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>

