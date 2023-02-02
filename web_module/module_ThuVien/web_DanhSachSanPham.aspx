<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_DanhSachSanPham.aspx.cs" Inherits="web_module_module_ThuVien_web_DanhSachSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <script src="../../js/jquery-1.11.0.min.js"></script>
    <script src="../../js/slick.min.js"></script>
    <script src="../../js/owl.carousel.min.js"></script>
    <style>
        .block-search {
            width: 70%;
            margin: 0 auto;
            margin-top: 20px;
        }

        .block-khoi-tusach {
            margin: 20px auto;
            width: 95%;
        }

        .block-tusach {
            display: inline-block;
            text-align: center;
        }

        input {
            /*display: block;*/
            width: 80%;
            height: calc(1.5em + .75rem + 2px);
            padding: .375rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }

        .block-tieu-de {
            margin: 10px 35px 10px 35px;
            border: 2px dashed red;
            padding: 5px;
            width: 20%;
            display: inline;
        }

        .block-xem-tat-ca {
            float: right;
            margin-right: 50px;
        }

        .block-khoi-image {
            margin: 10px 35px 10px 35px;
            border-top: 1px solid #bebebe;
            padding-top: 10px;
            padding-bottom: 10px;
            padding-left: 40px
        }

        .block-image-sach {
            display: inline-block;
        }

        .block-image {
            width: 200px;
            height: 335px;
            border: 1px solid #bebebe;
            margin-top: 10px;
            padding: 10px 20px 20px 20px;
            -webkit-transition: .3s ease-in-out;
            transition: .3s ease-in-out;
        }

        input[type=submit] {
            border: none;
            outline: none;
            height: 38px;
            background: var(--color-primary);
            color: #fff;
            font-size: 18px;
            width: 12%;
            /* padding: 10px 0; */
            margin-top: 15px;
        }

        .block-tuade {
            text-align: center;
            overflow: hidden;
            text-overflow: ellipsis;
            -webkit-line-clamp: 2;
            height: 40px;
            display: -webkit-box;
            -webkit-box-orient: vertical;
        }

        .btn_xem {
            margin: 8px 8px 8px 8px;
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545;
            font-size: 0.9rem;
            display: inline-block;
            font-weight: 100;
            /* color: #212529; */
            text-align: center;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            /* background-color: transparent; */
            border: 1px solid transparent;
            padding: .375rem .75rem;
            /* font-size: 1rem; */
            line-height: 1.5;
            border-radius: .25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }

        .btn-muonsach {
            margin: 8px 0px;
            font-size: 0.9rem;
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
            display: inline-block;
            font-weight: 100;
            text-align: center;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            border: 1px solid transparent;
            padding: .375rem .75rem;
            line-height: 1.5;
            border-radius: .25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }
        /* Zoom In #2 */
        .block-image img {
            width: 200px;
            height: auto;
            -webkit-transition: .3s ease-in-out;
            transition: .3s ease-in-out;
        }

        .block-image:hover img {
            width: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="higlobal" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hislider" runat="Server">
    <div class="block-search">
        <input type="text" id="txtSearch" runat="server" placeholder="Bạn gõ sách cần tìm ở đây" />
        <asp:Button ID="btnSearch" runat="server" CssClass="btn-TimKiem" Text="Tìm kiếm" />
    </div>
    <div class="block-khoi-tusach">
        <div class="multiple-items-tusach">
            <div class="block-tusach"><a href="#" class="btn btn-primary">Sách thiếu nhi</a></div>
            <div class="block-tusach"><a href="#" class="btn btn-primary">Sách giáo viên</a></div>
            <div class="block-tusach"><a href="#" class="btn btn-primary">Sách bài tập</a></div>
            <div class="block-tusach"><a href="#" class="btn btn-primary">Sách khoa học</a></div>
            <div class="block-tusach"><a href="#" class="btn btn-primary">Sách tiếng anh</a></div>
            <div class="block-tusach"><a href="#" class="btn btn-primary">Sách giáo khoa</a></div>
            <div class="block-tusach"><a href="#" class="btn btn-primary">Sách giải trí</a></div>
        </div>
    </div>
    <div class="block-tieu-de">
        Sách hay trong tháng
    </div>
    <div class="block-khoi-image">
        <div class="multiple-items">
            <div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" style="width: 200px; height: 300px" />
            </div>
            <div>
                <img src="../../uploadimages/thuvien/030tven2.arw.jpg" style="width: 200px; height: 300px" />
            </div>
            <div>
                <img src="../../uploadimages/thuvien/0bjtjh22.w32.jpg" style="width: 200px; height: 300px" />
            </div>
            <div>
                <img src="../../uploadimages/thuvien/0cwx0m2k.hzm.jpg" style="width: 200px; height: 300px" />
            </div>
            <div>
                <img src="../../uploadimages/thuvien/0fcu3db4.j3h.jpg" style="width: 200px; height: 300px" />
            </div>
            <div>
                <img src="../../uploadimages/thuvien/0bjtjh22.w32.jpg" style="width: 200px; height: 300px" />
            </div>
        </div>
    </div>
    <div>
        <div class="block-tieu-de">
            Sách thiếu nhi
        </div>
        <div class="block-xem-tat-ca">
            Xem tất cả
        </div>
    </div>
    <div class="block-khoi-image">
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý  chúng tôi yêu hòa bình</div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">

                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>

    </div>

    <div>
        <div class="block-tieu-de">
            Sách giáo viên
        </div>
        <div class="block-xem-tat-ca">
            Xem tất cả
        </div>
    </div>
    <div class="block-khoi-image">
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý  chúng tôi yêu hòa bình</div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">

                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>
        <div class="block-image-sach">
            <div class="block-image">
                <div class="block-tuade">Vở bài tập địa lý </div>
                <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" />
                <a href="#" class="btn_xem">Xem </a><a href="#" class="btn-muonsach">Mượn sách</a>
            </div>
        </div>

    </div>
    <%--  </form>--%>
    <script>
        $(".multiple-items").slick({
            infinite: true,
            slidesToShow: 5,
            slidesToScroll: 1
        });
        $(".multiple-items-tusach").slick({
            infinite: true,
            slidesToShow: 6,
            slidesToScroll: 1
        });
    </script>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibelowtop" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hibodywrapper" runat="Server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>

