using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_THPT_Uc_Slide_Thpt : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpslide.DataSource = (from sl in db.tbWebsite_Slides
                              where sl.slide_trunghocphothong== true && sl.slidecate_id==1
                              orderby sl.slide_datecreate descending
                              select sl).Take(3);
        rpslide.DataBind();
    }
}