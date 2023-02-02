using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_TraSach : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int _id;
    string image;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["_id"] = 0;
        }
        loadData();
    }
    private void loadData()
    {
        var getData = from sachtra in db.tbThuVien_BookSaches
                      where sachtra.status == 2
                      select new
                      {
                          sachtra.thuvien_booksach_id,
                          sachtra.thuvien_booksach_tungay,
                          sachtra.thuvien_booksach_denngay,
                          sachtra.khachhang_name,
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
    }

    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_booksach_id" }));
        Response.Redirect("/admin-chi-tiet-tra-sach-" + _id);
    }

}