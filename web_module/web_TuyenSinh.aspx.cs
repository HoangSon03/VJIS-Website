using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_TuyenSinh : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpIntroduce.DataSource = from intro in db.tbIntroduceMenus
                                 where intro.intromenu_parent == 1
                                 select intro;
        rpIntroduce.DataBind();
        rpContent.DataSource = from con in db.tbIntroduceMenus
                               where con.intromenu_id == Convert.ToInt32(RouteData.Values["id"])
                               select con;
        rpContent.DataBind();
    }
}