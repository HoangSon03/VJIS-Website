using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_ThuKho_module_ThuKho_NhapHang : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public string adminName;
    DataTable dtProduct;
    public int stt = 1;
    int masp;
    string tensp;
    int sl;
    int gianhap;
    int thanhtien;
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        var list = from s in db.tbThuVien_Saches
                   select new
                   {
                       s.thuvien_sach_id,
                       s.thuvien_sach_name
                   };
        grvList.DataSource = list;
        grvList.DataBind();
        var getuser = (from u in db.admin_Users
                       where u.username_username == Request.Cookies["UserName"].Value
                       select u).FirstOrDefault();
        txtNhanVien.Value = getuser.username_fullname;
        string matutang = Matutang();
        txtMaNhap.Value = matutang;
        loaddatatable();
        dtProduct = (DataTable)Session["spChiTiet"];
        rp_grvChiTiet.DataSource = dtProduct;
        rp_grvChiTiet.DataBind();
        //hiện ngày tháng 
        //var new_day = DateTime.Now.ToString("dd/MM/yyyy");
        txtNgayNhap.Value = DateTime.Now.ToString("dd/MM/yyyy");
        if (Session["spChiTiet"] == null)
        {
            btnSave.Visible = false;
        }
    }

    public string MatutangAA()
    {
        int year = DateTime.Now.Year;
        var list = from nk in db.tbThuVien_ThuKhos select nk;
        string s = "NH";

        if (list.Count() <= 0)
            s = year + "NH00001";
        else
        {
            var list1 = from nk in db.tbThuVien_ThuKhos orderby nk.thukho_code descending select nk;
            string chuoi = list1.First().thukho_code;
            int k;
            k = Convert.ToInt32(chuoi.Substring(6, 5));
            k = k + 1;
            if (k < 10) s = s + "0000";
            else if (k < 100)
                s = s + "000";
            else if (k < 1000)
                s = s + "00";
            else if (k < 10000)
                s = s + "0";
            s = year + s + k.ToString();
        }
        return s;
    }

    public string Matutang()
    {
        int year = DateTime.Now.Year;
        string yearStr = Convert.ToString(year);
        var list = from nk in db.tbThuVien_ThuKhos select nk;
        string s = "NH";
        if (list.Count() <= 0)
        {
            s = yearStr + "NH00001";
        }
        else
        {
            var list1 = from nk in db.tbThuVien_NhapSaches orderby nk.nhapsach_code descending select nk;
            string chuoi = list1.First().nhapsach_code;
            if (chuoi.Substring(0, 4) != yearStr)
            {
                s = yearStr + "NH00001";
            }
            else
            {
                int k;
                k = Convert.ToInt32(chuoi.Substring(6, 5));
                k = k + 1;
                if (k < 10) s = s + "0000";
                else if (k < 100)
                    s = s + "000";
                else if (k < 1000)
                    s = s + "00";
                else if (k < 10000)
                    s = s + "0";
                s = yearStr + s + k.ToString();
            }
        }

        return s;
    }
    //2019TK00001
    public void loaddatatable()
    {
        if (dtProduct == null)
        {
            dtProduct = new DataTable();
            dtProduct.Columns.Add("nhapsachchitiet_id", typeof(int));
            dtProduct.Columns.Add("thuvien_sach_id", typeof(int));
            dtProduct.Columns.Add("nhapsach_id", typeof(int));
            dtProduct.Columns.Add("hidden", typeof(bool));
            dtProduct.Columns.Add("thuvien_sach_name", typeof(string));
            dtProduct.Columns.Add("nhapsachchitiet_soluong", typeof(int));
            dtProduct.Columns.Add("nhapsachchitiet_dongia", typeof(int));
            dtProduct.Columns.Add("nhapsachchitiet_thanhtien", typeof(int));
        }
    }



    protected void btnChiTiet_ServerClick(object sender, EventArgs e)
    {
        //kiểm tra add 2 lần có thêm vào gridview hay không
        int _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_sach_id" }));
        var checkSanPham = (from sp in db.tbThuVien_Saches where sp.thuvien_sach_id == _id select sp).SingleOrDefault();
        if (Session["spChiTiet"] != null)
        {
            dtProduct = (DataTable)Session["spChiTiet"];
            DataRow[] row_id = dtProduct.Select("thuvien_sach_id = '" + _id + "'");
            if (row_id.Length != 0)
            {
                alert.alert_Warning(Page, "Sản phẩm đã có", "");
            }
            else
            {
                DataRow row = dtProduct.NewRow();
                row["thuvien_sach_id"] = checkSanPham.thuvien_sach_id;
                row["thuvien_sach_name"] = checkSanPham.thuvien_sach_name;
                row["nhapsachchitiet_soluong"] = 1;
                row["nhapsachchitiet_dongia"] = 1;
                row["nhapsachchitiet_thanhtien"] = 1;
                row["hidden"] = false;

                dtProduct.Rows.Add(row);
                Session["spChiTiet"] = dtProduct;
            }
        }
        else
        {
            loaddatatable();
            DataRow row = dtProduct.NewRow();
            row["thuvien_sach_id"] = checkSanPham.thuvien_sach_id;
            row["thuvien_sach_name"] = checkSanPham.thuvien_sach_name;
            row["nhapsachchitiet_soluong"] = 1;
            row["nhapsachchitiet_dongia"] = 1;
            row["nhapsachchitiet_thanhtien"] = 1;
            row["hidden"] = false;
            dtProduct.Rows.Add(row);
            Session["spChiTiet"] = dtProduct;
        }
        // insert lưu vào database

        //End inseert lưu vào database
        rp_grvChiTiet.DataSource = dtProduct;
        rp_grvChiTiet.DataBind();
        btnSave.Visible = true;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        var getuser = (from u in db.admin_Users
                       where u.username_username == Request.Cookies["UserName"].Value
                       select u).FirstOrDefault();
        dtProduct = (DataTable)Session["spChiTiet"];
        try
        {
            if (dtProduct.Rows.Count <= 0 || dtProduct == null) alert.alert_Warning(Page, "Bạn chưa có sản phẩm nào", "");
        }
        catch { }
        if (dtProduct == null) alert.alert_Warning(Page, "Bạn chưa có sản phẩm nào", "");
        else
        {
            //Lưu vào bảng nhapsach
            tbThuVien_NhapSach insertns = new tbThuVien_NhapSach();
            insertns.nhapsach_code = txtMaNhap.Value;
            insertns.nhapsach_createday = DateTime.Now;
            insertns.nhapsach_tongtien = 0;
            insertns.username_id = getuser.username_id;
            db.tbThuVien_NhapSaches.InsertOnSubmit(insertns);
            db.SubmitChanges();
            // lưu dữ liệu vào bảng nhập hàng
            try
            {
                if (dtProduct.Rows.Count > 0)
                {
                    foreach (DataRow row in dtProduct.Rows)
                    {
                        tbThuVien_NhapSachChiTiet insert = new tbThuVien_NhapSachChiTiet();
                        insert.nhapsach_code = txtMaNhap.Value;
                        insert.thuvien_sach_id = Convert.ToInt32(row["thuvien_sach_id"]);
                        insert.nhapsachchitiet_soluong = Convert.ToInt32(row["nhapsachchitiet_soluong"]);
                        insert.nhapsachchitiet_thanhtien = Convert.ToInt32(row["nhapsachchitiet_thanhtien"]);
                        insert.nhapsachchitiet_dongia = Convert.ToInt32(row["nhapsachchitiet_dongia"]);
                        insert.hidden = false;
                        db.tbThuVien_NhapSachChiTiets.InsertOnSubmit(insert);
                        db.SubmitChanges();
                    }
                }
                var updatens = (from ns in db.tbThuVien_NhapSaches where ns.nhapsach_code == txtMaNhap.Value select ns).SingleOrDefault();
                updatens.nhapsach_tongtien = (from nsct in db.tbThuVien_NhapSachChiTiets where nsct.nhapsach_code == txtMaNhap.Value && nsct.hidden == false select nsct).Sum(x => x.nhapsachchitiet_thanhtien);
                db.SubmitChanges();
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "AlertBox", "swal('Nhập hàng thành công!', '','success').then(function(){window.location = '/admin-quan-ly-nhap-hang';})", true);
            }
            catch
            {
                alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
            }
            string matutang = Matutang();
            txtMaNhap.Value = matutang;
        }

    }


    protected void NhapHang_ServerClick(object sender, EventArgs e)
    {
        // kiểm tra id
        int _id = Convert.ToInt32(txt_ID.Value);
        if (Session["spChiTiet"] != null)
        {
            dtProduct = (DataTable)Session["spChiTiet"];
            // chạy foreach để lặp lại các row 
            foreach (DataRow row in dtProduct.Rows)
            {
                string product_id = row["thuvien_sach_id"].ToString();
                if (product_id == _id.ToString())
                {
                    // lưu data bằng input đầu vào
                    row.SetField("nhapsachchitiet_soluong", txt_SoLuong.Value);
                    row.SetField("nhapsachchitiet_dongia", txt_DonGia.Value);
                    row.SetField("nhapsachchitiet_thanhtien", txt_ThanhTien.Value);
                    rp_grvChiTiet.DataSource = dtProduct;
                    rp_grvChiTiet.DataBind();
                    break;
                }
            }
        }
    }

    protected void btnXoa_ServerClick(object sender, EventArgs e)
    {
        int _id = Convert.ToInt32(txt_ID.Value);
        dtProduct = (DataTable)Session["spChiTiet"];
        foreach (DataRow row in dtProduct.Rows)
        {
            // xóa trong table 
            var checkprdt = (from ctnh in db.tbThuVien_NhapSachChiTiets
                             where ctnh.thuvien_sach_id == _id
                             select ctnh);

            string nhapsachchitiet_id = row["thuvien_sach_id"].ToString();



            if (nhapsachchitiet_id == _id.ToString())
            {
                dtProduct.Rows.Remove(row);
                Session["spChiTiet"] = dtProduct;
                db.SubmitChanges();
                break;
            }
        }
        rp_grvChiTiet.DataSource = dtProduct;
        rp_grvChiTiet.DataBind();
        alert.alert_Success(Page, "Xóa Thành Công", "");
    }


}