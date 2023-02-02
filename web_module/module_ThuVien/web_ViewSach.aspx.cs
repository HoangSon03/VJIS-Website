using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_ThuVien_web_ViewSach : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["HocSinh"] != null)
        {
            txtUserName.Value = Request.Cookies["HocSinh"].Value;
        }
        //get tủ sách thư viện
        var getTuSach = from ts in db.tbThuVien_TuSaches
                        select ts;
        rpTusach.DataSource = getTuSach;
        rpTusach.DataBind();
        rpTuSach2.DataSource = getTuSach;
        rpTuSach2.DataBind();

        rpLoaiSach.DataSource = getTuSach;
        rpLoaiSach.DataBind();
    }
    protected void rpLoaiSach_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpSach = e.Item.FindControl("rpSach") as Repeater;
        int thuvien_tusach_id = int.Parse(DataBinder.Eval(e.Item.DataItem, "thuvien_tusach_id").ToString());
        var getSach = from s in db.tbThuVien_Saches
                      join ts in db.tbThuVien_TuSaches on s.thuvien_tusach_id equals ts.thuvien_tusach_id
                      where ts.thuvien_tusach_id == thuvien_tusach_id
                      select new
                      {
                          s.thuvien_sach_id,
                          s.thuvien_tusach_id,
                          s.thuvien_sach_name,
                          s.thuvien_sach_image
                      };
        rpSach.DataSource = getSach;
        rpSach.DataBind();
    }

    protected void btnSearch_ServerClick(object sender, EventArgs e)
    {
        string str = txt_Search.Value;
        var getData = from s in db.tbThuVien_Saches
                      where s.thuvien_sach_name.Contains(str)
                      select s;


        System.Web.UI.WebControls.Repeater rpSach = (System.Web.UI.WebControls.Repeater)rpLoaiSach.FindControl("rpSach") as Repeater ;
        rpSach.DataSource = getData;
        rpSach.DataBind();
        alert.alert_Warning(Page, " " + str, "");
    }
}