using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_LeHoiLon_web_LeHoiAmNhac : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        //rpNewscate.DataSource = from intro in db.tbWebsite_NewsCates
        //                        where intro.newscate_active == true
        //                        select intro;
        //rpNewscate.DataBind();
        rpLeHoi.DataSource = from n in db.tbWebsite_CacLeHois
                               where n.lehoi_id == 3
                               select n;
        rpLeHoi.DataBind();
    }
}