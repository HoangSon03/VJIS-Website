using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_News
/// </summary>
public class cls_ThuVien_Sach
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_ThuVien_Sach()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Linq_Them(string news_title, string news_image,  int loailinhvuc)
    {
        tbThuVien_Sach insert = new tbThuVien_Sach();
        insert.thuvien_sach_name = news_title;
        insert.thuvien_sach_image = news_image;
       // insert.thuvien_loailinhvuc_id = loailinhvuc;
        db.tbThuVien_Saches.InsertOnSubmit(insert);
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
    public bool Linq_Sua(int news_id, string news_title, string news_image, string news_summary, string news_content, int newscate_id)
    {

        tbThuVien_Sach update = db.tbThuVien_Saches.Where(x => x.thuvien_sach_id == news_id).FirstOrDefault();
        update.thuvien_sach_name = news_title;
        update.thuvien_sach_image = news_image;
        //update.thuvien_loailinhvuc_id = newscate_id;
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
    public bool Linq_Xoa(int news_id)
    {
        tbThuVien_Sach delete = db.tbThuVien_Saches.Where(x => x.thuvien_sach_id == news_id).FirstOrDefault();
        db.tbThuVien_Saches.DeleteOnSubmit(delete);
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