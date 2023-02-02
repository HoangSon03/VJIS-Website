using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_NewsCate
/// </summary>
public class cls_TuSach
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
	public cls_TuSach()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool Linq_Them( string thuvien_tusach_name)
    {
        tbThuVien_TuSach insert = new tbThuVien_TuSach();
        insert.thuvien_tusach_name = thuvien_tusach_name;
        try
        {
            db.tbThuVien_TuSaches.InsertOnSubmit(insert);
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
    public bool Linq_Sua(int thuvien_tusach_id,  string thuvien_tusach_name)
    {
        tbThuVien_TuSach update = db.tbThuVien_TuSaches.Where(x => x.thuvien_tusach_id == thuvien_tusach_id).FirstOrDefault();
        update.thuvien_tusach_name = thuvien_tusach_name;
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
    public bool Linq_Xoa( int thuvien_tusach_id)
    {
        tbThuVien_TuSach delete = db.tbThuVien_TuSaches.Where(x => x.thuvien_tusach_id == thuvien_tusach_id).FirstOrDefault();
        db.tbThuVien_TuSaches.DeleteOnSubmit(delete);
        try
        {
            db.tbThuVien_TuSaches.DeleteOnSubmit(delete);
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
}