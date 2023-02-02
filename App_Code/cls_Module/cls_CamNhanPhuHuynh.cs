using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_CamNhanPhuHuynh
/// </summary>
public class cls_CamNhanPhuHuynh
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_CamNhanPhuHuynh()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Them(string name, string image, string content)
    {
        tbWebsite_CamNhanPhuHuynh insert = new tbWebsite_CamNhanPhuHuynh();
        insert.camnhan_namephuhuynh = name;
        insert.camnhan_image = image;
        insert.camnhan_content = content;
        db.tbWebsite_CamNhanPhuHuynhs.InsertOnSubmit(insert);
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
    public bool Sua(int camnhan_id, string name, string image, string content)
    {
        tbWebsite_CamNhanPhuHuynh update = db.tbWebsite_CamNhanPhuHuynhs.Where(x => x.camnhan_id == camnhan_id).FirstOrDefault();
        update.camnhan_namephuhuynh = name;
        update.camnhan_image = image;
        update.camnhan_content = content;
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

    public bool Xoa(int camnhan_id)
    {
        tbWebsite_CamNhanPhuHuynh delete = db.tbWebsite_CamNhanPhuHuynhs.Where(x => x.camnhan_id == camnhan_id).FirstOrDefault();
        db.tbWebsite_CamNhanPhuHuynhs.DeleteOnSubmit(delete);
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