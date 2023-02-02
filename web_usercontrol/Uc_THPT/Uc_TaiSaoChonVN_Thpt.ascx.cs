using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_THPT_Uc_TaiSaoChonVN_Thpt : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpAboutTHCS.DataSource = from ab in db.tbIntroduces
                                 where ab.intro_id == 10 && ab.school_id == 2
                                 select ab;
        rpAboutTHCS.DataBind();
        rpTaiSaoChonVN.DataSource = from ts in db.tbIntroduces
                                    where ts.intro_id == 11 && ts.school_id == 2
                                    select ts;
        rpTaiSaoChonVN.DataBind();
    }
}