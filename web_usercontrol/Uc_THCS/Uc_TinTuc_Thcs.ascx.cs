using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_THCS_Uc_TinTuc_Thcs : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpNews.DataSource = (from n in db.tbWebsite_News
                             where n.news_trunghoccoso == true
                             orderby n.news_datecreate descending
                             select new
                             {
                                 n.newcate_id,
                                 n.news_active,
                                 n.news_summary,
                                 n.news_content,
                                 n.news_datecreate,
                                 n.news_id,
                                 n.news_image,
                                 n.news_title,
                                 newscate_title = (from nc in db.tbWebsite_NewsCates
                                                   join nw in db.tbWebsite_News on nc.newscate_id equals nw.newcate_id
                                                   where nw.news_id == n.news_id
                                                   select nc).First().newscate_title
                             }).Take(4);
        rpNews.DataBind();
    }
}