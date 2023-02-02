using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_Details_SachQuaHan : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int _id;
    string image;
    protected void Page_Load(object sender, EventArgs e)
    {
        loadData();
    }
    private void loadData()
    {
        var getData = (from ct in db.tbThuVien_BookSach_ChiTiets
                       join s in db.tbThuVien_Saches on ct.thuvien_sach_id equals s.thuvien_sach_id
                       where ct.thuvien_booksach_id == Convert.ToInt32(RouteData.Values["id"].ToString())
                       select new
                       {
                           ct.booksach_chitiet_soluong,
                           s.thuvien_sach_name,
                       }).FirstOrDefault();
        txtTenSach.Text = getData.thuvien_sach_name;
        txtSoLuong.Text = (getData.booksach_chitiet_soluong).ToString();
    }
}