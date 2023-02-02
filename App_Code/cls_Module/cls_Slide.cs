using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_Slide
/// </summary>
public class cls_Slide
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_Slide()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Them_slide( string image,int cate, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE, bool trangchu, bool trunghocpt, bool trunghoccs, bool tieuhoc, bool mamnon)
    {
        tbWebsite_Slide insert = new tbWebsite_Slide();
        insert.slide_active = true;
        insert.slide_image = image;
        insert.slidecate_id = cate;
        DateTime date = DateTime.Now;
        string format = date.ToString("dd/MM/yyyy");
        insert.slide_datecreate = Convert.ToDateTime(format);
        insert.slide_trangchu = trangchu;
        insert.slide_trunghocphothong = trunghocpt;
        insert.slide_trunghoccoso = trunghoccs;
        insert.slide_mamnon = mamnon;
        insert.slide_tieuhoc = tieuhoc;
        db.tbWebsite_Slides.InsertOnSubmit(insert);
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
    public bool Sua_slide(int slide_id, string image,int cate, string SEO_KEYWORD, string SEO_TITLE, string SEO_LINK, string SEO_DEP, string SEO_IMAGE, bool trangchu, bool trunghocpt, bool trunghoccs, bool tieuhoc, bool mamnon)
    {
        tbWebsite_Slide update = db.tbWebsite_Slides.Where(x => x.slide_id == slide_id).FirstOrDefault();
        update.slide_active = true;
        update.slidecate_id = cate;
        if (image != null)
            update.slide_image = image;
        //update.slidecate_id = slidecate;
        DateTime date = DateTime.Now;
        string format = date.ToString("dd/MM/yyyy");
        update.slide_datecreate = Convert.ToDateTime(format);
        update.slide_trangchu = trangchu;
        update.slide_trunghocphothong = trunghocpt;
        update.slide_trunghoccoso = trunghoccs;
        update.slide_mamnon = mamnon;
        update.slide_tieuhoc = tieuhoc;
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
    public bool Slide_SuaImage(int slide_id, string slide_image)
    {
        tbWebsite_Slide update = db.tbWebsite_Slides.Where(x => x.slide_id == slide_id).FirstOrDefault();
        update.slide_image = slide_image;
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
    public bool Slide_Xoa(int slide_id)
    {
        tbWebsite_Slide delete = db.tbWebsite_Slides.Where(x => x.slide_id == slide_id).FirstOrDefault();
        db.tbWebsite_Slides.DeleteOnSubmit(delete);
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