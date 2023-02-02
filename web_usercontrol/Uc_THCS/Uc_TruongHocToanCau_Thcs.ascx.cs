using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_THCS_Uc_TruongHocToanCau_Thcs : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpSlideNoiBat.DataSource = (from sl in db.tbWebsite_Slides
                                    where sl.slidecate_id == 2 && sl.slide_trunghoccoso == true
                                    select sl).Take(3);
        rpSlideNoiBat.DataBind();
        rpNoiBat.DataSource = from nb in db.tbIntroduces
                              where nb.intro_id == 7
                              select nb;
        rpNoiBat.DataBind();
    }
}