using System;
using System.Linq;


public partial class admin_page_module_function_module_ThuVien_module_ThongKe : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();

    DateTime monday = DateTime.Today.AddDays(-(int)DateTime.Today.DayOfWeek + (int)DayOfWeek.Monday);
    DateTime saturday = DateTime.Today.AddDays(-(int)DateTime.Today.DayOfWeek + (int)DayOfWeek.Saturday);

    protected void Page_Load(object sender, EventArgs e)
    {
        bl_TuNgayToiNgay.Visible = false;
        //loadThongke("Tổng");
        //txtContent.InnerText = "TỔNG";
    }

    public void ResetData()
    {
        txtContent.InnerText = "";
        dteTuNgay.Value = "";
        dteDenNgay.Value = "";
        grvList.DataSource = null;
        grvList.DataBind();
    }

    public void loadThongke(string option, DateTime? tungay = null, DateTime? denngay = null)
    {
        var getBsct = from bsct in db.tbThuVien_BookSach_ChiTiets
                      select new
                      {
                          bsct.thuvien_booksach_id,
                          bsct.thuvien_sach_id,
                          bsct.booksach_chitiet_soluong,
                      };
        var getBs = from bs in db.tbThuVien_BookSaches
                    select bs;

        var getSach = from sach in db.tbThuVien_Saches
                      select new
                      {
                          sach.thuvien_sach_id,
                          sach.thuvien_tusach_id,
                      };

      if(option == "Trong tháng")
      {
            var thongke = from tusach in db.tbThuVien_TuSaches
                          group tusach by tusach.thuvien_tusach_id into item
                          select new
                          {
                              item.Key,
                              tusach_name = (from b in db.tbThuVien_TuSaches where item.Key == b.thuvien_tusach_id select b).First().thuvien_tusach_name,

                              //tính số lượng theo yêu cầu theo data có từ tbBookSach, tbBookSach_ChiTiet theo từng tủ sách
                              //số lượng sách mượn quá hạn 
                              sl_quahan = (from sl in getBsct
                                           join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                           join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                           where item.Key == sach.thuvien_tusach_id
                                           && bs.status == 1
                                           && bs.thuvien_booksach_denngay.Value < DateTime.Now
                                           && bs.thuvien_booksach_tungay.Value.Month == DateTime.Now.Month
                                           && bs.thuvien_booksach_tungay.Value.Year == DateTime.Now.Year
                                           select new
                                           {
                                               sl.booksach_chitiet_soluong,
                                           }).Count(),
                              //số lượng sách mượn đã trả
                              sl_tra = (from sl in getBsct
                                        join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                        join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                        where item.Key == sach.thuvien_tusach_id
                                        && bs.status == 2
                                        && bs.thuvien_booksach_tungay.Value.Month == DateTime.Now.Month
                                        && bs.thuvien_booksach_tungay.Value.Year == DateTime.Now.Year
                                        select new
                                        {
                                            sl.booksach_chitiet_soluong,
                                        }).Count(),
                              //tổng số sách mượn 
                              sl_muon = (from sl in getBsct
                                         join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                         join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                         where item.Key == sach.thuvien_tusach_id
                                         && bs.thuvien_booksach_tungay.Value.Month == DateTime.Now.Month
                                         && bs.thuvien_booksach_tungay.Value.Year == DateTime.Now.Year
                                         select new
                                         {
                                             sl.booksach_chitiet_soluong,
                                         }).Count()
                          };
            grvList.DataSource = thongke;
            grvList.DataBind();
      }    
      else if(option == "Trong tuần")
        {
            var thongke = from tusach in db.tbThuVien_TuSaches
                          group tusach by tusach.thuvien_tusach_id into item
                          select new
                          {
                              item.Key,
                              tusach_name = (from b in db.tbThuVien_TuSaches where item.Key == b.thuvien_tusach_id select b).First().thuvien_tusach_name,

                              //tính số lượng theo yêu cầu theo data có từ tbBookSach, tbBookSach_ChiTiet theo từng tủ sách
                              //số lượng sách mượn quá hạn 
                              sl_quahan = (from sl in getBsct
                                           join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                           join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                           where item.Key == sach.thuvien_tusach_id
                                           && bs.status == 1
                                           && bs.thuvien_booksach_denngay.Value < DateTime.Now
                                           && bs.thuvien_booksach_tungay.Value >= monday
                                           && bs.thuvien_booksach_denngay.Value <= saturday
                                           select new
                                           {
                                               sl.booksach_chitiet_soluong,
                                           }).Count(),
                              //số lượng sách mượn đã trả
                              sl_tra = (from sl in getBsct
                                        join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                        join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                        where item.Key == sach.thuvien_tusach_id
                                        && bs.status == 2
                                        && bs.thuvien_booksach_tungay.Value >= monday
                                        && bs.thuvien_booksach_denngay.Value <= saturday
                                        select new
                                        {
                                            sl.booksach_chitiet_soluong,
                                        }).Count(),
                              //tổng số sách mượn 
                              sl_muon = (from sl in getBsct
                                         join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                         join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                         where item.Key == sach.thuvien_tusach_id
                                         && bs.thuvien_booksach_tungay.Value >= monday
                                         && bs.thuvien_booksach_denngay.Value <= saturday
                                         select new
                                         {
                                             sl.booksach_chitiet_soluong,
                                         }).Count()
                          };

            grvList.DataSource = thongke;
            grvList.DataBind();
        }    
      else if(option == "Theo ngày")
        {
            var thongke = from tusach in db.tbThuVien_TuSaches
                          group tusach by tusach.thuvien_tusach_id into item
                          select new
                          {
                              item.Key,
                              tusach_name = (from b in db.tbThuVien_TuSaches where item.Key == b.thuvien_tusach_id select b).First().thuvien_tusach_name,

                              //tính số lượng theo yêu cầu theo data có từ tbBookSach, tbBookSach_ChiTiet theo từng tủ sách
                              //số lượng sách mượn quá hạn 
                              sl_quahan = (from sl in getBsct
                                           join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                           join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                           where item.Key == sach.thuvien_tusach_id
                                           && bs.status == 1
                                           && bs.thuvien_booksach_denngay.Value < DateTime.Now
                                           && bs.thuvien_booksach_tungay.Value >= tungay
                                           && bs.thuvien_booksach_denngay.Value <= denngay
                                           select new
                                           {
                                               sl.booksach_chitiet_soluong,
                                           }).Count(),
                              //số lượng sách mượn đã trả
                              sl_tra = (from sl in getBsct
                                        join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                        join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                        where item.Key == sach.thuvien_tusach_id
                                        && bs.status == 2
                                        && bs.thuvien_booksach_tungay.Value >= tungay
                                        && bs.thuvien_booksach_denngay.Value <= denngay
                                        select new
                                        {
                                            sl.booksach_chitiet_soluong,
                                        }).Count(),
                              //tổng số sách mượn 
                              sl_muon = (from sl in getBsct
                                         join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                         join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                         where item.Key == sach.thuvien_tusach_id
                                         && bs.thuvien_booksach_tungay.Value >= tungay
                                         && bs.thuvien_booksach_denngay.Value <= denngay
                                         select new
                                         {
                                             sl.booksach_chitiet_soluong,
                                         }).Count()
                          };

            grvList.DataSource = thongke;
            grvList.DataBind();
        }    
      else if(option == "Tổng")
        {
            var thongke = from tusach in db.tbThuVien_TuSaches
                          group tusach by tusach.thuvien_tusach_id into item
                          select new
                          {
                              item.Key,
                              tusach_name = (from b in db.tbThuVien_TuSaches where item.Key == b.thuvien_tusach_id select b).First().thuvien_tusach_name,

                              //tính số lượng theo yêu cầu theo data có từ tbBookSach, tbBookSach_ChiTiet theo từng tủ sách
                              //số lượng sách mượn quá hạn 
                              sl_quahan = (from sl in getBsct
                                           join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                           join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                           where item.Key == sach.thuvien_tusach_id
                                           && bs.status == 1
                                           && bs.thuvien_booksach_denngay.Value < DateTime.Now
                                           select new
                                           {
                                               sl.booksach_chitiet_soluong,
                                           }).Count(),
                              //số lượng sách mượn đã trả
                              sl_tra = (from sl in getBsct
                                        join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                        join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                        where item.Key == sach.thuvien_tusach_id
                                        && bs.status == 2
                                        select new
                                        {
                                            sl.booksach_chitiet_soluong,
                                        }).Count(),
                              //tổng số sách mượn 
                              sl_muon = (from sl in getBsct
                                         join bs in getBs on sl.thuvien_booksach_id equals bs.thuvien_booksach_id
                                         join sach in getSach on sl.thuvien_sach_id equals sach.thuvien_sach_id
                                         where item.Key == sach.thuvien_tusach_id
                                         select new
                                         {
                                             sl.booksach_chitiet_soluong,
                                         }).Count()
                          };

            grvList.DataSource = thongke;
            grvList.DataBind();
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ResetData();
        ddlThongKe.SelectedValue = "0";
    }
    
    protected void btnChon_Click(object sender, EventArgs e)
    {
        try
        {
            bl_TuNgayToiNgay.Visible = true;
            if (dteTuNgay.Value == "" || dteDenNgay.Value == "")
            {
                ResetData();
                alert.alert_Warning(Page, "Chưa nhập dữ liệu !", "");
            }
            //Bắt lỗi Từ ngày >= Đến ngày
            else if (Convert.ToDateTime(dteTuNgay.Value) >= Convert.ToDateTime(dteDenNgay.Value))
            {
                ResetData();
                alert.alert_Error(Page, "Dữ liệu ngày không hợp lệ !", "");
            }
            //load
            else
            {
                loadThongke("Theo ngày", Convert.ToDateTime(dteTuNgay.Value), Convert.ToDateTime(dteDenNgay.Value));
                txtContent.InnerText = "DỮ LIỆU TỪ " + Convert.ToDateTime(dteTuNgay.Value).ToString("dd/MM/yyyy") + " ĐẾN " + Convert.ToDateTime(dteDenNgay.Value).ToString("dd/MM/yyyy");
            }
        }
        catch(Exception)
        {
            alert.alert_Error(Page, "Lỗi !", "");
            bl_TuNgayToiNgay.Visible = false;
        }
    }

    protected void ddlThongKe_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlThongKe.SelectedValue == "3")
        {
            bl_TuNgayToiNgay.Visible = true;
            ResetData();
        }
        else
        {
            bl_TuNgayToiNgay.Visible = false;
            if (ddlThongKe.SelectedValue == "2")
            {
                ResetData();
                loadThongke("Trong tháng");
                txtContent.InnerText = "DỮ LIỆU THÁNG " + DateTime.Now.Month.ToString();
            }
            else if(ddlThongKe.SelectedValue == "1")
            {
                ResetData();
                loadThongke("Trong tuần");
                txtContent.InnerText = "DỮ LIỆU TUẦN ( " + monday.ToString("dd/MM/yyyy") + " ĐẾN " + saturday.ToString("dd/MM/yyyy") + " )";
            }
            else
            {
                ResetData(); 
            }
        }
    }
}