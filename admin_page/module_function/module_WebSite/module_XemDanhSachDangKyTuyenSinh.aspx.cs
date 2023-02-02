using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_XemDanhSachDangKyTuyenSinh : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UserName"] != null)
        {
            // load data đổ vào var danh sách
            var getData = from nc in db.tbWebsite_DangKiTuyenSinhs
                          orderby nc.hocsinh_id descending 
                          select nc;
            // đẩy dữ liệu vào gridivew
            grvList.DataSource = getData;
            grvList.DataBind();
        }
        else
        {
            Response.Redirect("/admin-login");
        }
    }
}