using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_News : System.Web.UI.Page
{
    public string title;
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpCateNews.DataSource = from cate in db.tbWebsite_NewsCates
                                where cate.newscate_active==true
                                select cate;
        rpCateNews.DataBind();
        var newcate = from nc in db.tbWebsite_NewsCates
                      where nc.newscate_id == Convert.ToInt32(RouteData.Values["id"])
                      select nc;
        rpNewsCate.DataSource = newcate;
        rpNewsCate.DataBind();

        title = newcate.First().newscate_title;
    }

    protected void rpNewsCate_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpNews = e.Item.FindControl("rpNews") as Repeater;
        int newscate_id = int.Parse(DataBinder.Eval(e.Item.DataItem, "newscate_id").ToString());
        var news = from n in db.tbWebsite_News
                   where n.newcate_id == newscate_id 
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
                   };
        rpNews.DataSource = news;
        rpNews.DataBind();
    }
}