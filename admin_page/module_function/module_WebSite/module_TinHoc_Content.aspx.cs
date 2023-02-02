using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_TinHoc_Content : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int _id;
    protected void Page_Load(object sender, EventArgs e)
    {
        edtnoidung.Toolbars.Add(HtmlEditorToolbar.CreateStandardToolbar1());
        if (!IsPostBack)
        {
           
            ddlloaisanpham.DataSource = from tb in db.tb_TinHocCauHois
                                        select tb;
            ddlloaisanpham.DataBind();
            loadData();
        }
    }
    private void loadData()
    {
        //string id = ddlloaisanpham.SelectedItem.Value + "";
        var getData = (from n in db.tb_TinHocCauHois where n.cauhoi_id == 1 select n).Single();
        ddlloaisanpham.Text = getData.cauhoi_vong;
        edtnoidung.Html = getData.cauhoi_noidung;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {
        tb_TinHocCauHoi update = (from ch in db.tb_TinHocCauHois
                                  where ch.cauhoi_id == Convert.ToInt16(ddlloaisanpham.Value)
                                  select ch).SingleOrDefault();
        update.cauhoi_noidung = edtnoidung.Html;
        db.SubmitChanges();
        alert.alert_Update(Page, "Cập nhật thành công", "");
    }

}