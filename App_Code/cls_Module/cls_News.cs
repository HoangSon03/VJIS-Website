using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_News
/// </summary>
public class cls_News
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_News()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Linq_Them(string news_title, string news_image, string ngaydang, string news_summary, string news_content, int newscate_id, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE, bool trangchu, bool trunghocpt, bool trunghoccs, bool tieuhoc, bool mamnon)
    {
        var seodata = (from gr in db.tbWebsite_NewsCates
                       where gr.newscate_id == newscate_id
                       select gr).First();

        tbWebsite_New insert = new tbWebsite_New();
        insert.news_title = news_title;
        insert.news_image = news_image;
        insert.news_summary = news_summary;
        insert.news_content = news_content;
        insert.news_datecreate = Convert.ToDateTime(ngaydang);
        insert.newcate_id = newscate_id;
        insert.news_trangchu = trangchu;
        insert.news_trunghocphothong = trunghocpt;
        insert.news_trunghoccoso = trunghoccs;
        insert.news_mamnon = mamnon;
        insert.news_tieuhoc = tieuhoc;
        if (SEO_KEYWORD != "")
        {
            insert.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            insert.meta_keywords = news_title + ", " + cls_ToAscii.ToAscii(news_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            insert.meta_title = SEO_TITLE;
        }
        else
        {
            insert.meta_title = news_title + " | " + cls_ToAscii.ToAscii(news_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            insert.meta_description = SEO_DEP;
        }
        else
        {
            insert.meta_description = news_title + " | " + cls_ToAscii.ToAscii(news_title.ToLower());
        }
        insert.meta_image = SEO_IMAGE;

        db.tbWebsite_News.InsertOnSubmit(insert);
        if (SEO_LINK != "")
        {
            insert.link_seo = SEO_LINK;
        }
        else
        {
            insert.link_seo = "http://www.vietnhatschool.edu.vn/" + cls_ToAscii.ToAscii(seodata.newscate_title.ToLower()) + "/" + news_title.ToLower() + "-" + insert.news_id;
        }
        try
        {
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
    public bool Linq_Sua(int news_id, string news_title, string news_image, string ngaydang, string news_summary, string news_content, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE, bool trangchu, bool trunghocpt, bool trunghoccs, bool tieuhoc, bool mamnon)
    {
        // int newscate_id,
        //var seodata = (from gr in db.tbWebsite_NewsCates
        //               where gr.newscate_id == newscate_id
        //               select gr).Single();
        tbWebsite_New update = db.tbWebsite_News.Where(x => x.news_id == news_id).FirstOrDefault();
        update.news_title = news_title;
        update.news_image = news_image;
        update.news_datecreate = Convert.ToDateTime(ngaydang);
        update.news_summary = news_summary;
        update.news_content = news_content;
       // update.newcate_id = newscate_id;
        update.news_trangchu = trangchu;
        update.news_trunghocphothong = trunghocpt;
        update.news_trunghoccoso = trunghoccs;
        update.news_mamnon = mamnon;
        update.news_tieuhoc = tieuhoc;
        if (SEO_KEYWORD != "")
        {
            update.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            update.meta_keywords = news_title + ", " + cls_ToAscii.ToAscii(news_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            update.meta_title = SEO_TITLE;
        }
        else
        {
            update.meta_title = news_title + " | " + cls_ToAscii.ToAscii(news_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            update.meta_description = SEO_DEP;
        }
        else
        {
            update.meta_description = news_title + " | " + cls_ToAscii.ToAscii(news_title.ToLower());
        }
        update.meta_image = SEO_IMAGE;
        if (SEO_LINK != "")
        {
            update.link_seo = SEO_LINK;
        }
        //else
        //{
        //    update.link_seo = "http://www.vietnhatschool.edu.vn/" + cls_ToAscii.ToAscii(seodata.newscate_title.ToLower()) + "/" + news_title.ToLower() + "-" + update.news_id;
        //}
        try
        {
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
    public bool Linq_Xoa(int news_id)
    {
        tbWebsite_New delete = db.tbWebsite_News.Where(x => x.news_id == news_id).FirstOrDefault();
        db.tbWebsite_News.DeleteOnSubmit(delete);
        try
        {
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
}