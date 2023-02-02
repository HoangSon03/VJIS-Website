using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_News
/// </summary>
public class cls_Website_Submenu

{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_Website_Submenu()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Linq_Them(string websitesubmenu_title, string websitesubmenu_content, DateTime websitesubmenu_createdate, int websitesubmenu_position, int cate,bool websitesubmenu_active, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        var seodata = (from gr in db.tbWebsite_Menus
                       where gr.websitemenu_id == cate
                       select gr).First();

        tbWebsite_Submenu insert = new tbWebsite_Submenu();
        insert.websitesubmenu_title = websitesubmenu_title;
        insert.websitesubmenu_content = websitesubmenu_content;
        insert.websitesubmenu_createdate = DateTime.Now;
        insert.websitesubmenu_position = websitesubmenu_position;
        insert.websitesubmenu_active = websitesubmenu_active;
        insert.websitemenu_id = cate;
        if (SEO_KEYWORD != "")
        {
            insert.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            insert.meta_keywords = websitesubmenu_title + ", " + cls_ToAscii.ToAscii(websitesubmenu_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            insert.meta_title = SEO_TITLE;
        }
        else
        {
            insert.meta_title = websitesubmenu_title + " | " + cls_ToAscii.ToAscii(websitesubmenu_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            insert.meta_description = SEO_DEP;
        }
        else
        {
            insert.meta_description = websitesubmenu_title + " | " + cls_ToAscii.ToAscii(websitesubmenu_title.ToLower());
        }
        insert.meta_image = SEO_IMAGE;

        db.tbWebsite_Submenus.InsertOnSubmit(insert);
        if (SEO_LINK != "")
        {
            insert.link_seo = SEO_LINK;
        }
        else
        {
            insert.link_seo = "http://www.vietnhatschool.edu.vn/" + cls_ToAscii.ToAscii(seodata.websitemenu_title.ToLower()) + "/" + websitesubmenu_title.ToLower() + "-" + insert.websitemenu_id;
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
    public bool Linq_Sua(int news_id, string websitesubmenu_title, string websitesubmenu_content, DateTime websitesubmenu_createdate, int websitesubmenu_position, int cate, bool websitesubmenu_active, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        var seodata = (from gr in db.tbWebsite_Menus
                       where gr.websitemenu_id == cate
                       select gr).First();

        tbWebsite_Submenu update = db.tbWebsite_Submenus.Where(x => x.websitesubmenu_id == news_id).FirstOrDefault();
        update.websitesubmenu_title = websitesubmenu_title;
        update.websitesubmenu_content = websitesubmenu_content;
        update.websitesubmenu_createdate = DateTime.Now;
        update.websitesubmenu_active = websitesubmenu_active;
        update.websitemenu_id = cate;
        update.websitesubmenu_position = websitesubmenu_position;
        if (SEO_KEYWORD != "")
        {
            update.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            update.meta_keywords = websitesubmenu_title + ", " + cls_ToAscii.ToAscii(websitesubmenu_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            update.meta_title = SEO_TITLE;
        }
        else
        {
            update.meta_title = websitesubmenu_title + " | " + cls_ToAscii.ToAscii(websitesubmenu_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            update.meta_description = SEO_DEP;
        }
        else
        {
            update.meta_description = websitesubmenu_title + " | " + cls_ToAscii.ToAscii(websitesubmenu_title.ToLower());
        }
        update.meta_image = SEO_IMAGE;
        if (SEO_LINK != "")
        {
            update.link_seo = SEO_LINK;
        }
        else
        {
            update.link_seo = "http://www.vietnhatschool.edu.vn/" + cls_ToAscii.ToAscii(seodata.websitemenu_title.ToLower()) + "/" + websitesubmenu_title.ToLower() + "-" + update.websitesubmenu_id;
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
    public bool Linq_Xoa(int websitesubmenu_id)
    {
        tbWebsite_Submenu delete = db.tbWebsite_Submenus.Where(x => x.websitesubmenu_id == websitesubmenu_id).FirstOrDefault();
        db.tbWebsite_Submenus.DeleteOnSubmit(delete);
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