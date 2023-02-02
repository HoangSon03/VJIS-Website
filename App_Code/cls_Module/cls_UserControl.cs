using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_Slide
/// </summary>
public class cls_UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_UserControl()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Them_UserControl( string uc_name,string uc_link, int usercontrolcate_id, int usercontrol_position, string usercontrol_linkregister)
    {
        var seodata = (from gr in db.tbUserControlCates
                       where gr.usercontrolcate_id == usercontrolcate_id
                       select gr).Single();
        tbUserControl insert = new tbUserControl();
        insert.usercontrol_name = uc_name;
        insert.usercontrol_link = uc_link;
        insert.usercontrol_linkregister = usercontrol_linkregister;
        insert.usercontrol_position = usercontrol_position;
        insert.usercontrol_hiden = false;
        insert.usercontrolcate_id = usercontrolcate_id;
        db.tbUserControls.InsertOnSubmit(insert);
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
    public bool Sua_UC(int uc_id, string uc_name, string uc_link, int usercontrolcate_id,int usercontrol_position,string usercontrol_linkregister)
    {
        var seodata = (from gr in db.tbUserControlCates
                       where gr.usercontrolcate_id == usercontrolcate_id
                       select gr).Single();
        tbUserControl update = db.tbUserControls.Where(x => x.usercontrol_id == uc_id).FirstOrDefault();
        //if (image != null)
        //    update.slide_image = image;
        ////update.slidecate_id = slidecate;
        update.usercontrol_linkregister = usercontrol_linkregister;
        update.usercontrol_position = usercontrol_position;
        update.usercontrol_name = uc_name;
        update.usercontrol_link = uc_link;
        update.usercontrolcate_id = usercontrolcate_id;
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
    public bool UC_Xoa(int uc_id)
    {
        tbUserControl delete = db.tbUserControls.Where(x => x.usercontrol_id == uc_id).FirstOrDefault();
        db.tbUserControls.DeleteOnSubmit(delete);
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