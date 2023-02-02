using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_Thi10Ngon_web_10Ngon_BatDau : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if(!IsPostBack)
        {
            cbbVong.DataSource = from tb in db.tb_TinHocCauHois
                                 select tb;
            cbbVong.DataBind();
            block_Time.Visible = false;
        }    
    }

    protected void btnLuu_Click(object sender, EventArgs e)
    {
        block_Time.Visible = true;
        tb_TinHocCauHoi update = (from v in db.tb_TinHocCauHois
                                  where v.cauhoi_id == Convert.ToInt32(cbbVong.SelectedItem.Value)
                                  select v).Single();
        update.cauhoi_ThoiGianBatDau = DateTime.Now;
        db.SubmitChanges();
        lblThoiGian.Text = DateTime.Now.ToString();
    }
}