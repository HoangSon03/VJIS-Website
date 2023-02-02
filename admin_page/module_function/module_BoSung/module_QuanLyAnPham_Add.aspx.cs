using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_QuanLyAnPham_Add : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    cls_NhapSach cls = new cls_NhapSach();
    public string image;
    private int _id;
    DataTable dtProduct;
    int vitri;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["_id"] = RouteData.Values["id"];
            edtContent.Toolbars.Add(HtmlEditorToolbar.CreateStandardToolbar1());
            if (Convert.ToInt32(RouteData.Values["id"]) != 0)
            {
                int _id = Convert.ToInt32(RouteData.Values["id"]);
                Session["_id"] = _id;
                var getdataid = (from nh in db.tbThuVien_Saches where nh.thuvien_sach_id == _id select nh).SingleOrDefault();
                txtNhanDe.Value = getdataid.thuvien_sach_name;
                txtTacGia.Value = getdataid.thuvien_sach_tacgia;
                txtNamXuatBan.Value = getdataid.thuvien_sach_namxuatban.ToString();
                ddlLoaiAnPham.SelectedValue = getdataid.thuvien_sach_loaianpham;
                ddlNgonNgu.SelectedValue = getdataid.thuvien_sach_ngonngu;
                ddlSoPhanLoai.Value = getdataid.phanloai_id;
                ddlTuSach.Value = getdataid.thuvien_tusach_id;
                txtISBN.Value = getdataid.thuvien_sach_isbn.ToString();
                txtGhiChu.Value = getdataid.thuvien_sach_ghichu;
                edtContent.Html = getdataid.thuvien_sach_noidung;
                imgPreview2.Value = getdataid.thuvien_sach_image;
                txtTitle.InnerText = "Cập nhập ấn phẩm";
                btnLuu.InnerText = "Cập nhật";
                btnLuuVaThemMoi.Visible = false;
                if (getdataid.thuvien_sach_image == null)
                    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "showImg1_1('/admin_images/Preview-icon.png')", true);
                else
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "showImg1_1('" + getdataid.thuvien_sach_image + "')", true);
                if (Session["spChiTiet"] == null)
                {
                    loaddatatable();
                    if (RouteData.Values["id"] != null)
                    {
                        //get mã tự tăng của nhập hàng chi tiết
                        var getctnh = (from ctnh in db.tbThuVien_NhapSachChiTiets
                                       join product in db.tbThuVien_NhapSaches on ctnh.nhapsach_code equals product.nhapsach_code
                                       select new
                                       {
                                           product.nhapsach_id,
                                           ctnh.thuvien_sach_id,
                                           ctnh.nhapsachchitiet_id,
                                           ctnh.nhapsachchitiet_soluong,
                                           ctnh.nhapsachchitiet_thanhtien,
                                           ctnh.nhapsachchitiet_dongia
                                       });
                        Session["spChiTiet"] = dtProduct;
                    }
                }
                else
                {
                    loaddatatable();
                    dtProduct = (DataTable)Session["spChiTiet"];
                }
            }
        }
        //Đổ dữ liệu vào các dropdownlist
        var listNhaXuatBan = from cd in db.tbThuVienNhaXuatBans select cd;
        ddlNhaXuatBan.DataSource = listNhaXuatBan;
        ddlNhaXuatBan.DataBind();
        var listPhanLoai = from cd in db.tbThuVien_PhanLoais select cd;
        ddlSoPhanLoai.DataSource = listPhanLoai;
        ddlSoPhanLoai.DataBind();
        var listTuSach = from cd in db.tbThuVien_TuSaches select cd;
        ddlTuSach.DataSource = listTuSach;
        ddlTuSach.DataBind();

    }
    public void loaddatatable()
    {
        if (dtProduct == null)
        {
            dtProduct = new DataTable();
            dtProduct.Columns.Add("thuvien_sach_id", typeof(int));
            dtProduct.Columns.Add("thuvien_sach_name", typeof(string));
            dtProduct.Columns.Add("thuvien_sach_tacgia", typeof(string));
            dtProduct.Columns.Add("thuvien_sach_namxuatban", typeof(int));
            dtProduct.Columns.Add("thuvien_sach_loaianpham", typeof(string));
            dtProduct.Columns.Add("thuvien_sach_ngonngu", typeof(string));
            dtProduct.Columns.Add("thuvien_sach_isbn", typeof(int));
            dtProduct.Columns.Add("thuvien_sach_noidung", typeof(string));
        }
    }
    private void setNULL()
    {
        txtNhanDe.Value = "";
        txtTacGia.Value = "";
        ddlNgonNgu.SelectedValue = "Việt Nam";
        ddlLoaiAnPham.SelectedValue = "Sách";
        txtISBN.Value = "";
        txtImage.Value = "/admin_images/up-img.png";
        txtNamXuatBan.Value = "";
        txtGhiChu.Value = "";
        edtContent.Html = "";
        ScriptManager.RegisterStartupScript(Page, this.GetType(), "Alert", "swal('Lưu thành công','','success').then(function(){showImg1_1('" + txtImage.Value + "');})", true);
    }
    protected void btnLuuVaThemMoi_ServerClick(object sender, EventArgs e)
    {
        //try
        //{
        var getUser = (from u in db.admin_Users
                       where u.username_username == Request.Cookies["UserName"].Value
                       select u).FirstOrDefault();
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
        }
        if (checknull() == false)
            alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
        else
        {
            if (Session["_id"].ToString() == "0")
            {
                tbThuVien_Sach insert = new tbThuVien_Sach();
                insert.thuvien_sach_name = txtNhanDe.Value;
                insert.thuvien_sach_tacgia = txtTacGia.Value;
                insert.thuvien_sach_namxuatban = Convert.ToInt32(txtNamXuatBan.Value);
                insert.thuvien_sach_loaianpham = ddlLoaiAnPham.SelectedValue;
                insert.thuvien_sach_ngonngu = ddlNgonNgu.SelectedValue;
                if (txtISBN.Value != "")
                {
                    insert.thuvien_sach_isbn = Convert.ToInt32(txtISBN.Value);
                }
                else
                {
                    insert.thuvien_sach_isbn = 0;
                }
                insert.thuvien_sach_ghichu = txtGhiChu.Value;
                if (ddlNhaXuatBan.Text != "")
                {
                    insert.nhaxuatban_id = Convert.ToInt32(ddlNhaXuatBan.Value.ToString());
                }
                else
                {
                    insert.nhaxuatban_id = 0;
                }
                insert.nhaxuatban_name = ddlNhaXuatBan.Text;
                if (ddlSoPhanLoai.Text != "")
                {
                    insert.phanloai_id = Convert.ToInt32(ddlSoPhanLoai.Value.ToString());
                }
                if (ddlTuSach.Text != "")
                {
                    insert.thuvien_tusach_id = Convert.ToInt32(ddlTuSach.Value.ToString());
                }
                insert.thuvien_sach_noidung = edtContent.Html;
                insert.sach_cutter = txtCuTter.Value;
                insert.sach_sotrang = txtSoTrang.Value;
                insert.sach_minhoa = txtMinhHoa.Value;
                if (image == null)
                {
                    insert.thuvien_sach_image = "/admin_images/Preview-icon.png";
                }
                else
                {
                    insert.thuvien_sach_image = image;
                }
                try
                {
                    db.tbThuVien_Saches.InsertOnSubmit(insert);
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Thêm thành công", "");
                    setNULL();
                }
                catch
                {
                    alert.alert_Error(Page, "Thêm thất bại", "");
                }
            }
            else
            {
                int _id = Convert.ToInt32(Session["_id"].ToString());
                tbThuVien_Sach update = db.tbThuVien_Saches.Where(x => x.thuvien_sach_id == _id).FirstOrDefault();
                update.thuvien_sach_name = txtNhanDe.Value;
                update.thuvien_sach_tacgia = txtTacGia.Value;
                update.thuvien_sach_namxuatban = Convert.ToInt32(txtNamXuatBan.Value);
                update.thuvien_sach_loaianpham = ddlLoaiAnPham.SelectedValue;
                update.thuvien_sach_ngonngu = ddlNgonNgu.SelectedValue;
                if (txtISBN.Value != "")
                {
                    update.thuvien_sach_isbn = Convert.ToInt32(txtISBN.Value);
                }
                else
                {
                    update.thuvien_sach_isbn = 0;
                }
                update.thuvien_sach_ghichu = txtGhiChu.Value;
                update.thuvien_sach_noidung = edtContent.Html;
                if (ddlSoPhanLoai.Text != "")
                {
                    update.phanloai_id = Convert.ToInt32(ddlSoPhanLoai.Value.ToString());
                }
                if (ddlTuSach.Text != "")
                {
                    update.thuvien_tusach_id = Convert.ToInt32(ddlTuSach.Value.ToString());
                }
                if (image == null)
                {
                    update.thuvien_sach_image = imgPreview2.Value;
                }
                else
                {
                    update.thuvien_sach_image = image;
                }
                try
                {
                    db.SubmitChanges();
                    setNULL();
                    txtTitle.InnerText = "Thêm ấn phẩm";
                    btnLuu.InnerText = "Lưu";
                }
                catch
                {
                    alert.alert_Error(Page, "Lưu thất bại", "");
                }
            }
        }
    }
    public bool checknull()
    {
        if (txtNhanDe.Value != "" && txtNamXuatBan.Value != "")
            return true;
        else return false;
    }
    protected void btnLuu_ServerClick(object sender, EventArgs e)
    {
        try
        {
            var getUser = (from u in db.admin_Users
                           where u.username_username == Request.Cookies["UserName"].Value
                           select u).FirstOrDefault();
            if (Page.IsValid && FileUpload1.HasFile)
            {
                String folderUser = Server.MapPath("~/uploadimages/file-sach-" + getUser.username_username);
                if (!Directory.Exists(folderUser))
                {
                    Directory.CreateDirectory(folderUser);
                }
                //string filename;
                string ulr = "/uploadimages/file-sach-" + getUser.username_username + "/";
                HttpFileCollection hfc = Request.Files;
                string filename = Path.GetFileName(FileUpload1.FileName);
                string fileName_save = Path.Combine(Server.MapPath("~/uploadimages/file-sach-" + getUser.username_username + "/"), filename);
                FileUpload1.SaveAs(fileName_save);
                image = ulr + filename;
            }
            if (checknull() == false)
                alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
            else
            {
                if (Session["_id"].ToString() == "0")
                {
                    tbThuVien_Sach insert = new tbThuVien_Sach();
                    insert.thuvien_sach_name = txtNhanDe.Value;
                    insert.thuvien_sach_tacgia = txtTacGia.Value;
                    insert.thuvien_sach_namxuatban = Convert.ToInt32(txtNamXuatBan.Value);
                    insert.thuvien_sach_loaianpham = ddlLoaiAnPham.SelectedValue;
                    insert.thuvien_sach_ngonngu = ddlNgonNgu.SelectedValue;
                    if (txtISBN.Value != "")
                    {
                        insert.thuvien_sach_isbn = Convert.ToInt32(txtISBN.Value);
                    }
                    else
                    {
                        insert.thuvien_sach_isbn = 0;
                    }
                    insert.thuvien_sach_ghichu = txtGhiChu.Value;
                    if (ddlNhaXuatBan.Text != "")
                    {
                        insert.nhaxuatban_id = Convert.ToInt32(ddlNhaXuatBan.Value.ToString());
                    }
                    else
                    {
                        insert.nhaxuatban_id = 0;
                    }
                    insert.nhaxuatban_name = ddlNhaXuatBan.Text;
                    if (ddlSoPhanLoai.Text != "")
                    {
                        insert.phanloai_id = Convert.ToInt32(ddlSoPhanLoai.Value.ToString());
                    }
                    if (ddlTuSach.Text != "")
                    {
                        insert.thuvien_tusach_id = Convert.ToInt32(ddlTuSach.Value.ToString());
                    }
                    insert.thuvien_sach_noidung = edtContent.Html;
                    insert.sach_cutter = txtCuTter.Value;
                    insert.sach_sotrang = txtSoTrang.Value;
                    insert.sach_minhoa = txtMinhHoa.Value;
                    if (image == null)
                    {
                        insert.thuvien_sach_image = "/admin_images/Preview-icon.png";
                        imgPreview2.Value= "/admin_images/Preview-icon.png";
                    }
                    else
                    {
                        insert.thuvien_sach_image = image;
                        imgPreview2.Value = image;
                    }
                    try
                    {
                        db.tbThuVien_Saches.InsertOnSubmit(insert);
                        db.SubmitChanges();
                        ScriptManager.RegisterStartupScript(Page, this.GetType(), "Alert", "swal('Thêm thành công','','success').then(function(){showImg1_1('" + insert.thuvien_sach_image + "');})", true);
                        Session["_id"] = insert.thuvien_sach_id;
                        txtTitle.InnerText = "Cập nhập ấn phẩm";
                        btnLuu.InnerText = "Cập nhật";
                    }
                    catch
                    {
                        alert.alert_Error(Page, "Thêm thất bại", "");
                    }
                }
                else
                {
                    int _id = Convert.ToInt32(Session["_id"].ToString());
                    tbThuVien_Sach update = db.tbThuVien_Saches.Where(x => x.thuvien_sach_id == _id).FirstOrDefault();
                    update.thuvien_sach_name = txtNhanDe.Value;
                    update.thuvien_sach_tacgia = txtTacGia.Value;
                    update.thuvien_sach_namxuatban = Convert.ToInt32(txtNamXuatBan.Value);
                    update.thuvien_sach_loaianpham = ddlLoaiAnPham.SelectedValue;
                    update.thuvien_sach_ngonngu = ddlNgonNgu.SelectedValue;
                    if (txtISBN.Value != "")
                    {
                        update.thuvien_sach_isbn = Convert.ToInt32(txtISBN.Value);
                    }
                    else
                    {
                        update.thuvien_sach_isbn = 0;
                    }
                    update.thuvien_sach_ghichu = txtGhiChu.Value;
                    update.thuvien_sach_noidung = edtContent.Html;
                    if (ddlSoPhanLoai.Text != "")
                    {
                        update.phanloai_id = Convert.ToInt32(ddlSoPhanLoai.Value.ToString());
                    }
                    if (ddlTuSach.Text != "")
                    {
                        update.thuvien_tusach_id = Convert.ToInt32(ddlTuSach.Value.ToString());
                    }
                    if (image == null)
                    {
                        update.thuvien_sach_image = imgPreview2.Value;
                    }
                    else
                    {
                        update.thuvien_sach_image = image;
                    }
                    try
                    {
                        db.SubmitChanges();
                        ScriptManager.RegisterStartupScript(Page, this.GetType(), "Alert", "swal('Cập nhật thành công','','success').then(function(){showImg1_1('" + update.thuvien_sach_image + "');})", true);
                    }
                    catch
                    {
                        alert.alert_Error(Page, "Cập nhật thất bại", "");
                    }
                }

            }

        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
    }
}