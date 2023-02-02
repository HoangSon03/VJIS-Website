using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_ThuKho_module_TonKho : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    private int stt = 1;
    private int _id;
    protected void Page_Load(object sender, EventArgs e)
    {
        loaddata();
    }

    private void loaddata()
    {
        Session["spChiTiet"] = null;
        var getdata = from nh in db.tbThuVien_TonKhos
                      join ns in db.tbThuVien_NhapSaches on nh.nhapsach_id equals ns.nhapsach_id
                      select new
                      {
                          
                          ns.nhapsach_nhande,
                          nh.tonkho_id,
                          nh.tonkho_soluong
                      };
        grvList.DataSource = getdata;
        grvList.DataBind();
    }



    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thukho_id" }));
        Response.Redirect("admin-quan-ly-nhap-hang-" + _id);
    }
}