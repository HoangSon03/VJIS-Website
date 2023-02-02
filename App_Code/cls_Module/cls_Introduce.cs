using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_Slide
/// </summary>
public class cls_Introduce
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_Introduce()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Them_Intro( string intro_title,string intro_summary,string intro_content, string intro_image, int school_id, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        var seodata = (from gr in db.tbWebsite_Schools
                       where gr.school_id == school_id
                       select gr).First();
        tbIntroduce insert = new tbIntroduce();
        insert.intro_image = intro_image;
        insert.intro_title = intro_title;
        insert.intro_summary = intro_summary;
        insert.intro_content = intro_content;
        insert.school_id = school_id;
        db.tbIntroduces.InsertOnSubmit(insert);
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
    public bool Sua_slide(int intro_id, string intro_title, string intro_summary, string intro_content, string intro_image,int school_id, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    {
        var seodata = (from gr in db.tbWebsite_Schools
                       where gr.school_id == school_id
                       select gr).Single();
        tbIntroduce update = db.tbIntroduces.Where(x => x.intro_id == intro_id).FirstOrDefault();
        if (intro_image != null)
            update.intro_image = intro_image;
        //update.slidecate_id = slidecate;
        update.intro_title = intro_title;
        update.intro_summary = intro_summary;
        update.intro_content = intro_content;
        update.school_id = school_id;
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
    public bool Intro_SuaImage(int intro_id, string intro_image)
    {
        tbIntroduce update = db.tbIntroduces.Where(x => x.intro_id == intro_id).FirstOrDefault();
        update.intro_image = intro_image;
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
    public bool Intro_Xoa(int intro_id)
    {
        tbIntroduce delete = db.tbIntroduces.Where(x => x.intro_id == intro_id).FirstOrDefault();
        db.tbIntroduces.DeleteOnSubmit(delete);
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
    //public bool Sua_Img(int img_id, string img_name)
    //{
    //    tbImageIntroduce update = db.tbImageIntroduces.Where(x => x.img_id == img_id).FirstOrDefault();
    //    update.img_name = img_name;
    //    try
    //    {
    //        db.SubmitChanges();
    //        return true;
    //    }
    //    catch
    //    {
    //        return false;
    //    }
    //}
}