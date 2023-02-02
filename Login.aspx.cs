using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        //tbHocSinh checkhs = (from hs in db.tbHocSinhs where hs.hocsinh_code == "HS00582" select hs).SingleOrDefault();
        //txt_UserName.Value = checkhs.hocsinh_code;
    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
        //tbHocSinh checkhs = (from hs in db.tbHocSinhs where hs.hocsinh_code == "HS00582" select hs).SingleOrDefault();
        //if (checkhs!=null)
        //{
            Response.Redirect("/web_module/module_BaiTap/web_DanhSachBaiTap.aspx");
        //}
        //else
        //{
        //    alert.alert_Error(Page, "Sai Tài Khoản Vui Lòng Nhập Lại!", "");
        //}
    }
}