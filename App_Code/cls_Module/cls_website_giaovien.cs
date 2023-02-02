using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_Slide
/// </summary>
public class cls_website_giaovien
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_website_giaovien()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Them_giaovien( string name, string title, string image, string content)
    {
        tbWebSite_GiaoVien insert = new tbWebSite_GiaoVien();
        insert.giaovien_image = image;
        insert.giaovien_name = name;
        insert.giaovien_title = title;
        insert.giaovien_content = content;
        db.tbWebSite_GiaoViens.InsertOnSubmit(insert);
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
    public bool Sua_giaovien(int slide_id, string name, string title, string image, string content)
    {
        tbWebSite_GiaoVien update = db.tbWebSite_GiaoViens.Where(x => x.giaovien_id == slide_id).FirstOrDefault();
        update.giaovien_image = image;
        update.giaovien_name = name;
        update.giaovien_title = title;
        update.giaovien_content = content;
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
    public bool Xoa_giaovien(int slide_id)
    {
        tbWebSite_GiaoVien del = db.tbWebSite_GiaoViens.Where(x => x.giaovien_id == slide_id).FirstOrDefault();
        db.tbWebSite_GiaoViens.DeleteOnSubmit(del);
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