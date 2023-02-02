using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_SachQuaHan : System.Web.UI.Page
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
        var getData = from sqh in db.tbThuVien_BookSaches
                      where sqh.thuvien_booksach_denngay.Value < DateTime.Now
                      && sqh.status == 1
                      select sqh;

        grvList.DataSource = getData;
        grvList.DataBind();
    }


    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_booksach_id" }));
        Response.Redirect("/admin-chi-tiet-qua-han-" + _id);
    }

}