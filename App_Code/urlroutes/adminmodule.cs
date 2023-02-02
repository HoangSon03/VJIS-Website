using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminmodule
/// </summary>
public class adminmodule
{
    public adminmodule()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<string> UrlRoutes()
    {
        List<string> list = new List<string>();
        //Ứng dụng đánh giá nhận xét giáo viên và nhân viên
        list.Add("modulequanlynoidung|admin-quan-ly-noi-dung|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_QuanLyNoiDung.aspx");
        list.Add("modulequanlynoidungbophan|admin-quan-ly-noi-dung-bo-phan|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_QuanLyNoiDungBoPhan.aspx");

        list.Add("modulequanlybaivietnoidung1|admin-noi-dung-bai-viet-tieu-chuan-1|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_BaiVietNoiDungTieuChuan1.aspx");
        list.Add("modulequanlybaivietnoidung2|admin-noi-dung-bai-viet-tieu-chuan-2|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_BaiVietNoiDungTieuChuan2.aspx");
        list.Add("modulequanlybaivietnoidung3|admin-noi-dung-bai-viet-tieu-chuan-3|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_BaiVietNoiDungTieuChuan3.aspx");
        list.Add("modulequanlybaivietnoidung4|admin-noi-dung-bai-viet-tieu-chuan-4|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_BaiVietNoiDungTieuChuan4.aspx");
        list.Add("modulequanlybaivietnoidung5|admin-noi-dung-bai-viet-tieu-chuan-5|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_BaiVietNoiDungTieuChuan5.aspx");
        list.Add("modulequanlythongbao|admin-thong-bao|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_ThongBao.aspx");
        list.Add("modulexembaivietgiaovientutruongbophan|admin-xem-bai-viet-cua-giao-vien-tu-truong-bo-phan-{id}|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_XemBaiVietCuaGiaoVienTuTruongBoPhan.aspx");
        list.Add("modulexembaivietgiaovien|admin-xem-bai-viet-tu-giao-vien-{id}|~/admin_page/module_function/module_DanhGiaNhanXetGiaoVienVaNhanVien/module_XemBaiVietTuGiaoVien.aspx");
        
        // Ứng dụng phòng học thông minh
        list.Add("modulequanlyphongthongminh|admin-phong-hoc-thong-minh|~/admin_page/module_function/module_PhongHocThongMinh/module_QuanLyPhongThongMinh.aspx");
        list.Add("modulecheckinphongthongminh|admin-checkin-phong-hoc-thong-minh|~/admin_page/module_function/module_PhongHocThongMinh/module_CheckinPhongThongMinh.aspx");
        list.Add("modulethongkephongthongminh|admin-thong-ke-phong-hoc-thong-minh|~/admin_page/module_function/module_PhongHocThongMinh/module_ThongTinPhong.aspx");
        list.Add("moduleDanhSachPhongDaBook|admin-danh-sach-phong-da-book|~/admin_page/module_function/module_PhongHocThongMinh/module_DanhSachPhongDaBook.aspx");
        // Ứng dụng quản lý deadline
        list.Add("modulenhapquanlydeadline|admin-nhap-quan-ly-deadline-{id}|~/admin_page/module_function/module_QuanLyDeadline/module_NoiDungChiTiet.aspx");
        list.Add("modulequanlydeadline|admin-quan-ly-deadline|~/admin_page/module_function/module_QuanLyDeadline/module_QuanLyDeadline.aspx");
        list.Add("modulequanlydeadlinecanhan|admin-quan-ly-cong-viec-ca-nhan|~/admin_page/module_function/module_QuanLyDeadline/module_QuanLyDeadlineCaNhan.aspx");
        list.Add("modulecongvandi|admin-cong-van-di|~/admin_page/module_function/module_QuanLyDeadline/module_CongVanDi.aspx");
        list.Add("modulecongvanden|admin-cong-van-den|~/admin_page/module_function/module_QuanLyDeadline/module_CongVanDen.aspx");
        list.Add("modulenoidungcongvanden|admin-noi-dung-cong-van-den-{id}|~/admin_page/module_function/module_QuanLyDeadline/module_NoiDungCongVanDen.aspx");
        list.Add("modulegiaoviec|admin-giao-viec|~/admin_page/module_function/module_QuanLyDeadline/module_GiaoViec.aspx");
        // Quản lý file
        list.Add("moduleuploadfile|admin-up-load-file|~/admin_page/module_function/module_DownLoadFile/module_Uploadfile.aspx");
        list.Add("moduledownloadfile|admin-down-load-file|~/admin_page/module_function/module_DownLoadFile/module_DownloadFile.aspx");
        // Quan ly website
        list.Add("moduleslide|admin-slide|~/admin_page/module_function/module_WebSite/module_Slide.aspx");

        list.Add("modulenews|admin-news|~/admin_page/module_function/module_WebSite/module_News.aspx");
        list.Add("modulenewscontent|admin-them-tin-tuc-{id}|~/admin_page/module_function/module_WebSite/module_News_Content.aspx");
        list.Add("modulenewscate|admin-newscate|~/admin_page/module_function/module_WebSite/module_NewsCate.aspx");

        list.Add("moduleuc|admin-uc|~/admin_page/module_function/module_WebSite/module_UserControl.aspx");
        list.Add("moduleintroduce|admin-introduce|~/admin_page/module_function/module_WebSite/module_introduce.aspx");
        list.Add("modulelienhe|admin-lien-he|~/admin_page/module_function/module_WebSite/module_LienHe.aspx");
        list.Add("modulecontent|admin-content|~/admin_page/module_function/module_WebSite/module_Content.aspx");
        list.Add("modulewebsitemenu|admin-website-menu|~/admin_page/module_function/module_WebSite/module_WebsiteMenu.aspx");
        list.Add("modulewebsitesubmenu|admin-website-submenu|~/admin_page/module_function/module_WebSite/module_Website_Submenu.aspx");
        list.Add("modulewebsitephuhuynhvahocsinhcate|admin-website-phuhuynhvahocsinhcate|~/admin_page/module_function/module_WebSite/module_Website_PhuHuynhVaHocSinhCate.aspx");
        list.Add("modulewebsitephuhuynhvahocsinh|admin-website-phuhuynhvahocsinh|~/admin_page/module_function/module_WebSite/module_PhuHuynhVaHocSinh.aspx");
        list.Add("modulewebsitechuongtrinhdaotao|admin-website-chuong-trinh-dao-tao|~/admin_page/module_function/module_WebSite/module_ChuongTrinhDaoTao.aspx");
        list.Add("modulewebsitecamnhanphuhuynh|admin-website-cam-nhan-phu-huynh|~/admin_page/module_function/module_WebSite/module_CamNhanPhuHuynh.aspx");
        list.Add("modulewebsitegiaovien|admin-website-giao-vien|~/admin_page/module_function/module_WebSite/module_GiaoVien.aspx");
        //Quản lý điểm
        list.Add("modulenhapdiem|admin-nhap-diem|~/admin_page/module_function/module_Diem/module_NhapDiemHocSinh.aspx");
        list.Add("modulethstl|admin-tao-hoc-sinh-trong-lop|~/admin_page/module_function/module_Diem/module_TaoHocSinhTrongLop.aspx");
        list.Add("modulemh|admin-mon-hoc|~/admin_page/module_function/module_Diem/module_MonHoc.aspx");
        // thư viện ảnh
        list.Add("modulethuvienanh|admin-thu-vien-anh|~/admin_page/module_function/module_WebSite/module_ThuVienAnh.aspx");
        list.Add("modulethemanh|admin-them-anh|~/admin_page/module_function/module_WebSite/module_AddImage.aspx");
        // Thư viện sách
        //list.Add("modulesnhaphang|admin-nhap-sach|~/admin_page/module_function/module_ThuVien/module_NhapHang.aspx");
        //list.Add("modulethuviensachthem|admin-them-sach|~/admin_page/module_function/module_ThuVien/module_NhapHangInsert.aspx");
        //list.Add("modulethuviencapnhat|admin-nhap-sach-{id}|~/admin_page/module_function/module_ThuVien/module_NhapHangUpdate.aspx");
        //list.Add("modulestonkho|admin-kho-sach|~/admin_page/module_function/module_ThuVien/module_KhoHang.aspx");
        //list.Add("modulesxuathang|admin-muon-sach|~/admin_page/module_function/module_ThuVien/module_DatHang.aspx");
        //list.Add("modulessachthuvien|admin-sach-hinh-anh|~/admin_page/module_function/module_WebSite/module_ThuVienSach.aspx");
        //Toan
        list.Add("modulesquanlyanpham|admin-bo-sung|~/admin_page/module_function/module_BoSung/module_QuanLyAnPham.aspx");
        list.Add("modulesquanlyanphamadd|admin-them-san-pham-{id}|~/admin_page/module_function/module_BoSung/module_QuanLyAnPham_Add.aspx");
        list.Add("modulesquanlyanphamupdate|admin-chi-tiet-san-pham-{id}|~/admin_page/module_function/module_BoSung/module_QuanLyAnPham_Update.aspx");

        list.Add("modulesbienmucphanloai|admin-bien-muc-phan-loai|~/admin_page/module_function/module_BienMuc/module_BienMucPhanLoai.aspx");
        list.Add("modulesbienmuctusach|admin-bien-muc-tu-sach|~/admin_page/module_function/module_BienMuc/module_BienMucTuSach.aspx");
        list.Add("modulesbienmucdemuc|admin-bien-muc-de-muc|~/admin_page/module_function/module_BienMuc/module_BienMucDeMuc.aspx");





        //Tan
        list.Add("modulesbienmuctacgia|admin-bien-muc-tac-gia|~/admin_page/module_function/module_BienMuc/module_BienMucTacGia.aspx");
        list.Add("modulesbienmucnhaxuatban|admin-bien-muc-nha-xuat-ban|~/admin_page/module_function/module_BienMuc/module_BienMucNhaXuatban.aspx");
        list.Add("modulesbienmucsach|admin-bien-muc-sach|~/admin_page/module_function/module_BienMuc/module_BienMucSach.aspx");
        list.Add("modulesbienmucnhan|admin-bien-muc-nhan|~/admin_page/module_function/module_BienMuc/module_BienMucNhan.aspx");

        //THuKho
        list.Add("modulethuvienthukho|admin-quan-ly-nhap-hang|~/admin_page/module_function/module_ThuKho/module_ThuKho.aspx");
        list.Add("modulethuvienthukhoupdate|admin-quan-ly-nhap-hang-{id}|~/admin_page/module_function/module_ThuKho/module_ThuKho_Update.aspx");
        list.Add("modulethuvienthukhoinsert|admin-nhap-lo-sach|~/admin_page/module_function/module_ThuKho/module_ThuKho_NhapHang.aspx");
        list.Add("modulethuvientonkho|admin-ton-kho|~/admin_page/module_function/module_ThuKho/module_TonKho.aspx");


        list.Add("modulesquanlymuonsach|admin-quan-ly-muon-sach|~/admin_page/module_function/module_ThuVien/module_MuonSach.aspx");
        list.Add("modulestusach|admin-quan-ly-tu-sach|~/admin_page/module_function/module_ThuVien/module_TuSach.aspx");
        list.Add("modulesduyetdonmuonsach|admin-duyet-don-muon-sach|~/admin_page/module_function/module_ThuVien/module_MuonSachChiTiet.aspx");
        list.Add("modulesthongkesach|admin-thong-ke-tu-sach|~/admin_page/module_function/module_ThuVien/module_ThongKe.aspx");
        list.Add("modulesnhapsach|admin-nhap-sach|~/admin_page/module_function/module_ThuVien/module_NhapSach.aspx");
        list.Add("modulessach|admin-sach|~/admin_page/module_function/module_ThuVien/module_NhapSach.aspx");

        // Quản lý lớp
        list.Add("modulebophan|admin-bo-phan-giao-vien|~/admin_page/module_function/module_HocTap/module_QuanLyBoPhan.aspx");
        list.Add("modulegiaobaitap|admin-giao-bai-tap|~/admin_page/module_function/module_HocTap/module_GiaoBaiTap.aspx");
        list.Add("moduletrabaitap|admin-tra-bai-tap|~/admin_page/module_function/module_HocTap/module_TraBaiTap.aspx");
        // WEbsite
        list.Add("modulewebsitetaisaophaichonvietnhat|admin-tai-sao-phai-chon-viet-nhat|~/admin_page/module_function/module_WebSite/module_TaiSaoPhaiChonVietNhat.aspx");
        list.Add("modulewebsitelehoi|admin-le-hoi|~/admin_page/module_function/module_WebSite/module_WebsiteCacLeHoi.aspx");

        // Thư viện
        list.Add("modulewebsitethuvientusach|admin-tu-sach|~/admin_page/module_function/module_ThuVien/module_TuSach.aspx");
        list.Add("modulewebsitethuviensach|admin-sach|~/admin_page/module_function/module_ThuVien/module_Sach.aspx");
        list.Add("modulewebsitethuvienmuonsach|admin-dat-sach|~/admin_page/module_function/module_ThuVien/module_MuonSachChiTiet.aspx");
        list.Add("modulewebsitethuvienmuonsachchitiet|admin-muon-sach-chi-tiet|~/admin_page/module_function/module_ThuVien/module_MuonSachChiTiet.aspx");
        list.Add("modulewebsitethuvientonkho|admin-ton-kho|~/admin_page/module_function/module_ThuVien/module_TonKho.aspx");
        list.Add("modulewebsitethuviensachquahan|admin-sach-qua-han|~/admin_page/module_function/module_ThuVien/module_SachQuaHan.aspx");
        list.Add("modulewebsitethuviendetailsachquahan|admin-chi-tiet-qua-han-{id}|~/admin_page/module_function/module_ThuVien/module_Details_SachQuaHan.aspx");
        list.Add("modulewebsitethuvientrasach|admin-tra-sach|~/admin_page/module_function/module_ThuVien/module_TraSach.aspx");
        list.Add("modulewebsitethuviendetailtrasach|admin-chi-tiet-tra-sach-{id}|~/admin_page/module_function/module_ThuVien/module_Details_TraSach.aspx");
        list.Add("modulewebsitethuviensachkim|admin-sach-kim|~/admin_page/module_function/module_ThuVien/module_Sach_Kim.aspx");
        list.Add("modulewebsitethuviennewsachkim|admin-them-sach-kim-{id}|~/admin_page/module_function/module_ThuVien/module_News_Sach_Kim.aspx");
        list.Add("modulewebsitemuonsachnew|admin-danh-sach-muon|~/admin_page/module_function/module_ThuVien/module_MuonSach.aspx");
        list.Add("modulewebsiteconfirmtrasach|admin-xac-nhan-tra-{id}|~/admin_page/module_function/module_ThuVien/module_Confirm_TraSach.aspx");
        list.Add("modulewebsiteduyetdonsach|admin-duyet-don-sach|~/admin_page/module_function/module_ThuVien/module_DuyetDonSach.aspx");
        list.Add("modulewebsitethongke|admin-thong-ke|~/admin_page/module_function/module_ThuVien/module_ThongKe.aspx");

        //xem danh sách đăng ký tuyển sinh
        list.Add("modulexemdanhsachdangkytuyensinh|admin-danh-sach-dang-ky-tuyen-sinh|~/admin_page/module_function/module_WebSite/module_XemDanhSachDangKyTuyenSinh.aspx");


        return list;
    }
}