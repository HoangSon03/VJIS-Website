using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_About : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public string title, title1;
    protected void Page_Load(object sender, EventArgs e)
    {

        var content = from con in db.tbWebsite_Submenus
                      join menu in db.tbWebsite_Menus on con.websitemenu_id equals menu.websitemenu_id
                      where con.websitesubmenu_id == Convert.ToInt32(RouteData.Values["id"])
                      select new {
                          con.websitemenu_id,
                          con.websitesubmenu_id,
                          con.websitesubmenu_content,
                          con.websitesubmenu_title,
                          con.websitesubmenu_createdate,
                          menu.websitemenu_title,
                      };
        var submenu_id = from intro in db.tbWebsite_Menus
                         join m in db.tbWebsite_Submenus on intro.websitemenu_id equals m.websitemenu_id
                                 where m.websitemenu_id == content.Single().websitemenu_id && m.websitesubmenu_active==true
                                 orderby m.websitesubmenu_position ascending
                         select new {
                                     m.websitesubmenu_content,
                                     m.websitesubmenu_title,
                                     intro.websitemenu_title,
                                     intro.websitemenu_id,
                                     m.websitesubmenu_id,
                                 };
        title = content.Single().websitemenu_title;
        title1 = content.Single().websitesubmenu_title;
        rpIntroduce.DataSource = submenu_id;
        rpIntroduce.DataBind();
      
        rpContent.DataSource = content;
        rpContent.DataBind();
        rpTinlienquan.DataSource = submenu_id;
        rpTinlienquan.DataBind();
    }
}