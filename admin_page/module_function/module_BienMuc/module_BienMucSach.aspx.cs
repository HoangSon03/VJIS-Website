using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_BienMucSach : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    cls_BienMucSach cls = new cls_BienMucSach();
    private int _id;
    int vitri;
    private String img;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["_id"] = 0;

        }
        loadData();
        var getNhanDe = from ns in db.tbThuVien_NhapSaches
                        select ns;
        ddlNhanDe.DataSource = getNhanDe;
        ddlNhanDe.DataBind();

        var getTacGia = from ns in db.tbThuVien_TacGias
                        select ns;
        ddlTacGia.DataSource = getTacGia;
        ddlTacGia.DataBind();

        var getNhaXuatBan = from nxb in db.tbThuVienNhaXuatBans
                            select nxb;
        ddlNhaXuatBan.DataSource = getNhaXuatBan;
        ddlNhaXuatBan.DataBind();

        //var getNamXuatBan = from yxb in db.tbThuVien_NhapSaches
        //                    select yxb;
        //ddlNamXuatBan.DataSource = getNamXuatBan;
        //ddlNamXuatBan.DataBind();

        var getDeMuc = from dm in db.tbThuVien_DeMucs
                       select dm;
        ddlDeMuc.DataSource = getDeMuc;
        ddlDeMuc.DataBind();

        var getSoPhanLoai = from spl in db.tbThuVien_PhanLoais
                            select spl;
        //ddlTacGia.Items.Clear();
        //ddlTacGia.AppendDataBoundItems = true;
        //ddlTacGia.Items.Insert(0, "Chọn Tác Giả");
        //ddlTacGia.DataValueField = "tacgia_id";
        //ddlTacGia.DataTextField = "tacgia_name";
        ddlSoPhanLoai.DataSource = getSoPhanLoai;
        ddlSoPhanLoai.DataBind();
    }
    private void loadData()
    {
        var getData = from bms in db.tbThuVien_BienMucSaches
                      join tg in db.tbThuVien_TacGias on bms.tacgia_id equals tg.tacgia_id
                      join nxb in db.tbThuVienNhaXuatBans on bms.nhaxuatban_id equals nxb.nhaxuatban_id
                      join ns in db.tbThuVien_NhapSaches on bms.nhapsach_id equals ns.nhapsach_id
                      join spl in db.tbThuVien_PhanLoais on bms.phanloai_id equals spl.phanloai_id
                      select new
                      {
                          bms.bienmucsach_id,
                          bms.nhapsach_id,
                          //ns.nhapsach_nhande,
                          bms.bienmucsach_nhandesongsong,
                          spl.phanloai_sophanloai,
                          bms.bienmucsach_tungthu,
                          tg.tacgia_name,
                          bms.bienmucsach_createdate
                      };
        grvList.DataSource = getData;
        grvList.DataBind();


    }
    private void setNULL()
    {
        txtNhanDeSongSong.Text = "";
        txtLanXuatBan.Text = "";
        txtSoTrang.Text = "";
        txtMinhHoa.Text = "";
        txtKhoSach.Text = "";
        txtTungThu.Text = "";
        //txtTapDinhKem.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {

        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);

    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "bienmucsach_id" }));
        Session["_id"] = _id;

        var getData = (from tb in db.tbThuVien_BienMucSaches
                       join tg in db.tbThuVien_TacGias on tb.tacgia_id equals tg.tacgia_id
                       join ns in db.tbThuVien_NhapSaches on tb.nhapsach_id equals ns.nhapsach_id
                       join nxb in db.tbThuVienNhaXuatBans on tb.nhaxuatban_id equals nxb.nhaxuatban_id
                       join dm in db.tbThuVien_DeMucs on tb.demuc_id equals dm.demuc_id
                       join spl in db.tbThuVien_PhanLoais on tb.phanloai_id equals spl.phanloai_id
                       where tb.bienmucsach_id == _id
                       select new
                       {
                           tb.bienmucsach_nhandesongsong,
                           tb.bienmucsach_lanxb,
                           tb.bienmucsach_sotrang,
                           tb.bienmucsach_minhhoa,
                           tb.bienmucsach_khosach,
                           tb.bienmucsach_tungthu,
                           tb.bienmucsach_tep,
                           //ns.nhaxuatban_namxuatban,
                           //ns.nhapsach_nhande,
                           tg.tacgia_name,
                           nxb.nhaxuatban_name,
                           dm.demuc_name,
                           spl.phanloai_sophanloai
                       }).FirstOrDefault();
        txtNhanDeSongSong.Text = getData.bienmucsach_nhandesongsong;
        txtLanXuatBan.Text = getData.bienmucsach_lanxb;
        txtSoTrang.Text = getData.bienmucsach_sotrang.ToString();
        txtMinhHoa.Text = getData.bienmucsach_minhhoa;
        txtKhoSach.Text = getData.bienmucsach_khosach;
        txtTungThu.Text = getData.bienmucsach_tungthu;
        //txtTapDinhKem.Text = getData.bienmucsach_tep;
        //ddlNhanDe.Text = getData.nhapsach_nhande;
        ddlTacGia.Text = getData.tacgia_name;
        ddlNhaXuatBan.Text = getData.nhaxuatban_name;
        //ddlNamXuatBan.Text = getData.nhaxuatban_namxuatban;
        ddlDeMuc.Text = getData.demuc_name;
        ddlSoPhanLoai.Text = getData.phanloai_sophanloai.ToString();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "bienmucsach_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                if (cls.Linq_Xoa(Convert.ToInt32(item)))
                    alert.alert_Success(Page, "Xóa thành công", "");
                else
                    alert.alert_Error(Page, "Xóa thất bại", "");
            }
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
        popupControl.ShowOnPageLoad = false;
    }

    public bool checknull()
    {
        if (txtNhanDeSongSong.Text != ""/* txtNhapCode.Text != "" || txtLoaiAnPham.Text != ""*/ )
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {

        //if (file.HasFile)
        //{
        //    String folderUser = Server.MapPath("~/uploadimages/anh_Thuvien_sach");
        //    if (!Directory.Exists(folderUser))
        //    {
        //        Directory.CreateDirectory(folderUser);
        //    }
        //    String url = "~/uploadimages/anh_Thuvien_sach";
        //    lay ten tap tin
        //    String fileName = file.FileName;
        //    lấy đường dẫn thư mục
        //   String fileName_save = Path.Combine(Server.MapPath("~/uploadimages/anh_Thuvien_sach"), fileName);
        //    lưu đường dẫn thư mục
        //    file.SaveAs(fileName_save);
        //    img = url + fileName;
        //    insert.bienmucsach_tep = img;
        //}
        try
        {
            if (checknull() == false)
                alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
            else
            {
                if (Session["_id"].ToString() == "0")
                {
                    tbThuVien_BienMucSach insert = new tbThuVien_BienMucSach();
                    insert.bienmucsach_nhandesongsong = txtNhanDeSongSong.Text;
                    insert.nhapsach_id = Convert.ToInt32(ddlNhanDe.Value.ToString());
                    insert.tacgia_id = Convert.ToInt32(ddlTacGia.Value.ToString());
                    insert.nhaxuatban_id = Convert.ToInt32(ddlNhaXuatBan.Value.ToString());
                    insert.bienmucsach_lanxb = txtLanXuatBan.Text;
                    //insert.nhapsach_idnam = Convert.ToInt32(ddlNamXuatBan.Value.ToString());
                    insert.bienmucsach_sotrang = txtSoTrang.Text;
                    insert.bienmucsach_minhhoa = txtMinhHoa.Text;
                    insert.bienmucsach_khosach = txtKhoSach.Text;
                    insert.bienmucsach_tungthu = txtTungThu.Text;
                    insert.bienmucsach_createdate = DateTime.Now;
                    insert.demuc_id = Convert.ToInt32(ddlDeMuc.Value.ToString());
                    insert.phanloai_id = Convert.ToInt32(ddlSoPhanLoai.Value.ToString());
                    //insert.bienmucsach_tep = txtTapDinhKem.Text;
                    // Nhập file ảnh
                    //if (file.HasFile)
                    //{
                    //    String folderUser = Server.MapPath("~/uploadimages/anh_Thuvien_sach");
                    //    if (!Directory.Exists(folderUser))
                    //    {
                    //        Directory.CreateDirectory(folderUser);
                    //    }
                    //    String url = "~/uploadimages/anh_Thuvien_sach";
                    //    //lay ten tap tin
                    //    String fileName = file.FileName;
                    //    // lấy đường dẫn thư mục
                    //    String fileName_save = Path.Combine(Server.MapPath("~/uploadimages/anh_Thuvien_sach"), fileName);
                    //    // lưu đường dẫn thư mục
                    //    file.SaveAs(fileName_save);
                    //    img = url + fileName;
                    //    insert.bienmucsach_tep = img;
                    //}
                    insert.bienmucsach_tep = img;
                    try
                    {
                        db.tbThuVien_BienMucSaches.InsertOnSubmit(insert);
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Thêm thành công", "");
                    }
                    catch
                    {
                        alert.alert_Error(Page, "Thêm thất bại", "");
                    }
                }
                else
                {
                    int u = Convert.ToInt32(Session["_id"].ToString());
                    tbThuVien_BienMucSach update = db.tbThuVien_BienMucSaches.Where(x => x.bienmucsach_id == u).FirstOrDefault();
                    update.bienmucsach_nhandesongsong = txtNhanDeSongSong.Text;
                    update.nhapsach_id = Convert.ToInt32(ddlNhanDe.Value.ToString());
                    update.tacgia_id = Convert.ToInt32(ddlTacGia.Value.ToString());
                    update.nhaxuatban_id = Convert.ToInt32(ddlNhaXuatBan.Value.ToString());
                    update.bienmucsach_lanxb = txtLanXuatBan.Text;
                    update.bienmucsach_createdate = DateTime.Now;
                    //update.nhapsach_idnam = Convert.ToInt32(ddlNamXuatBan.Value.ToString());
                    update.bienmucsach_sotrang = txtSoTrang.Text;
                    update.bienmucsach_minhhoa = txtMinhHoa.Text;
                    update.bienmucsach_khosach = txtKhoSach.Text;
                    update.bienmucsach_tungthu = txtTungThu.Text;
                    update.demuc_id = Convert.ToInt32(ddlDeMuc.Value.ToString());
                    update.phanloai_id = Convert.ToInt32(ddlSoPhanLoai.Value.ToString());
                    //update.bienmucsach_tep = txtTapDinhKem.Text;
                    try
                    {
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Cập Nhật Thành Công", "");
                    }
                    catch
                    {
                        alert.alert_Error(Page, "Cập Nhật Thất Bại", "");
                    }
                }
            }
            popupControl.ShowOnPageLoad = false;
        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
    }

    protected void btnAddNhanDe_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("admin-bo-sung");
    }

    protected void UploadImages_ServerClick(object sender, EventArgs e)
    {
        if (file.HasFile)
        {
            String folderUser = Server.MapPath("~/uploadimages/anh_Thuvien_sach");
            if (!Directory.Exists(folderUser))
            {
                Directory.CreateDirectory(folderUser);
            }
            String url = "~/uploadimages/anh_Thuvien_sach";
            //lay ten tap tin
            String fileName = file.FileName;
            // lấy đường dẫn thư mục
            String fileName_save = Path.Combine(Server.MapPath("~/uploadimages/anh_Thuvien_sach"), fileName);
            // lưu đường dẫn thư mục
            file.SaveAs(fileName_save);
            img = url + fileName;
        }


    }
}