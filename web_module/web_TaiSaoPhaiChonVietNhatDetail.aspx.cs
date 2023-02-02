using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_TaiSaoPhaiChonVietNhatDetail : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //rpBaiViet.DataSource = from n in db.tbWebsite_TaiSaoChonVietNhats
        //                       select n;
        //rpBaiViet.DataBind();
        rpChiTiet.DataSource = from n in db.tbWebsite_TaiSaoChonVietNhats
                               where n.taisaochonvietnhat_id == Convert.ToInt32(RouteData.Values["id"])
                               select n;
        rpChiTiet.DataBind();
    }
}