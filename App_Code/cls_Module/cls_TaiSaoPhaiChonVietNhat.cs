using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_Slide
/// </summary>
public class cls_TaiSaoPhaiChonVietNhat
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_TaiSaoPhaiChonVietNhat()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Them_TaiSaoChonVietNhat( string image,int cate,string mota, string content)
    {
        tbWebsite_TaiSaoChonVietNhat insert = new tbWebsite_TaiSaoChonVietNhat();
        insert.taisaochonvietnhat_image = image;
        insert.taisaochonvietnhat_loai = cate;
        insert.taisaochonvietnhat_description = mota;
        insert.taisaochonvietnhat_content = content;
        db.tbWebsite_TaiSaoChonVietNhats.InsertOnSubmit(insert);
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
    public bool Sua_TaiSaoChonVietNhat(int slide_id, string image,int cate,string mota, string content)
    {
        tbWebsite_TaiSaoChonVietNhat update = db.tbWebsite_TaiSaoChonVietNhats.Where(x => x.taisaochonvietnhat_id == slide_id).FirstOrDefault();
        update.taisaochonvietnhat_loai = cate;
        update.taisaochonvietnhat_description = mota;
        update.taisaochonvietnhat_content = content;
        if (image != null)
            update.taisaochonvietnhat_image = image;
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
        tbWebsite_TaiSaoChonVietNhat delete = db.tbWebsite_TaiSaoChonVietNhats.Where(x => x.taisaochonvietnhat_id == slide_id).FirstOrDefault();
        db.tbWebsite_TaiSaoChonVietNhats.DeleteOnSubmit(delete);
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