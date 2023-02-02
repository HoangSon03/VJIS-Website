using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_THCS_Uc_TaiSaoChonVN_Thcs : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpAboutTHCS.DataSource = from ab in db.tbIntroduces
                                 where ab.intro_id == 5 && ab.school_id == 3
                                 select ab;
        rpAboutTHCS.DataBind();
        rpTaiSaoChonVN.DataSource = from ts in db.tbIntroduces
                                    where ts.intro_id == 6 && ts.school_id == 3
                                    select ts;
        rpTaiSaoChonVN.DataBind();
    }
}