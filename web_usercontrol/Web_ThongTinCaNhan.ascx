<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Web_ThongTinCaNhan.ascx.cs" Inherits="web_usercontrol_Web_ThongTinCaNhan" %>
<%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
<style>
    .block-ttcnhan {
        background: white;
        height: 29.5rem;
        border-radius: 10px;
        margin: 3%;
        box-shadow: 2px 3px 8px 5px #80808029;
    }

    .block-hinhdaidien {
        border-radius: 112px;
        width: 45%;
        background: #44403a4d;
        height: 24%;
        margin-top: -62%;
        margin-left: 20%;
        margin-right: 23%;
        position: absolute;
    }

        .block-hinhdaidien img {
            object-fit: cover;
            height: 174px;
            border-radius: 20rem;
        }

    .block-thongtin {
        margin: 5%;
    }

    .thongtin {
        font-weight: 700 !important;
        color: #d12021;
        width: 75%;
        background: unset !important;
    }

    .thong-tin {
        display: flex;
        border: unset !important;
        font-weight: 600 !important;
    }

    .block-giaovien {
        background: white;
        height: 10rem;
        border-radius: 10px;
        margin: 3%;
        box-shadow: 2px 3px 8px 5px #80808029;
    }

    .giao-vien {
        margin: 3% 0;
        display: flex;
        justify-content: center;
        font-weight: 600;
    }
</style>
<div class="block-ttcnhan">
    <img style="position: relative" src="/image/icon/admin.png" alt="Alternate Text" />
    <div class="block-hinhdaidien">
        <img src="/image/icon/hinh-anh-be-gai-non-la-ao-do-cuc-xinh.jpeg" />
    </div>
    <span style="font-weight: 700; width: 100%; display: flex; font-size: 25px; text-transform: uppercase; justify-content: center; color: #00404e;">Đỗ Thị Phương Nhi</span>
    <div class="block-thongtin" style="line-height: 31px; margin: 5%;">
        <div class="thong-tin">
            <span class="thongtin">Lớp : </span>
            <span>RISU3</span>
        </div>
        <div class="thong-tin">
            <div class="thongtin">Tuổi : </div>
            <div>4 tuổi</div>
        </div>
        <div class="thong-tin">
            <div class="thongtin">Biệt Danh : </div>
            <div>Mía</div>
        </div>
        <div class="thong-tin">
            <div class="thongtin">Sở thích ở nhà : </div>
            <div>Đá banh</div>
        </div>
        <div class="thong-tin">
            <div class="thongtin">Sở thích tại trường : </div>
            <div>Vẽ</div>
        </div>
    </div>
</div>
    <%--<div class="block-thongtin">
        <span>Lớp : <span style="color: black;">RISU3</span></span>
        <span>Tuổi : <span style="color: black;">9 tuổi</span></span>
        <span>Biệt danh: <span style="color: black;">Mía</span></span>
        <span>Sở thích ở nhà : <span style="color: black;">Vẽ</span></span>
        <span>Sở thích tại trường : <span style="color: black;">Hát</span></span>
    </div>--%>

<div class="block-giaovien">
    <span style="padding: 2%; font-weight: 600;">RISU3</span>
    <div class="giao-vien">
        <div style="width: 20%">
            <img src="/images/ba.png" />
        </div>
        <div style="display: flex; flex-direction: column;">
            <span>Giáo viên : Nguyễn Hoàng Lân</span>
            <span>sđt : 0931945475</span>
        </div>
    </div>
    <div class="giao-vien">
        <div style="width: 20%">
            <img src="/images/ba.png" />
        </div>
        <div style="display: flex; flex-direction: column;">
            <span>Giáo viên : Nguyễn Hoàng Lân</span>
            <span>sđt : 0931945475</span>
        </div>
    </div>
</div>
