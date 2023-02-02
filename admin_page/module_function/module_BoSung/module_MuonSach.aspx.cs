using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_MuonSach : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    private int _id;
    cls_Alert alert = new cls_Alert();
    int xem;
    int vitri;
    protected void Page_Load(object sender, EventArgs e)
    {
        //tính ngày quá hạn
        DateTime toDay = DateTime.Now;
        var getdata = from bs in db.tbThuVien_BookSaches
                      select bs;
        foreach (var item in getdata)
        {

            DateTime day = Convert.ToDateTime(item.thuvien_booksach_denngay);
            TimeSpan interval = toDay.Subtract(day);
            int a = int.Parse(interval.Days.ToString());
            if (a > 0)
            {
                item.thuvien_booksach_quahan = a + " ngày";
            }
            db.SubmitChanges();
        }
        loadData();
        //updateData();
    }
    private void loadData()
    {
        var getData = from tb in db.tbThuVien_BookSaches
                      where tb.thuvien_booksach_denngay > DateTime.Now.Date && tb.status == 1
                      select new
                      {
                          tb.khachhang_name,
                          tb.thuvien_booksach_createdate,
                          tb.thuvien_booksach_tungay,
                          tb.thuvien_booksach_denngay,
                          tb.status,
                          tb.thuvien_booksach_id
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
    }
    protected void updateData()
    {
        var update = db.tbThuVien_BookSaches.Where(s => s.thuvien_booksach_denngay < DateTime.Now.Date).Select(s => s).FirstOrDefault();
        if (update != null)
        {
            update.status = 2;
            //update.thuvien_booksach_quahan = (update.thuvien_booksach_denngay - update.thuvien_booksach_tungay).ToString();
            db.SubmitChanges();
        }
    }


    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        List<object> selectedId = grvList.GetSelectedFieldValues(new string[] { "thuvien_booksach_id" });
        if (selectedId.Count <= 0 && selectedId.Count <= 0)
        {
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu để xem chi tiết", "");
        }
        else if (selectedId.Count == 1 && selectedId.Count == 0)
        {
            foreach (var item in selectedId)
            {
                _id = Convert.ToInt32(item);
            }
            Response.Redirect("admin-muon-sach-" + _id);
        }
        else if (selectedId.Count == 0 && selectedId.Count == 1)
        {
            foreach (var item1 in selectedId)
            {
                _id = Convert.ToInt32(item1);
            }
            Response.Redirect("admin-muon-sach-" + _id);
        }
        else
        {
            alert.alert_Warning(Page, "Bạn chỉ được chọn 1 dữ liệu để xem chi tiết", "");
        }

        Response.Redirect("/admin-muon-sach-chi-tiet");
    }

    protected void btnTraSach_Click(object sender, EventArgs e)
    {
        ;
    }
}