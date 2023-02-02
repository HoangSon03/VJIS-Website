using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_News
/// </summary>
public class cls_PhuHuynhVaHocSinh
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_PhuHuynhVaHocSinh()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Linq_Them(string phuhuynhvahocsinh_title, string phuhuynhvahocsinh_content,bool phuhuynhvahocsinh_active, int phuhuynhvahocsinhcate_id,string phuhuynhvahocsinhcate_link, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        var seodata = (from gr in db.tbWebsite_PhuHuynhVaHocSinhCates
                       where gr.phuhuynhvahocsinhcate_id == phuhuynhvahocsinhcate_id
                       select gr).First();

        tbWebsite_PhuHuynhVaHocSinh insert = new tbWebsite_PhuHuynhVaHocSinh();
        insert.phuhuynhvahocsinh_title = phuhuynhvahocsinh_title;
        insert.phuhuynhvahocsinh_content = phuhuynhvahocsinh_content;
        insert.phuhuynhvahocsinh_active = phuhuynhvahocsinh_active;
        insert.phuhuynhvahocsinh_createdate = DateTime.Now;
        insert.phuhuynhvahocsinhcate_id = phuhuynhvahocsinhcate_id;
        insert.phuhuynhvahocsinhcate_link = phuhuynhvahocsinhcate_link;

        if (SEO_KEYWORD != "")
        {
            insert.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            insert.meta_keywords = phuhuynhvahocsinh_title + ", " + cls_ToAscii.ToAscii(phuhuynhvahocsinh_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            insert.meta_title = SEO_TITLE;
        }
        else
        {
            insert.meta_title = phuhuynhvahocsinh_title + " | " + cls_ToAscii.ToAscii(phuhuynhvahocsinh_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            insert.meta_description = SEO_DEP;
        }
        else
        {
            insert.meta_description = phuhuynhvahocsinh_title + " | " + cls_ToAscii.ToAscii(phuhuynhvahocsinh_title.ToLower());
        }
        insert.meta_image = SEO_IMAGE;

        db.tbWebsite_PhuHuynhVaHocSinhs.InsertOnSubmit(insert);
        if (SEO_LINK != "")
        {
            insert.link_seo = SEO_LINK;
        }
        else
        {
            insert.link_seo =/* "http://www.vietnhatschool.edu.vn/" +*/ cls_ToAscii.ToAscii(seodata.phuhuynhvahocsinhcate_title.ToLower()) + "/" + phuhuynhvahocsinh_title.ToLower() + "-" + insert.phuhuynhvahocsinh_id;
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
    public bool Linq_Sua(int phuhuynhvahocsinh_id, string phuhuynhvahocsinh_title, string phuhuynhvahocsinh_content, bool phuhuynhvahocsinh_active, int phuhuynhvahocsinhcate_id, string phuhuynhvahocsinhcate_link, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        var seodata = (from gr in db.tbWebsite_PhuHuynhVaHocSinhCates
                       where gr.phuhuynhvahocsinhcate_id == phuhuynhvahocsinhcate_id
                       select gr).Single();
        tbWebsite_PhuHuynhVaHocSinh update = db.tbWebsite_PhuHuynhVaHocSinhs.Where(x => x.phuhuynhvahocsinh_id == phuhuynhvahocsinh_id).FirstOrDefault();
        update.phuhuynhvahocsinh_title = phuhuynhvahocsinh_title;
        update.phuhuynhvahocsinh_content = phuhuynhvahocsinh_content;
        update.phuhuynhvahocsinh_active = phuhuynhvahocsinh_active;
        update.phuhuynhvahocsinhcate_id = phuhuynhvahocsinhcate_id;
        update.phuhuynhvahocsinhcate_link = phuhuynhvahocsinhcate_link;
        update.phuhuynhvahocsinh_createdate = DateTime.Now;
        if (SEO_KEYWORD != "")
        {
            update.meta_keywords = SEO_KEYWORD;
        }
        else
        {
            update.meta_keywords = phuhuynhvahocsinh_title + ", " + cls_ToAscii.ToAscii(phuhuynhvahocsinh_title.ToLower());
        }
        if (SEO_TITLE != "")
        {
            update.meta_title = SEO_TITLE;
        }
        else
        {
            update.meta_title = phuhuynhvahocsinh_title + " | " + cls_ToAscii.ToAscii(phuhuynhvahocsinh_title.ToLower());
        }

        if (SEO_DEP != "")
        {
            update.meta_description = SEO_DEP;
        }
        else
        {
            update.meta_description = phuhuynhvahocsinh_title + " | " + cls_ToAscii.ToAscii(phuhuynhvahocsinh_title.ToLower());
        }
        update.meta_image = SEO_IMAGE;
        if (SEO_LINK != "")
        {
            update.link_seo = SEO_LINK;
        }
        else
        {
            update.link_seo = /*"http://www.vietnhatschool.edu.vn/" +*/ cls_ToAscii.ToAscii(seodata.phuhuynhvahocsinhcate_title.ToLower()) + "/" + phuhuynhvahocsinh_title.ToLower() + "-" + update.phuhuynhvahocsinh_id;
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