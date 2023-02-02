using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_NewsCate
/// </summary>
public class cls_ThuVien_DeMuc
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
	public cls_ThuVien_DeMuc()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool Linq_Them( string newscate_title)
    {
        tbThuVien_TacGia insert = new tbThuVien_TacGia();
        insert.tacgia_name = newscate_title;
        db.tbThuVien_TacGias.InsertOnSubmit(insert);
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
    public bool Linq_Sua(int newscate_id, string newscate_title)
    {
        tbThuVien_TacGia update = db.tbThuVien_TacGias.Where(x => x.tacgia_id == newscate_id).FirstOrDefault();
        update.tacgia_name = newscate_title;
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
    public bool Linq_Xoa( int newscate_id)
    {
        tbThuVien_DeMuc delete = db.tbThuVien_DeMucs.Where(x => x.demuc_id == newscate_id).FirstOrDefault();
        db.tbThuVien_DeMucs.DeleteOnSubmit(delete);
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