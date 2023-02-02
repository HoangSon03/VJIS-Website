using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_BaiTap_web_DanhSachBaiTap : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpLienHe.DataSource = from lh in db.tbWebsite_LienHes
                              select new
                              {
                                  active = lh.lienhe_active == true ? "active" : "",
                                  lh.lh_classid2,
                                  lh.lienhe_classid,
                                  lh.lienhe_address,
                                  lh.lienhe_map,
                                  lh.lienhe_phone,
                                  lh.lienhe_title,
                                  lh.lienhe_summary,
                              };
        rpLienHe.DataBind();
        rpInformation.DataSource = from info in db.tbWebsite_LienHes
                                   select new
                                   {
                                       active = info.lienhe_active == true ? "active" : "",
                                       info.lh_classid2,
                                       info.lienhe_classid,
                                       info.lienhe_address,
                                       info.lienhe_map,
                                       info.lienhe_phone,
                                       info.lienhe_title,
                                       info.lienhe_summary,
                                   };
        rpInformation.DataBind();
    }
}