using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_NewsCate
/// </summary>
public class cls_Sach
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
	public cls_Sach()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool Linq_Them( string thuvien_sach_name, string thuvien_sach_soluong, int thuvien_tusach_id, string fileName)
    {
        tbThuVien_Sach insert = new tbThuVien_Sach();
        insert.thuvien_sach_name = thuvien_sach_name;
        insert.thuvien_sach_soluong = Convert.ToInt32(thuvien_sach_soluong);
        insert.thuvien_tusach_id = thuvien_tusach_id;
        insert.thuvien_sach_image = fileName;
        try
        {
            db.tbThuVien_Saches.InsertOnSubmit(insert);
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
    public bool Linq_Sua(int thuvien_sach_id, string thuvien_sach_name, string thuvien_sach_soluong, int thuvien_tusach_id, string fileName)
    {
        tbThuVien_Sach update = db.tbThuVien_Saches.Where(x => x.thuvien_sach_id == thuvien_sach_id).FirstOrDefault();
        update.thuvien_sach_name = thuvien_sach_name;
        update.thuvien_sach_soluong = Convert.ToInt32(thuvien_sach_soluong); 
        update.thuvien_tusach_id = thuvien_tusach_id;
        update.thuvien_sach_image = fileName;
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
    public bool Linq_Xoa( int thuvien_sach_id)
    {
        tbThuVien_Sach delete = db.tbThuVien_Saches.Where(x => x.thuvien_sach_id == thuvien_sach_id).FirstOrDefault();
        db.tbThuVien_Saches.DeleteOnSubmit(delete);
        try
        {
            db.tbThuVien_Saches.DeleteOnSubmit(delete);
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
}