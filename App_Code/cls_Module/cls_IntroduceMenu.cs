using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_News
/// </summary>
public class cls_IntroduceMenu
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_IntroduceMenu()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Linq_Them(string intromenu_titledefault,string intromenu_title, string intromenu_summary, string intromenu_content,int cate,bool intromenu_active, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {

        tbIntroduceMenu insert = new tbIntroduceMenu();
        insert.intromenu_titledefault = intromenu_titledefault;
        insert.intromenu_title = intromenu_title;
        insert.intromenu_summary = intromenu_summary;
        insert.intromenu_content = intromenu_content;
        insert.intromenu_active = intromenu_active;
        insert.intromenucate_id = cate;
        if (SEO_KEYWORD != "")
        {
            insert.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            insert.meta_keywords = intromenu_title + ", " + cls_ToAscii.ToAscii(intromenu_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            insert.meta_title = SEO_TITLE;
        }
        else
        {
            insert.meta_title = intromenu_title + " | " + cls_ToAscii.ToAscii(intromenu_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            insert.meta_description = SEO_DEP;
        }
        else
        {
            insert.meta_description = intromenu_title + " | " + cls_ToAscii.ToAscii(intromenu_title.ToLower());
        }
        insert.meta_image = SEO_IMAGE;

        db.tbIntroduceMenus.InsertOnSubmit(insert);
        if (SEO_LINK != "")
        {
            insert.link_seo = SEO_LINK;
        }
        else
        {
            insert.link_seo = "http://www.vietnhatschool.edu.vn/" + cls_ToAscii.ToAscii(intromenu_title.ToLower())+ "-" + insert.intromenu_id;
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
    public bool Linq_Sua(int news_id, string intromenu_titledefault, string intromenu_title, string intromenu_summary, string intromenu_content, int cate, bool intromenu_active, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
       
        tbIntroduceMenu update = db.tbIntroduceMenus.Where(x => x.intromenu_id == news_id).FirstOrDefault();
        update.intromenu_titledefault = intromenu_titledefault;
        update.intromenu_title = intromenu_title;
        update.intromenu_summary = intromenu_summary;
        update.intromenu_content = intromenu_content;
        update.intromenucate_id = cate;
        update.intromenu_active = intromenu_active;
        if (SEO_KEYWORD != "")
        {
            update.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            update.meta_keywords = intromenu_title + ", " + cls_ToAscii.ToAscii(intromenu_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            update.meta_title = SEO_TITLE;
        }
        else
        {
            update.meta_title = intromenu_title + " | " + cls_ToAscii.ToAscii(intromenu_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            update.meta_description = SEO_DEP;
        }
        else
        {
            update.meta_description = intromenu_title + " | " + cls_ToAscii.ToAscii(intromenu_title.ToLower());
        }
        update.meta_image = SEO_IMAGE;
        if (SEO_LINK != "")
        {
            update.link_seo = SEO_LINK;
        }
        else
        {
            update.link_seo = "http://www.vietnhatschool.edu.vn/" + cls_ToAscii.ToAscii(intromenu_title.ToLower()) + "-" + update.intromenu_id;
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
    public bool Linq_Xoa(int news_id)
    {
        tbIntroduceMenu delete = db.tbIntroduceMenus.Where(x => x.intromenu_id == news_id).FirstOrDefault();
        db.tbIntroduceMenus.DeleteOnSubmit(delete);
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