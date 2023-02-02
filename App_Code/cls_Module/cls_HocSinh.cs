using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_News
/// </summary>
public class cls_HocSinh
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public cls_HocSinh()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Linq_Them(string hocsinh_name, DateTime hocsinh_namsinh,  int hocsinh_phone, string hocsinh_phuhuynh )
    {

        var insert = new tbHocSinh();
        insert.hocsinh_name = hocsinh_name;
        insert.hidden = false;
        //insert.account_namsinh = hocsinh_namsinh;
        //insert.account_phone = hocsinh_phone.ToString();
        //insert.account_phuhuynh=hocsinh_phuhuynh;
    
      
       
        
       
        // insert.news_link= 
        db.tbHocSinhs.InsertOnSubmit(insert);
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
    public bool Linq_Sua(int hocsinh_id, string hocsinh_name, DateTime hocsinh_namsinh, int hocsinh_phone, string hocsinh_phuhuynh)
    { 
        tbHocSinh update = db.tbHocSinhs.Where(x => x.hocsinh_id == hocsinh_id).FirstOrDefault();
        update.hocsinh_name = hocsinh_name;
        //update.account_namsinh = hocsinh_namsinh;
        //update.account_phone = hocsinh_phone.ToString();
        //update.account_phuhuynh = hocsinh_phuhuynh;
 
        
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
    public bool Linq_Xoa(int hocsinh_id)
    {
        tbHocSinh delete = db.tbHocSinhs.Where(x => x.hocsinh_id == hocsinh_id).FirstOrDefault();
        delete.hidden = true;
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