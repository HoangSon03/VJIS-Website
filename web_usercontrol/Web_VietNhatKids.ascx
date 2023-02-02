<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Web_VietNhatKids.ascx.cs" Inherits="web_usercontrol_WebUserControl" %>
<style>
    html {
        overflow-x: hidden;
    }

    .block-menu {
        box-shadow: 2px 3px 8px 5px #80808029;
        margin: 1% 0;
        height: 7rem;
        background: white;
        border-radius: 10px;
    }

    .block-btn {
        padding: 0 !important;
        display: flex;
        justify-content: center;
        flex-direction: column;
        text-align: center;
        font-size: 7px;
        font-weight: 800;
        color: #6464a9;
        box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
        background: #d5e8ef;
        height: 5rem;
        border-radius: 10px;
    }

        .block-btn img {
            padding: 1% 14% 0 14%;
        }

    .block-menu {
        justify-content: space-between;
    }

    .pad {
        padding: 0 !important;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .thong-bao {
        position: absolute;
        background: red;
        font-size: 20px;
        z-index: 10;
        display: flex;
        left: 75%;
        bottom: 68%;
        color: white;
        width: 33px;
        box-shadow: 1px 1px 1px 1px grey;
        border-radius: 18px;
        height: 33px;
        justify-content: center;
        align-items: center;
    }
    .new {
        position: absolute;
        background: #28a745;
        font-size: 12px;
        z-index: 10;
        display: flex;
        left: 75%;
        bottom: 68%;
        color: white;
        width: 33px;
        box-shadow: 1px 1px 1px 1px grey;
        border-radius: 18px;
        height: 33px;
        justify-content: center;
        align-items: center;
    }
</style>
    <%--<div class="col-3">
        <div class="block-menu"></div>
    </div>--%>
    <div class="col-12" style="padding: 0%;">
        <div class="block-menu row" style="padding: 0% 1% !important;">
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/thong-bao.png" />
                    <span>THÔNG BÁO</span>
                    <span class="thong-bao">2</span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/lich.png" />
                    <span>SỰ KIỆN HÀNG TUẦN</span>
                    <span class="new">New</span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/suc-khoe.png" />
                    <span>THÔNG TIN SỨC KHỎE</span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/Dangky-Xin-nghi.png" />
                    <span>XIN NGHỈ</span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/Dangky-Thuoc.png" />
                    <span>DẶN THUỐC
                        <br />
                        VÀ DẶN DÒ
                    </span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/album.png" />
                    <span>ALBUM ẢNH</span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/do-dung.png" />
                    <span>ĐĂNG KÍ 
                        ĐỒNG PHỤC
                        <br />
                        ĐỒ DÙNG
                    </span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/Dangky-Hoc-tap.png" />
                    <span>HỌC TẬP</span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/Dangky-ngoai-khoa.png" />
                    <span>ĐĂNG KÍ NGOẠI KHÓA</span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/Dangky-an-sang.png" />
                    <span>ĐĂNG KÍ VÀ HỦY
                        <br />
                        ĂN SÁNG, UỐNG SỮA
                    </span>
                </div>

            </div>
            <div class="col-1 pad">
                <div class="block-btn">
                    <img src="/image/icon/danh-gia-giao-vien.png" />
                    <span>ĐÁNH GIÁ GIÁO VIÊN</span>
                </div>

            </div>
        </div>
    </div>
