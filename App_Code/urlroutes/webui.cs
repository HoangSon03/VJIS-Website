using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for webui
/// </summary>
public class webui
{
    public webui()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public List<string> UrlRoutes()
    {
        List<string> list = new List<string>();
        list.Add("webTrangChu|trang-chu|~/Default.aspx");
        list.Add("webTHPT|trung-hoc-pho-thong|~/DefaultTHPT.aspx");
        list.Add("webTHCS|trung-hoc-co-so|~/DefaultTHCS.aspx");
        list.Add("webTieuHoc|tieu-hoc|~/DefaultTieuHoc.aspx");
        list.Add("webManNon|mam-non|~/Default_MamNon.aspx");
        // Tại sao phải chọn việt nhật
        list.Add("webtaisaophaichonvietnhatdetail|dieu-gi-khien-phu-huynh-tin-tuong-va-lua-chon-he-thong-truong-lien-cap-viet-nhat-{id}|~/web_module/web_TaiSaoPhaiChonVietNhatDetail.aspx");
        // Giáo viên
        list.Add("webchitietgiaovien|danh-sach-giao-vien-chi-tiet|~/web_module/web_Detail_Giaovien.aspx");
        //Tin Tức
        list.Add("webTintuc|tin-tuc/{name}-{id}|~/web_module/web_News.aspx");
        list.Add("webTintucdetail|tin-tuc/{namegroup}/{name}-{id}|~/web_module/web_NewsDetail.aspx");
        list.Add("webAbout|{group}/{name}-{id}|~/web_module/web_About.aspx");
        list.Add("webTuyensinh|tuyen-sinh/{name}-{id}|~/web_module/web_TuyenSinh.aspx");
        //Thư Viện
        list.Add("webImageLibrary|thu-vien-hinh-anh|~/web_module/web_Gallery.aspx");
        list.Add("webVideoLibrary|thu-vien-video|~/web_module/web_GalleryVideo.aspx");
        // Module thư viện
        list.Add("webthuvienloailinhvuc|thu-vien-sach/{name}-{id}|~/web_module/module_ThuVien/web_LoaiLinhVuc.aspx");
        list.Add("webthuviensach|thu-vien-sach|~/web_module/module_ThuVien/web_ViewSach.aspx");
        list.Add("webthuviensachdonhang|thu-vien-muon-sach|~/web_module/module_ThuVien/web_CheckDonHangMuonSach.aspx");
        // Moduel Bài tập
        list.Add("webgiaobaitap|bai-tap|~/web_module/module_Baitap/web_DanhSachBaiTap.aspx");
        list.Add("webgiaobaitaptoantuan21_1|lop-1-toan-tuan-21|~/web_module/module_Baitap/web_GameMathBasic.aspx");
        // Module Đăng Nhập
        list.Add("webinformation|account-manager|~/web_module/module_ThongTinHocSinh/web_AccountInfo.aspx");
        // Đăng ký phí dịch vụ
        list.Add("webdangkyphidichvu|dang-ky-phi-dich-vu|~/web_module/module_ThongTinHocSinh/web_FormDangKyThem.aspx");
        // Các lễ hội lớn
        list.Add("weblehoiamnhac|le-hoi-am-nhac-tai-truong-viet-nhat|~/web_module/module_LeHoiLon/web_LeHoiAmNhac.aspx");
        list.Add("weblehoithethao|le-hoi-the-thao-tai-truong-viet-nhat|~/web_module/module_LeHoiLon/web_LeHoiTheThao.aspx");
        list.Add("weblehoihoaanhdao|le-hoi-hoa-anh-dao-tai-truong-viet-nhat|~/web_module/module_LeHoiLon/web_LeHoiHoaAnhDao.aspx");

        // Chương trình đào tạo ngôn ngữ
        list.Add("webkynang|cac-ky-nang-tai-truong-viet-nhat|~/web_module/module_ChuongTrinhDaoTaoNoiBat/web_KyNang.aspx");
        list.Add("webtienganh|tieng-anh-tai-truong-viet-nhat|~/web_module/module_ChuongTrinhDaoTaoNoiBat/web_TiengAnh.aspx");
        list.Add("webtiengnhat|tieng-nhat-tai-truong-viet-nhat|~/web_module/module_ChuongTrinhDaoTaoNoiBat/web_TiengNhat.aspx");

        //thực đơn hàng tuần
        list.Add("webthucdonhangtuan|thuc-don-hang-tuan|~/web_module/web_ThucDon.aspx");

        //module để kiểm tra
        list.Add("webdochieukhoi4|doc-hieu-khoi-4|~/web_module/module_KiemTra/web_DocHieu_Khoi4.aspx");
        list.Add("webvietkhoi4|viet-khoi-4|~/web_module/module_KiemTra/web_Viet_Khoi4.aspx");
        list.Add("webdochieukhoi5|doc-hieu-khoi-5|~/web_module/module_KiemTra/web_DocHieu_Khoi5.aspx");
        list.Add("webvietkhoi5|viet-khoi-5|~/web_module/module_KiemTra/web_Viet_Khoi5.aspx");
        list.Add("webtoankhoi4|toan-khoi-4|~/web_module/module_KiemTra/web_Toan_Khoi4.aspx");
        list.Add("webtoankhoi5|toan-khoi-5|~/web_module/module_KiemTra/web_Toan_Khoi5.aspx");
        list.Add("weblichsudialy5|de-kiem-tra-mon-lich-su-dia-li-5|~/web_module/module_KiemTra/web_LichSuDiaLi_Khoi5.aspx");
        list.Add("webkhoahoc5|de-kiem-tra-mon-khoa-hoc-5|~/web_module/module_KiemTra/web_KhoaHoc_Khoi5.aspx");
        list.Add("webtienganh5|de-kiem-tra-mon-tieng-anh-5|~/web_module/module_KiemTra/web_TiengAnh_Khoi5.aspx");

        //website mầm non 
        list.Add("mamnongioithieu|mam-non-gioi-thieu|~/web_module/module_website/web_GioiThieu.aspx");
        list.Add("mamnonthucdon|mam-non-thuc-don|~/web_module/module_website/web_ThucDon.aspx");
        list.Add("mamnontintuc|mam-non-tintuc|~/web_module/module_website/web_TinTuc.aspx");
        list.Add("mamnoncocautochuc|mam-non-co-cau-to-chuc|~/web_module/module_website/web_CoCauToChuc.aspx");
        list.Add("mamnoncosotochuc|mam-non-co-so-to-chuc|~/web_module/module_website/web_CoSoToChuc.aspx");
        list.Add("mamnondoingugiaovien|mam-non-doi-ngu-giao-vien|~/web_module/module_website/web_DoiNguGiaoVien.aspx");
        list.Add("mamnondoitacchienluoc|mam-non-doi-tac-chien-luoc|~/web_module/module_website/web_DoiTacChienLuoc.aspx");
        //list.Add("mamnongioithieu|mam-non-gioi-thieu|~/web_module/module_website/web_GioiThieu.aspx");
        list.Add("mamnongioithieuchung|mam-non-gioi-thieu-chung|~/web_module/module_website/web_GioiThieuChung.aspx");
        list.Add("mamnontamnhinsumenh|mam-non-tam-nhin-su-menh|~/web_module/module_website/web_TamNhinSuMenh.aspx");
        list.Add("mamnonthanhtuu|mam-non-thanh-tuu|~/web_module/module_website/web_ThanhTuuVietNhat.aspx");
        list.Add("mamnoncothungo|mam-non-thu-ngo|~/web_module/module_website/web_ThuNgo.aspx");
        //
        list.Add("tinhocbatdau|admin-tin-hoc-bat-dau|~/web_module/module_Thi10Ngon/web_10Ngon_BatDau.aspx");
        list.Add("tinhoc10ngonchitiet|admin-tin-hoc-10-ngon-phan-hang|~/web_module/module_Thi10Ngon/web_10Ngon.aspx");
        return list;

    }
}