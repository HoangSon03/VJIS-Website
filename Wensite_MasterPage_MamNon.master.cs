using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Wensite_MasterPage2 : System.Web.UI.MasterPage
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    var getDataMenu = from mn in db.tbWebsite_Submenus
    //                      where mn.websitemenu_id == 1
    //                      select new
    //                      {
    //                          mn.websitesubmenu_title,
    //                          mn.websitemenu_id
    //                      };
    //    rpGioiThieu.DataSource = getDataMenu;
    //    rpGioiThieu.DataBind();
    //    getTinTuc();
    //}
    private void getTinTuc()
    {
        var getDataMenu = from mn in db.tbWebsite_NewsCates
                          select new
                          {
                              mn.newscate_title,
                              mn.newscate_id
                          };
        rpTinTuc.DataSource = getDataMenu;
        rpTinTuc.DataBind();
    }
}
