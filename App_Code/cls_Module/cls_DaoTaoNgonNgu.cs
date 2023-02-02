using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cls_DaoTaoNgonNgu
/// </summary>
public class cls_DaoTaoNgonNgu
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_DaoTaoNgonNgu()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool ThemMoi(string name, string image, string content, string description)
    {
        tbWebsite_DaoTaoNgonNgu insert = new tbWebsite_DaoTaoNgonNgu();
        insert.daotaongonngu_name = name;
        insert.daotaongonngu_image = image;
        insert.daotaongonngu_content = content;
        insert.daotaongonngu_description = description;
        db.tbWebsite_DaoTaoNgonNgus.InsertOnSubmit(insert);
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
    public bool Sua(int daotaongonngu_id, string name, string image, string content, string description)
    {
        tbWebsite_DaoTaoNgonNgu update = db.tbWebsite_DaoTaoNgonNgus.Where(x => x.daotaongonngu_id == daotaongonngu_id).FirstOrDefault();
        update.daotaongonngu_name = name;
        update.daotaongonngu_image = image;
        update.daotaongonngu_content = content;
        update.daotaongonngu_description = description;
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

    public bool Xoa(int daotaongonngu_id)
    {
        tbWebsite_DaoTaoNgonNgu delete = db.tbWebsite_DaoTaoNgonNgus.Where(x => x.daotaongonngu_id == daotaongonngu_id).FirstOrDefault();
        db.tbWebsite_DaoTaoNgonNgus.DeleteOnSubmit(delete);
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