using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_QuanLyAnPham : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    cls_NhapSach cls = new cls_NhapSach();
    private int _id;
    int vitri;

    private static int CoSo;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["_id"] = 0;
            //var listTuSach = from nh in db.tbThuVien_TuSaches orderby nh.thuvien_tusach_id descending select nh;
            //ddlTuSach.Items.Clear();
            //ddlTuSach.Items.Insert(0, "Chọn tất cả");
            //ddlTuSach.AppendDataBoundItems = true;
            //ddlTuSach.DataTextField = "thuvien_tusach_name";
            //ddlTuSach.DataValueField = "thuvien_tusach_id";
            //ddlTuSach.DataSource = listTuSach;
            //ddlTuSach.DataBind();

        }
        loadData();
    }
    private void loadData()
    {
        var getData = from s in db.tbThuVien_Saches
                      orderby s.thuvien_sach_id descending
                      select s;
        grvList.DataSource = getData;
        grvList.DataBind();
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin-them-san-pham-0");
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_sach_id" }));
        // Response.Redirect("admin-chi-tiet-san-pham-" + _id);
        Response.Redirect("admin-them-san-pham-" + _id);

    }
    protected bool Linq_Xoa(int news_id)
    {
        var del = (from tx in db.tbThuVien_Saches where tx.thuvien_sach_id == news_id select tx);
        db.tbThuVien_Saches.DeleteAllOnSubmit(del);
        try
        {
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }


    protected void btnXoa2_ServerClick(object sender, EventArgs e)
    {
        //alert.alert_Success(Page,"ag","");
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "thuvien_sach_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                if (Linq_Xoa(Convert.ToInt32(item)))
                {
                    alert.alert_Success(Page, "Xóa thành công", "");
                    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "grvList.Refresh(); ", true);
                    loadData();
                }
                else
                    alert.alert_Error(Page, "Xóa thất bại", "");
            }
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
    }

    protected void ddlTuSach_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (ddlTuSach.SelectedValue == "Chọn tất cả")
        //{
        //    var getData = from s in db.tbThuVien_Saches
        //                  orderby s.thuvien_sach_id descending
        //                  select s;
        //    grvList.DataSource = getData;
        //    grvList.DataBind();
        //}
        //else
        //if (ddlTuSach.SelectedValue != "Chọn tất cả")
        //{
        //    //lấy thông tin của tk đang nhập
        //    var getuser = (from u in db.admin_Users
        //                   where u.username_username == Request.Cookies["UserName"].Value
        //                   select u).FirstOrDefault();
        //    var checkTuSach = (from nh in db.tbThuVien_TuSaches orderby nh.thuvien_tusach_id select nh).FirstOrDefault();
        //    //đổ dữu liệu lên gridview
        //    var getData = from lbg in db.tbThuVien_Saches
        //                  join ts in db.tbThuVien_TuSaches on lbg.thuvien_tusach_id equals ts.thuvien_tusach_id
        //                  where lbg.thuvien_tusach_id == Convert.ToInt16(ddlTuSach.SelectedValue)
        //                  //orderby lbg.lichbaogiang_id descending
        //                  select lbg;
        //    grvList.DataSource = getData;
        //    grvList.DataBind();
        //}
    }

    protected void btnImport_ServerClick(object sender, EventArgs e)
    {

        if (!fuUpload.HasFile)
            alert.alert_Warning(Page, "Chưa chọn file!", "");
        else
        {
            string fileName = fuUpload.FileName;
            string ext = Path.GetExtension(fileName);

            if (ext.ToLower() == ".xls" || ext.ToLower().Equals(".xlsx"))
            {
                string path = string.Concat(Server.MapPath("~/Excel_Files/" + DateTime.Now.ToString("dd-MM-yyyy_hh_mm_ss_") + fileName));


                //Nếu trong thư mục trùng file (name) thì xóa và lưu file excel mới
                //if (File.Exists(path))
                //    File.Delete(path);
                fuUpload.SaveAs(path);

                cls_ExcelApiTest eat = new cls_ExcelApiTest(path);
                eat.OpenExcel();
                int rowCount = eat.GetRowCount("Sheet1");// Sheet phải có tên là Sheet1
                                                         //try
                                                         //{
                for (int i = 2; i <= rowCount; i++) // i = 4 tùy thuộc vào hàng nhận giá trị đầu tiên trong File Excel
                {
                    string quanlianpham_tensach = eat.GetCellData("Sheet1", 1, i);
                    string quanlianpham_tacgia = eat.GetCellData("Sheet1", 2, i);
                    string quanlianpham_nhaxuatban = eat.GetCellData("Sheet1", 3, i);
                    int quanlianpham_nam = Convert.ToInt32(eat.GetCellData("Sheet1", 4, i));
                    string quanlianpham_loaianpham = eat.GetCellData("Sheet1", 5, i);
                    string quanlianpham_ngonngu = eat.GetCellData("Sheet1", 6, i);
                    //int quanlianpham_isbn = Convert.ToInt32(eat.GetCellData("Sheet1", 7, i));
                    int quanlianpham_isbn = 0;
                    string quanlianpham_ghichu = eat.GetCellData("Sheet1", 8, i);

                    tbThuVien_Sach insert = new tbThuVien_Sach();
                    insert.thuvien_sach_name = quanlianpham_tensach;
                    insert.thuvien_sach_tacgia = quanlianpham_tacgia;
                    insert.nhaxuatban_name = quanlianpham_nhaxuatban;
                    insert.thuvien_sach_namxuatban = quanlianpham_nam;
                    insert.thuvien_sach_loaianpham = quanlianpham_loaianpham;
                    insert.thuvien_sach_ngonngu = quanlianpham_ngonngu;
                    insert.thuvien_sach_isbn = quanlianpham_isbn;
                    db.tbThuVien_Saches.InsertOnSubmit(insert);
                    db.SubmitChanges();

                    ////string ngaysinh = eat.GetCellData("Sheet1", "Ngày sinh", i);
                    ////string ngaydangky = eat.GetCellData("Sheet1", "Ngày đăng ký", i).Trim();
                    ////if (ngaysinh != "end") // chưa phải là dòng cuối cùng (không có dữ liệu) nhưng vẫn kẻ ô 
                    ////{
                    //    //lấy giá trị từng cells trong file excel bởi column name
                    //    string hocsinh_hoten = eat.GetCellData("Sheet1", "Họ tên học sinh", i);
                    //    DateTime hocsinh_ngaysinh = Convert.ToDateTime(ngaysinh);


                    //    if (CheckExistHocSinh(hocsinh_ngaysinh, hocsinh_hoten)) // check trùng học sinh
                    //    {
                    //        continue;
                    //    }
                    //    else
                    //    {
                    //        string hocsinh_lopdangky = eat.GetCellData("Sheet1", "Lớp đăng kí học", i);
                    //        string hocsinh_tenme = eat.GetCellData("Sheet1", "Họ tên Mẹ", i);
                    //        string hocsinh_tenba = eat.GetCellData("Sheet1", "Họ tên Ba", i);
                    //        string hocsinh_sdtba = eat.GetCellData("Sheet1", "Số ĐT Ba", i);
                    //        string hocsinh_sdtme = eat.GetCellData("Sheet1", "Số ĐT Mẹ", i);
                    //        string hocsinh_emailba = eat.GetCellData("Sheet1", "Email Ba", i);
                    //        string hocsinh_emailme = eat.GetCellData("Sheet1", "Email Mẹ", i);
                    //        string hocsinh_noio = eat.GetCellData("Sheet1", "Địa chỉ", i);
                    //        string hocsinh_ghichu = eat.GetCellData("Sheet1", "Ghi chú", i);


                    //        //lưu dữ liệu học sinh đăng ký
                    //        tbWebsite_DangKiTuyenSinh hsdk = new tbWebsite_DangKiTuyenSinh();
                    //        hsdk.hocsinh_name = hocsinh_hoten;
                    //        hsdk.hocsinh_dateofbirth = hocsinh_ngaysinh;
                    //        hsdk.hocsinh_dangki_class = hocsinh_lopdangky;
                    //        //hsdk.hocsinh_tenme = hocsinh_tenme;
                    //        hsdk.hocsinh_phuhuynh_name = hocsinh_tenba;
                    //        hsdk.hocsinh_phone = hocsinh_sdtba;
                    //        //hsdk.hocsinh_sdtme = hocsinh_sdtme;
                    //        hsdk.hocsinh_address = hocsinh_noio;
                    //        hsdk.hocsinh_email = hocsinh_emailba;
                    //        //hsdk.hocsinh_emailme = hocsinh_emailme;
                    //        if (ngaydangky != "")
                    //        {
                    //            DateTime hocsinh_ngaydangky = Convert.ToDateTime(ngaydangky);
                    //            hsdk.hocsinh_ngaydangky = hocsinh_ngaydangky;
                    //        }
                    //        else
                    //        {
                    //        }
                    //        hsdk.hocsinh_quoctich = "Việt Nam";
                    //        //hsdk.hocsinh_trangthai_dangky = 0;
                    //        //hsdk.username_id = _idUser;
                    //        //if (_idUser == 130)
                    //        //{
                    //        //    hsdk.hocsinh_cosodangky = 1;
                    //        //}
                    //        //else if (_idUser == 131)
                    //        //{
                    //        //    hsdk.hocsinh_cosodangky = 2;
                    //        //}
                    //        //else if (_idUser == 145)
                    //        //{
                    //        //    hsdk.hocsinh_cosodangky = 3;
                    //        //}
                    //        //else if (_idUser == 50)
                    //        //{
                    //        //    hsdk.hocsinh_cosodangky = 4;
                    //        //}
                    //        //hsdk.hocsinh_noidangky = "Văn phòng";
                    //        //hsdk.hocsinh_danhsachcho_khaosat = false;
                    //        //hsdk.hocsinh_ghichu = hocsinh_ghichu;
                    //        //hsdk.hocsinh_tinhtrang = 1; //0 lưu trữ, 1 đang học, 2 đang chờ, 3 chờ khảo sát, 4 đã khảo sát, 5 khảo sát đạt,6 đăng ký mới, -1 đã nghỉ, -2 khảo sát không đạt
                    //        db.tbWebsite_DangKiTuyenSinhs.InsertOnSubmit(hsdk);
                    //        db.SubmitChanges();
                    //    }
                    ////}
                    ////else
                    ////    break;
                }
                eat.CloseExcel();
                alert.alert_Success(Page, "Lưu dữ liệu thành công!", "");
                loadData();
                //}
                //catch
                //{
                //    alert.alert_Error(Page, "Có lỗi!", "");
                //    eat.CloseExcel();
                //}
                //if (_idUser == 130)
                //{
                //    loadDataCoSo(1);
                //}
                //else if (_idUser == 131)
                //{
                //    loadDataCoSo(2);
                //}
                //else if (_idUser == 145)
                //{
                //    loadDataCoSo(3);
                //}
                //else if (_idUser == 50)
                //{
                //    loadDataCoSo(4);
                //    if (ddlSearch.SelectedValue != "0")
                //        filterDataByClass(ddlSearch.SelectedValue);
                //}
                //else
                //{
                //    loadData();
                //}
            }
            else
                alert.alert_Warning(Page, "File chọn không đúng định dạng!", "");
        }
    }

    private bool CheckExistHocSinh(DateTime hocsinh_ngaysinh, string hocsinh_hoten)
    {
        throw new NotImplementedException();
    }
    public string image;
    protected void btnLuuImage_ServerClick(object sender, EventArgs e)
    {
        if (Page.IsValid && FileUpload1.HasFile)
        {
            String folderUser = Server.MapPath("~/uploadimages/file-sach-hoaintt");
            if (!Directory.Exists(folderUser))
            {
                Directory.CreateDirectory(folderUser);
            }
            //string filename;
            string ulr = "/uploadimages/file-sach-hoaintt/";
            HttpFileCollection hfc = Request.Files;
            string filename = Path.GetFileName(FileUpload1.FileName);
            string fileName_save = Path.Combine(Server.MapPath("~/uploadimages/file-sach-hoaintt"), filename);
            FileUpload1.SaveAs(fileName_save);
            image = ulr + filename;
            _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_sach_id" }));
            tbThuVien_Sach updateImage = (from tvi in db.tbThuVien_Saches where tvi.thuvien_sach_id == _id select tvi).SingleOrDefault();
            updateImage.thuvien_sach_image = image;
            db.SubmitChanges();
            //loadData();
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Đã cập nhật hình ảnh!','','success').then(function(){grvList.UnselectRows();})", true);
            //ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "grvList.Refresh();", true);
        }
    }
}