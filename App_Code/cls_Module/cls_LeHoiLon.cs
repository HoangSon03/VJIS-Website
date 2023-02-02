using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_Slide
/// </summary>
public class cls_LeHoiLon
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_LeHoiLon()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Them_LeHoiLon( string title, string video, string content, string description)
    {
        tbWebsite_CacLeHoi insert = new tbWebsite_CacLeHoi();
        insert.lehoi_title = title;
        insert.lehoi_video = video;
        insert.lehoi_content = content;
        insert.lehoi_description = description;
        db.tbWebsite_CacLeHois.InsertOnSubmit(insert);
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
    public bool Sua_LeHoiLon(int slide_id, string title, string video, string content, string description)
    {
        tbWebsite_CacLeHoi update = db.tbWebsite_CacLeHois.Where(x => x.lehoi_id == slide_id).FirstOrDefault();
        update.lehoi_title = title;
        update.lehoi_video = video;
        update.lehoi_content = content;
        update.lehoi_description = description;
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
        tbWebsite_CacLeHoi delete = db.tbWebsite_CacLeHois.Where(x => x.lehoi_id == slide_id).FirstOrDefault();
        db.tbWebsite_CacLeHois.DeleteOnSubmit(delete);
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