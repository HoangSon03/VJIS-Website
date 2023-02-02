using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_ThuKho_module_ThuKho_Update1 : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            int _id = Convert.ToInt32(RouteData.Values["id"]);
            var getdataid = (from nh in db.tbThuVien_NhapSaches where nh.nhapsach_id == _id select nh).SingleOrDefault();
            txtMaNhap.Value = getdataid.nhapsach_code;
            txtNgayNhap.Value = getdataid.nhapsach_createday.Value.ToString("dd-MM-yyyy").Replace(' ', 'T');
            var getname = (from u in db.admin_Users where u.username_id == getdataid.username_id select u).SingleOrDefault();
            txtNhanVien.Value = getname.username_fullname;
            //txtNoiDung.Value = getdataid.thukho_ghichu;
            // nếu sestion chi tiet mà co du lieu roi thi khong cho chạy vao nua
            if (Session["spChiTiet"] == null)
            {
                loaddatatable();
                if (RouteData.Values["id"] != null)
                {
                   
                    var getctnh = (from ctnh in db.tbThuVien_NhapSachChiTiets
                                   join product in db.tbThuVien_NhapSaches on ctnh.nhapsach_code equals product.nhapsach_code
                                   where ctnh.hidden == false && ctnh.nhapsach_code == txtMaNhap.Value
                                   select new
                                   {
                                       product.nhapsach_id,
                                       ctnh.thuvien_sach_id,
                                       ctnh.nhapsachchitiet_id,
                                       ctnh.nhapsachchitiet_soluong,
                                       ctnh.nhapsachchitiet_thanhtien,
                                       ctnh.nhapsachchitiet_dongia,
                                       ctnh.hidden
                                   });
                    //loaddata ra datatable
                    foreach (var item in getctnh)
                    {
                        DataRow row = dtProduct.NewRow();
                        row["nhapsachchitiet_id"] = item.nhapsachchitiet_id;
                        var getName = (from s in db.tbThuVien_Saches where s.thuvien_sach_id == item.thuvien_sach_id select s).SingleOrDefault();
                        row["thuvien_sach_name"] = getName.thuvien_sach_name;
                        row["thuvien_sach_id"] = item.thuvien_sach_id;
                        row["nhapsachchitiet_soluong"] = item.nhapsachchitiet_soluong;
                        row["nhapsachchitiet_dongia"] = item.nhapsachchitiet_dongia;
                        row["nhapsachchitiet_thanhtien"] = item.nhapsachchitiet_thanhtien;
                        row["hidden"] = item.hidden;

                        dtProduct.Rows.Add(row);
                    };
                    Session["spChiTiet"] = dtProduct;
                    rp_grvChiTiet.DataSource = dtProduct;
                    rp_grvChiTiet.DataBind();
                }
            }
            else
            {
                loaddatatable();
                dtProduct = (DataTable)Session["spChiTiet"];
                rp_grvChiTiet.DataSource = dtProduct;
                rp_grvChiTiet.DataBind();
            }
        }
    }
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
        var checkThuKho = (from tk in db.tbThuVien_NhapSachChiTiets where tk.thuvien_sach_id == _id select tk).SingleOrDefault();
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
                row["nhapsachchitiet_id"] = 0;
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
        // insert lưu vào database

        //End inseert lưu vào database
        rp_grvChiTiet.DataSource = dtProduct;
        rp_grvChiTiet.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        dtProduct = (DataTable)Session["spChiTiet"];
        try
        {
            if (dtProduct.Rows.Count <= 0 || dtProduct == null) alert.alert_Warning(Page, "Bạn chưa có sản phẩm nào", "");
        }
        catch { }
        if (dtProduct == null) alert.alert_Warning(Page, "Bạn chưa có sản phẩm nào", "");
        else
        {

            // lưu dữ liệu vào bảng nhập sách
            //try
            //{
            if (dtProduct.Rows.Count > 0)
            {
                // -------------------------thêm vào bảng chi tiết ----------------------------
                foreach (DataRow row in dtProduct.Rows)
                {
                    var checkprdt = (from ctnh in db.tbThuVien_NhapSachChiTiets
                                     where ctnh.nhapsach_code == txtMaNhap.Value
                                     where ctnh.nhapsachchitiet_id == Convert.ToInt32(row["nhapsachchitiet_id"])
                                     select ctnh);

                    if (checkprdt.Count() > 0)
                    {
                        foreach (var product in checkprdt)
                        {
                            if (product.nhapsachchitiet_id == Convert.ToInt32(row["nhapsachchitiet_id"]))
                            {
                                //update vào bảng chi tiết nhập sách
                                product.thuvien_sach_id = Convert.ToInt32(row["thuvien_sach_id"]);
                                product.nhapsachchitiet_soluong = Convert.ToInt32(row["nhapsachchitiet_soluong"]);
                                product.nhapsachchitiet_dongia = Convert.ToInt32(row["nhapsachchitiet_dongia"]);
                                product.nhapsachchitiet_thanhtien = Convert.ToInt32(row["nhapsachchitiet_thanhtien"]);
                                product.hidden = Convert.ToBoolean(row["hidden"]);
                                db.SubmitChanges();
                            }
                        }
                    }
                    else
                    {
                        tbThuVien_NhapSachChiTiet addRow = new tbThuVien_NhapSachChiTiet();
                        addRow.nhapsach_code = txtMaNhap.Value;
                        addRow.thuvien_sach_id = Convert.ToInt32(row["thuvien_sach_id"]);
                        addRow.nhapsachchitiet_soluong = Convert.ToInt32(row["nhapsachchitiet_soluong"]);
                        addRow.nhapsachchitiet_thanhtien = Convert.ToInt32(row["nhapsachchitiet_thanhtien"]);
                        addRow.nhapsachchitiet_dongia = Convert.ToInt32(row["nhapsachchitiet_dongia"]);
                        addRow.hidden = false;

                        db.tbThuVien_NhapSachChiTiets.InsertOnSubmit(addRow);
                        db.SubmitChanges();
                        DataTable dataTable = (DataTable)Session["spChiTiet"];
                        dtProduct = dataTable;
                        rp_grvChiTiet.DataSource = dtProduct;
                        rp_grvChiTiet.DataBind();
                    }
                    //checksp.product_price_entry = Convert.ToInt32(row["ctnh_gianhap"]);
                    db.SubmitChanges();
                }
            }
            //int _id = Convert.ToInt32(RouteData.Values["id"]);
            var updatens = (from ns in db.tbThuVien_NhapSaches where ns.nhapsach_code == txtMaNhap.Value select ns).SingleOrDefault();
            updatens.nhapsach_tongtien = (from nsct in db.tbThuVien_NhapSachChiTiets where nsct.nhapsach_code == txtMaNhap.Value && nsct.hidden == false select nsct).Sum(x => x.nhapsachchitiet_thanhtien);
            db.SubmitChanges();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "AlertBox", "swal('Nhập hàng thành công!', '','success').then(function(){window.location = '/admin-quan-ly-nhap-hang';})", true);
            //}
            //catch { }

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
                var dell = (from ctnh in db.tbThuVien_NhapSachChiTiets
                                 where ctnh.thuvien_sach_id ==  _id
                                 select ctnh).SingleOrDefault();
                dell.hidden = true;
                db.SubmitChanges();
                break;
            }
        }
        rp_grvChiTiet.DataSource = dtProduct;
        rp_grvChiTiet.DataBind();
        alert.alert_Success(Page, "Xóa Thành Công", "");
    }
}