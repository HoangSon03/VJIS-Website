using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_ThuVien_web_DanhSachSanPham : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        // tủ sách
        //rpParent.DataSource = (from ts in db.tbThuVien_TuSaches select ts);
        //rpParent.DataBind();
        //rphotdeal.DataSource = (from s in db.tbThuVien_Saches select s).Take(10);
        //rphotdeal.DataBind();
    }
    protected void rpParent_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpSanPham = e.Item.FindControl("rpSanPham") as Repeater;
        int prgID = int.Parse(DataBinder.Eval(e.Item.DataItem, "thuvien_tusach_id").ToString());
        var getData = (from d in db.tbThuVien_Saches where d.thuvien_tusach_id == prgID select d).Take(8);
        rpSanPham.DataSource = getData;
        rpSanPham.DataBind();
    }
}