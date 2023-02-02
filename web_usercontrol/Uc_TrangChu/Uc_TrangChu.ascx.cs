using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_TrangChu : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        //// vao bang block
        //var block = from bl in db.tbUserControls
        //            join tr in db.tbWebsite_Schools on bl.school_id equals tr.school_id
        //            where bl.school_id == 1
        //            select bl;
        //// kiem tra xe, block ni bi khoa ko?
        //if (block.First().uc_active == true)
        //{
        //    block_trangchu.Visible = true;
        //}
    }
}