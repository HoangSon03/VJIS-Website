using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_MamNon_Uc_PhongVaLopHoc_Mn : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpNews.DataSource = (from n in db.tbWebsite_News
                             join nc in db.tbWebsite_NewsCates on n.newcate_id equals nc.newscate_id
                             where n.news_mamnon == true
                             select new
                             {
                                 n.news_active,
                                 n.news_id,
                                 n.news_title,
                                 n.news_image,
                                 n.news_datecreate,
                                 n.news_summary,
                                 n.news_content,
                                 nc.newscate_title,
                                 nc.newscate_id,

                             }).Take(4);
        rpNews.DataBind();
    }
}