using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_BaiTap : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnToan_ServerClick(object sender, EventArgs e)
    {
        var getToanCap1 = (from mh in db.tbHoSo_GiaoBaiTaps where mh.giaobaitap_id == 2 select mh);
        rpContent.DataSource = getToanCap1;
        rpContent.DataBind();
    }
    protected void btnTapDoc_ServerClick(object sender, EventArgs e)
    {
        var getToanCap1 = (from mh in db.tbHoSo_GiaoBaiTaps where mh.giaobaitap_id == 1 select mh);
        rpContent.DataSource = getToanCap1;
        rpContent.DataBind();
    }
    protected void btnTiengAnh_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnTinHoc_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnKhoaHoc_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnLichSu_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnDiaLy_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnNguVan_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnGiaoDucCongDanh_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnSinhHoc_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnCongNghe_ServerClick(object sender, EventArgs e)
    {

    }
    protected void btnVuiHoc_ServerClick(object sender, EventArgs e)
    {

    }
}