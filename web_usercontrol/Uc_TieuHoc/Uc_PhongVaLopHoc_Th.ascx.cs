using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_MamNon_Uc_PhongVaLopHoc_Th : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpNews.DataSource = (from n in db.tbWebsite_News
                             where n.news_tieuhoc == true
                             select n).Take(4);
        rpNews.DataBind();
    }
}