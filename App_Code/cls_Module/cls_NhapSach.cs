using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_NewsCate
/// </summary>
public class cls_NhapSach
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
	public cls_NhapSach()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool Linq_Them( string nhapsach_code, string nhapsach_createday,string nhapsach_tongtien)
    {
        tbThuVien_NhapSach insert = new tbThuVien_NhapSach();
        insert.nhapsach_code = nhapsach_code;
        insert.nhapsach_createday= Convert.ToDateTime(nhapsach_createday);
        insert.nhapsach_tongtien = Convert.ToInt32(nhapsach_tongtien);
        try
        {
            db.tbThuVien_NhapSaches.InsertOnSubmit(insert);
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
    public bool Linq_Sua(int nhapsach_id, string nhapsach_code, string nhapsach_createday, string nhapsach_tongtien)
    {
        tbThuVien_NhapSach update = db.tbThuVien_NhapSaches.Where(x => x.nhapsach_id == nhapsach_id).FirstOrDefault();
        update.nhapsach_code = nhapsach_code;
        update.nhapsach_createday = Convert.ToDateTime(nhapsach_createday);
        update.nhapsach_tongtien =Convert.ToInt32(nhapsach_tongtien);
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
    public bool Linq_Xoa( int nhapsach_id)
    {
        tbThuVien_NhapSach delete = db.tbThuVien_NhapSaches.Where(x => x.nhapsach_id == nhapsach_id).FirstOrDefault();
        db.tbThuVien_NhapSaches.DeleteOnSubmit(delete);
        try
        {
            db.tbThuVien_NhapSaches.DeleteOnSubmit(delete);
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
}