using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_ThuVien_module_MuonSachChiTiet : System.Web.UI.Page
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
    int date;
    cls_Alert alert = new cls_Alert();

    protected void Page_Load(object sender, EventArgs e)
    {

        //lấy thông tin của tk đang nhập
        var getuser = (from u in db.admin_Users
                       where u.username_username == Request.Cookies["UserName"].Value
                       select u).FirstOrDefault();
        //lấy thông tin từ bảng booksach
        if (!IsPostBack)
        {
            int _id = Convert.ToInt32(RouteData.Values["id"]);
            // var getdetail = (from nh in db.tbThuVien_BookSaches where nh.thuvien_booksach_id == _id select nh).SingleOrDefault();
            txtNhanVien.Value = "";
            dteNgayMuon.Value = DateTime.Now.ToString("dd/MM/yyyy");
            //date = txt
            //dteNgayTra.Value = DateTime.Now.AddDays(15).ToString("dd/MM/yyyy");
            //dteNgayTra.Value =  DateTime.Now.ToString("dd/MM/yyyy");
            //txtNhanVien.Value = (from u in db.admin_Users where u.username_id == getdetail.username_id select u).SingleOrDefault().username_fullname;
            //txtName.Value = getdetail.khachhang_name;
            //dteNgayMuon.Value = getdetail.thuvien_booksach_tungay.Value.ToString("yyyy-MM-dd").Replace(' ', 'T');
            //dteNgayTra.Value = getdetail.thuvien_booksach_denngay.Value.ToString("yyyy-MM-dd").Replace(' ', 'T');
            //txtBoPhan.Value = getdetail.thuvien_bophan + "";
            // nếu sestion chi tiet mà co du lieu roi thi khong cho chạy vao nua
            loaddatatable();
            //dtProduct = (DataTable)Session["spChiTiet"];
            //rp_grvChiTiet.DataSource = dtProduct;
            //rp_grvChiTiet.DataBind();
            //if (RouteData.Values["id"] != null)
            //{
            //    //get mã tự tăng của nhập hàng chi tiết
            //    var getctms = (from ctms in db.tbThuVien_BookSach_ChiTiets
            //                   join product in db.tbThuVien_Saches on ctms.thuvien_sach_id equals product.thuvien_sach_id
            //                   where getdetail.thuvien_booksach_id == ctms.thuvien_booksach_id
            //                   && ctms.hidden == null
            //                   select new
            //                   {
            //                       ctms.thuvien_sach_id,
            //                       product.thuvien_sach_name,
            //                       ctms.booksach_chitiet_soluong

            //                   });
            //    //loaddata ra datatable
            //    foreach (var item in getctms)
            //    {
            //        DataRow row = dtProduct.NewRow();
            //        row["thuvien_sach_id"] = item.thuvien_sach_id;
            //        row["thuvien_sach_name"] = item.thuvien_sach_name;
            //        row["booksach_chitiet_soluong"] = item.booksach_chitiet_soluong;
            //        dtProduct.Rows.Add(row);
            //    };
            //    Session["MuonSachUpdate"] = dtProduct;
            //    rp_grvChiTiet.DataSource = dtProduct;
            //    rp_grvChiTiet.DataBind();
            //}
        }

        var getNhanVien = db.admin_Users.Where(u => u.username_username == Request.Cookies["UserName"].Value)
                             .Select(u => u).FirstOrDefault();
        txtNhanVien.Value = getNhanVien.username_fullname;
        txtMaNhanVien.Value = getNhanVien.username_id.ToString();
        var getNhapSach_SoLuongTong = from s in db.tbThuVien_Saches
                                      join sct in db.tbThuVien_NhapSachChiTiets on s.thuvien_sach_id equals sct.thuvien_sach_id
                                      group s by s.thuvien_sach_id into g
                                      select new
                                      {
                                          g.Key,
                                          thuvien_sach_name = (from s1 in db.tbThuVien_Saches where s1.thuvien_sach_id == g.Key select s1).FirstOrDefault().thuvien_sach_name,
                                          nhapkho_soluong = (from nsct in db.tbThuVien_NhapSachChiTiets where nsct.thuvien_sach_id == g.Key select nsct).Sum(x => x.nhapsachchitiet_soluong)
                                      };
        var getMuonSach_SoLuongTong = from s in db.tbThuVien_Saches
                                      join sct in db.tbThuVien_NhapSachChiTiets on s.thuvien_sach_id equals sct.thuvien_sach_id
                                      group s by s.thuvien_sach_id into g
                                      select new
                                      {
                                          g.Key,
                                          thuvien_sach_name = (from s1 in db.tbThuVien_Saches where s1.thuvien_sach_id == g.Key select s1).FirstOrDefault().thuvien_sach_name,
                                          muonkho_soluong = (from nsct in db.tbThuVien_BookSach_ChiTiets where nsct.thuvien_sach_id == g.Key select nsct).Sum(x => x.booksach_chitiet_soluong)
                                      };
        var listTong_SoLuongTonKho = from s in db.tbThuVien_Saches
                                     join sct in db.tbThuVien_NhapSachChiTiets on s.thuvien_sach_id equals sct.thuvien_sach_id
                                     group s by s.thuvien_sach_id into m
                                     select new
                                     {
                                         thuvien_sach_id= m.Key,
                                         thuvien_sach_name = (from s1 in db.tbThuVien_Saches where s1.thuvien_sach_id == m.Key select s1).FirstOrDefault().thuvien_sach_name,
                                         tonkho_soluong = Convert.ToInt32((from slns in getNhapSach_SoLuongTong where slns.Key == m.Key select slns).SingleOrDefault().nhapkho_soluong)
                                         - Convert.ToInt32((from slms in getMuonSach_SoLuongTong where slms.Key == m.Key select slms).SingleOrDefault().muonkho_soluong == null ? 0 : (from slms in getMuonSach_SoLuongTong where slms.Key == m.Key select slms).SingleOrDefault().muonkho_soluong)
                                     };
        grvList.DataSource = listTong_SoLuongTonKho;
        grvList.DataBind();
        loaddatatable();
        dtProduct = (DataTable)Session["MuonSachChiTiet"];
        rp_grvChiTiet.DataSource = dtProduct;
        rp_grvChiTiet.DataBind();
    }
    public void loaddatatable()
    {
        try
        {

            dtProduct = new DataTable();
            dtProduct.Columns.Add("thuvien_sach_id", typeof(int));
            dtProduct.Columns.Add("thuvien_sach_name", typeof(string));
            dtProduct.Columns.Add("booksach_chitiet_soluong", typeof(int));
        }
        catch
        {
            alert.alert_Error(Page, "Liên hệ tổ IT", "");
        }

    }
    protected void btnDatHang_ServerClick(object sender, EventArgs e)
    {
        try
        {

            int id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_sach_id" }));
            //var getSanPham = db.tbThuVien_TonKhos.Join(db.tbThuVien_Saches,
            //                 tk => tk.thuvien_sach_id,
            //                 s => s.thuvien_sach_id,
            //                 (tk, s) => new
            //                 {
            //                     s.thuvien_sach_name,
            //                     s.thuvien_sach_id
            //                 })
            //                .Where(s => s.thuvien_sach_id == id)
            //                .SingleOrDefault();
            var getSanPham = (from s in db.tbThuVien_Saches where s.thuvien_sach_id == id select s).SingleOrDefault();
            if (Session["MuonSachChiTiet"] != null)
            {
                DataRow[] row_id = dtProduct.Select("thuvien_sach_id = ' " + id + "'");
                if (row_id.Length != 0)
                {
                    alert.alert_Warning(Page, "Sách này đã có trong danh sách cho mượn", "");
                }
                else
                {
                    DataRow row = dtProduct.NewRow();
                    row["thuvien_sach_id"] = getSanPham.thuvien_sach_id;
                    row["thuvien_sach_name"] = getSanPham.thuvien_sach_name;
                    row["booksach_chitiet_soluong"] = 1;
                    dtProduct.Rows.Add(row);
                    Session["MuonSachChiTiet"] = dtProduct;

                }
            }
            else
            {
                loaddatatable();
                DataRow row = dtProduct.NewRow();

                row["thuvien_sach_id"] = getSanPham.thuvien_sach_id;
                row["thuvien_sach_name"] = getSanPham.thuvien_sach_name;
                row["booksach_chitiet_soluong"] = 1;
                dtProduct.Rows.Add(row);
                Session["MuonSachChiTiet"] = dtProduct;
            }
            rp_grvChiTiet.DataSource = dtProduct;
            rp_grvChiTiet.DataBind();
        }

        catch
        {
            alert.alert_Error(Page, "Liên hệ tổ IT", "");
        }
    }

    protected void DatHang_ServerClick(object sender, EventArgs e)
    {

        int id = Convert.ToInt32(txt_ID.Value);
        if (Session["MuonSachChiTiet"] != null)
        {
            dtProduct = (DataTable)Session["MuonSachChiTiet"];
            foreach (DataRow row in dtProduct.Rows)
            {
                if (id.ToString() == row["thuvien_sach_id"].ToString())
                {
                    row.SetField("booksach_chitiet_soluong", txt_SoLuong.Value);
                    rp_grvChiTiet.DataSource = dtProduct;
                    rp_grvChiTiet.DataBind();
                }
            }
        }
    }

    protected void btnXoa_ServerClick(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(txt_ID.Value);
        foreach (DataRow row in dtProduct.Rows)
        {
            if (id.ToString() == row["thuvien_sach_id"].ToString())
            {
                dtProduct.Rows.Remove(row);
                Session["MuonSachChiTiet"] = dtProduct;
                break;
            }
        }
        rp_grvChiTiet.DataSource = dtProduct;
        rp_grvChiTiet.DataBind();
        alert.alert_Success(Page, "Xóa thành công!", "");
    }

    protected void btnMuonSach_Click(object sender, EventArgs e)
    {
        try
        {
            if (dtProduct == null || dtProduct.Rows.Count <= 0)
            {
                alert.alert_Warning(Page, "Bạn chưa có sách nào", "");
            }
            else
            {
                if (txtBoPhan.Value == null || dteNgayMuon.Value == "" )
                {
                    alert.alert_Warning(Page, "Bạn chưa nhập đầy đủ nội dung", "");
                }
                else
                {
                    try
                    {
                        if (dtProduct.Rows.Count > 0)
                        {
                            tbThuVien_BookSach insert = new tbThuVien_BookSach();
                            insert.username_id = Convert.ToInt32(txtMaNhanVien.Value);
                            insert.khachhang_name = txtName.Value;
                            //insert.thuvien_bophan = Convert.ToInt32(txtBoPhan.Value);
                            insert.thuvien_booksach_tungay = DateTime.Now;
                            insert.thuvien_booksach_denngay = DateTime.Now.AddDays(Convert.ToInt32(txtSoNgay.Value));
                            //insert.thuvien_booksach_denngay = Convert.ToDateTime(dteNgayMuon.Value + txtSoNgay);
                            insert.hidden = false;
                            insert.active = true;
                            insert.status = 1;
                            db.tbThuVien_BookSaches.InsertOnSubmit(insert);
                            db.SubmitChanges();

                            foreach (DataRow row in dtProduct.Rows)
                            {
                                var getNhapSach_SoLuongTong = from s in db.tbThuVien_Saches
                                                              select new
                                                              {
                                                                  s.thuvien_sach_name,
                                                                  s.thuvien_sach_id,
                                                                  nhapkho_soluong = (from nsct in db.tbThuVien_NhapSachChiTiets where nsct.thuvien_sach_id == s.thuvien_sach_id select nsct).Sum(x => x.nhapsachchitiet_soluong)
                                                              };
                                var getMuonSach_SoLuongTong = from s in db.tbThuVien_Saches
                                                              select new
                                                              {
                                                                  s.thuvien_sach_name,
                                                                  s.thuvien_sach_id,
                                                                  muonkho_soluong = (from nsct in db.tbThuVien_BookSach_ChiTiets where nsct.thuvien_sach_id == s.thuvien_sach_id select nsct).Sum(x => x.booksach_chitiet_soluong)
                                                              };
                                var update = (from s in db.tbThuVien_Saches
                                              where s.thuvien_sach_id == Convert.ToInt32(row["thuvien_sach_id"])
                                              select new
                                              {
                                                  s.thuvien_sach_name,
                                                  s.thuvien_sach_id,
                                                  tonkho_soluong = Convert.ToInt32((from slns in getNhapSach_SoLuongTong where slns.thuvien_sach_id == s.thuvien_sach_id select slns).SingleOrDefault().nhapkho_soluong) - Convert.ToInt32((from slms in getMuonSach_SoLuongTong where slms.thuvien_sach_id == s.thuvien_sach_id select slms).SingleOrDefault().muonkho_soluong == null ? 0 : (from slms in getMuonSach_SoLuongTong where slms.thuvien_sach_id == s.thuvien_sach_id select slms).SingleOrDefault().muonkho_soluong)
                                              }).SingleOrDefault();
                                //var update = db.tbThuVien_TonKhos.Where(tk => tk.thuvien_sach_id == Convert.ToInt32(row["thuvien_sach_id"])).Select(tk => tk).SingleOrDefault();

                                if (update.tonkho_soluong < Convert.ToInt32(row["booksach_chitiet_soluong"]))
                                {
                                    alert.alert_Warning(Page, "Số lượng sách " + row["thuvien_sach_name"] + " còn lại trong kho không đủ để cho mượn", "");
                                }

                                else
                                {
                                    //lưu vào bảng chi tiết
                                    tbThuVien_BookSach_ChiTiet insertChiTiet = new tbThuVien_BookSach_ChiTiet();
                                    insertChiTiet.thuvien_sach_id = Convert.ToInt32(row["thuvien_sach_id"]);
                                    insertChiTiet.booksach_chitiet_soluong = Convert.ToInt32(row["booksach_chitiet_soluong"]);
                                    insertChiTiet.thuvien_booksach_id = insert.thuvien_booksach_id;
                                    insertChiTiet.booksach_chitiet_tungay = Convert.ToDateTime(dteNgayMuon.Value);
                                    //insertChiTiet.booksach_chitiet_denngay = Convert.ToDateTime(dteNgayTra.Value);
                                    db.tbThuVien_BookSach_ChiTiets.InsertOnSubmit(insertChiTiet);
                                    db.SubmitChanges();

                                    if (update != null)
                                    {
                                        //update.tonkho_soluong = update.tonkho_soluong - Convert.ToInt32(row["booksach_chitiet_soluong"]);
                                        //db.SubmitChanges();
                                    }

                                    txtName.Value = "";
                                    Session["MuonSachChiTiet"] = null;
                                }
                            }
                            db.SubmitChanges();
                            dtProduct = (DataTable)Session["MuonSachChiTiet"];
                            rp_grvChiTiet.DataSource = dtProduct;
                            rp_grvChiTiet.DataBind();
                            Response.Redirect("/admin-quan-ly-muon-sach");
                        }
                    }
                    catch
                    {
                        alert.alert_Error(Page, "Liên hệ tổ IT", "");
                    }
                }
            }
        }
        catch
        {
            alert.alert_Error(Page, "Liên hệ tổ IT", "");
        }
    }
}