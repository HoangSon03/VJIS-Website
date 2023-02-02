using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_NewsCate
/// </summary>
public class cls_WebsiteMenu
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
	public cls_WebsiteMenu()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool Linq_Them(int websitemenu_position, string websitemenu_title, bool websitemenu_active, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        tbWebsite_Menu insert = new tbWebsite_Menu();
        insert.websitemenu_title = websitemenu_title;
        insert.websitemenu_active = websitemenu_active;
        insert.websitemenu_position = websitemenu_position;
        if (SEO_KEYWORD != "")
        {
            insert.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            insert.meta_keywords = websitemenu_title + ", " + cls_ToAscii.ToAscii(websitemenu_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            insert.meta_title = SEO_TITLE;
        }
        else
        {
            insert.meta_title = websitemenu_title + " | " + cls_ToAscii.ToAscii(websitemenu_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            insert.meta_description = SEO_DEP;
        }
        else
        {
            insert.meta_description = websitemenu_title + " | " + cls_ToAscii.ToAscii(websitemenu_title.ToLower());
        }
        insert.meta_image = SEO_IMAGE;
        db.tbWebsite_Menus.InsertOnSubmit(insert);
        if (SEO_LINK != "")
        {
            insert.link_seo = SEO_LINK;
        }
        else
        {
            insert.link_seo = "http://www.vietnhatschool.edu.vn/" + cls_ToAscii.ToAscii(websitemenu_title.ToLower()) + "-" + insert.websitemenu_id;
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
    public bool Linq_Sua(int websitemenu_id, int websitemenu_position, string websitemenu_title, bool websitemenu_active, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        tbWebsite_Menu update = db.tbWebsite_Menus.Where(x => x.websitemenu_id == websitemenu_id).FirstOrDefault();
        update.websitemenu_title = websitemenu_title;
        update.websitemenu_position = websitemenu_position;
        update.websitemenu_active= websitemenu_active;
        if (SEO_KEYWORD != "")
        {
            update.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            update.meta_keywords = websitemenu_title + ", " + cls_ToAscii.ToAscii(websitemenu_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            update.meta_title = SEO_TITLE;
        }
        else
        {
            update.meta_title = websitemenu_title + " | " + cls_ToAscii.ToAscii(websitemenu_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            update.meta_description = SEO_DEP;
        }
        else
        {
            update.meta_description = websitemenu_title + " | " + cls_ToAscii.ToAscii(websitemenu_title.ToLower());
        }
        update.meta_image = SEO_IMAGE;
        if (SEO_LINK != "")
        {
            update.link_seo = SEO_LINK;
        }
        else
        {
            update.link_seo = "http://www.vietnhatschool.edu.vn/" + cls_ToAscii.ToAscii(websitemenu_title.ToLower()) + "-" + update.websitemenu_id;
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
    public bool Linq_Xoa( int websitemenu_id)
    {
        tbWebsite_Menu delete = db.tbWebsite_Menus.Where(x => x.websitemenu_id == websitemenu_id).FirstOrDefault();
        db.tbWebsite_Menus.DeleteOnSubmit(delete);
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