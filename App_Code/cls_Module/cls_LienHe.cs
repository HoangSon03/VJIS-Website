using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_Slide
/// </summary>
public class cls_LienHe
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_LienHe()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    //public bool Them_LienHe( string lienhe_title,string lienhe_summary, string lienhe_phone, string lienhe_address, int school_id, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE)
    //{
    //    var seodata = (from gr in db.tbWebsite_Schools
    //                   where gr.school_id == school_id
    //                   select gr).First();
    //    tbIntroduce insert = new tbIntroduce();
    //    insert.intro_image = intro_image;
    //    insert.intro_title = intro_title;
    //    insert.intro_summary = intro_summary;
    //    insert.intro_content = intro_content;
    //    insert.school_id = school_id;
    //    db.tbIntroduces.InsertOnSubmit(insert);
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
    public bool Sua_LienHe(int lienhe_id, string lienhe_title, string lienhe_summary, string lienhe_phone, string lienhe_address)
    {
        var seodata = (from gr in db.tbWebsite_LienHes
                       where gr.lienhe_id == lienhe_id
                       select gr).Single();
        tbWebsite_LienHe update = db.tbWebsite_LienHes.Where(x => x.lienhe_id == lienhe_id).FirstOrDefault();
       
        update.lienhe_title = lienhe_title;
        update.lienhe_summary = lienhe_summary;
        update.lienhe_phone = lienhe_phone;
        update.lienhe_address = lienhe_address;
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
    //public bool Intro_SuaImage(int intro_id, string intro_image)
    //{
    //    tbIntroduce update = db.tbIntroduces.Where(x => x.intro_id == intro_id).FirstOrDefault();
    //    update.intro_image = intro_image;
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
    //public bool Intro_Xoa(int intro_id)
    //{
    //    tbIntroduce delete = db.tbIntroduces.Where(x => x.intro_id == intro_id).FirstOrDefault();
    //    db.tbIntroduces.DeleteOnSubmit(delete);
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