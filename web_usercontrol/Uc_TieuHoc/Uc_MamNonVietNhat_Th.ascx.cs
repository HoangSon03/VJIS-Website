using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_MamNon_Uc_MamNonVietNhat_Th : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpIntroduce_Th.DataSource = from intro in db.tbIntroduces
                                    where intro.school_id == 4 && intro.intro_id == 1
                                    select intro;
        rpIntroduce_Th.DataBind();
    }
}