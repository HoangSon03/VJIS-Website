using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_ModuleTKBHieu_tkb_ChonKhoi : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
        ddlKhoi.Items.Clear();
        ddlKhoi.Items.Insert(0, "Chọn Khối");
        ddlKhoi.AppendDataBoundItems = true;
        var listkhoi = from k in db.tbKhois select k;
        ddlKhoi.DataSource = listkhoi;
        ddlKhoi.DataBind();
        }
    }
    protected void ddlKhoi_SelectedIndexChanged(object sender, EventArgs e)
    {
        rp_MonHoc.DataSource = from mh in db.tbMonHocs 
            where  mh.khoi_id == Convert.ToInt32(ddlKhoi.SelectedItem.Value) 
            select mh;
        rp_MonHoc.DataBind();   
    }
}