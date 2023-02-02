using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_NewsCate
/// </summary>
public class cls_PhuHuynhHocSinhCate
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
	public cls_PhuHuynhHocSinhCate()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool Linq_Them(int phuhuynhvahocsinhcate_position, string phuhuynhvahocsinhcate_title, bool phuhuynhvahocsinhcate_active,int cate, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        var seodata = (from gr in db.tbWebsite_Menus
                       where gr.websitemenu_id == cate
                       select gr).First();

        tbWebsite_PhuHuynhVaHocSinhCate insert = new tbWebsite_PhuHuynhVaHocSinhCate();
        insert.phuhuynhvahocsinhcate_title = phuhuynhvahocsinhcate_title;
        insert.phuhuynhvahocsinhcate_active = phuhuynhvahocsinhcate_active;
        insert.phuhuynhvahocsinhcate_position = phuhuynhvahocsinhcate_position;
        insert.websitemenu_id = cate;
        if (SEO_KEYWORD != "")
        {
            insert.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            insert.meta_keywords = phuhuynhvahocsinhcate_title + ", " + cls_ToAscii.ToAscii(phuhuynhvahocsinhcate_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            insert.meta_title = SEO_TITLE;
        }
        else
        {
            insert.meta_title = phuhuynhvahocsinhcate_title + " | " + cls_ToAscii.ToAscii(phuhuynhvahocsinhcate_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            insert.meta_description = SEO_DEP;
        }
        else
        {
            insert.meta_description = phuhuynhvahocsinhcate_title + " | " + cls_ToAscii.ToAscii(phuhuynhvahocsinhcate_title.ToLower());
        }
        insert.meta_image = SEO_IMAGE;
        db.tbWebsite_PhuHuynhVaHocSinhCates.InsertOnSubmit(insert);
        if (SEO_LINK != "")
        {
            insert.link_seo = SEO_LINK;
        }
        else
        {
            insert.link_seo = /*"http://lang-da-non-nuoc.net/" +*/  cls_ToAscii.ToAscii(seodata.websitemenu_title.ToLower()) + "/" + phuhuynhvahocsinhcate_title.ToLower() + "-" + insert.phuhuynhvahocsinhcate_id;
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
    public bool Linq_Sua(int phuhuynhvahocsinhcate_id, int phuhuynhvahocsinhcate_position, string phuhuynhvahocsinhcate_title, bool phuhuynhvahocsinhcate_active,int cate, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        var seodata = (from gr in db.tbWebsite_Menus
                       where gr.websitemenu_id == cate
                       select gr).First();

        tbWebsite_PhuHuynhVaHocSinhCate update = db.tbWebsite_PhuHuynhVaHocSinhCates.Where(x => x.phuhuynhvahocsinhcate_id == phuhuynhvahocsinhcate_id).FirstOrDefault();
        update.phuhuynhvahocsinhcate_title = phuhuynhvahocsinhcate_title;
        update.phuhuynhvahocsinhcate_position = phuhuynhvahocsinhcate_position;
        update.phuhuynhvahocsinhcate_active = phuhuynhvahocsinhcate_active;
        update.websitemenu_id = cate;
        if (SEO_KEYWORD != "")
        {
            update.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            update.meta_keywords = phuhuynhvahocsinhcate_title + ", " + cls_ToAscii.ToAscii(phuhuynhvahocsinhcate_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            update.meta_title = SEO_TITLE;
        }
        else
        {
            update.meta_title = phuhuynhvahocsinhcate_title + " | " + cls_ToAscii.ToAscii(phuhuynhvahocsinhcate_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            update.meta_description = SEO_DEP;
        }
        else
        {
            update.meta_description = phuhuynhvahocsinhcate_title + " | " + cls_ToAscii.ToAscii(phuhuynhvahocsinhcate_title.ToLower());
        }
        update.meta_image = SEO_IMAGE;
        if (SEO_LINK != "")
        {
            update.link_seo = SEO_LINK;
        }
        else
        {
            update.link_seo =/* "http://lang-da-non-nuoc.net/" +*/cls_ToAscii.ToAscii(seodata.websitemenu_title.ToLower()) + "/" + phuhuynhvahocsinhcate_title.ToLower() + "-" + update.phuhuynhvahocsinhcate_id;
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
    public bool Linq_Xoa( int newscate_id)
    {
        tbWebsite_PhuHuynhVaHocSinhCate delete = db.tbWebsite_PhuHuynhVaHocSinhCates.Where(x => x.phuhuynhvahocsinhcate_id == newscate_id).FirstOrDefault();
        db.tbWebsite_PhuHuynhVaHocSinhCates.DeleteOnSubmit(delete);
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