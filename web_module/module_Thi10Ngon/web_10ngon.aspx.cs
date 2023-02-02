using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_Thi10Ngon_web_10ngon : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if(!IsPostBack)
        {
            edtnoidung.Toolbars.Add(HtmlEditorToolbar.CreateStandardToolbar1());
            cbbVong.DataSource = from tb in db.tb_TinHocCauHois
                                        select tb;
            cbbVong.DataBind();
            cbbLop.DataSource = from l in db.tbLops orderby l.lop_position select l;
            cbbLop.DataBind();
          
        }    
    }

    protected void btnLuu_Click(object sender, EventArgs e)
    {
        tb_TinHocThi10Ngon insert = new tb_TinHocThi10Ngon();
        insert.cauhoi_id = Convert.ToInt16(cbbVong.Value);
        insert.hocsinh_id = Convert.ToInt32(cbbHocSinh.Value);
        //insert.hstl_id = 51;
        insert.thi10ngon_noidungtraloi = edtnoidung.Html;
        insert.thi10ngon_thoigianhoanthanh = DateTime.Now;
        db.tb_TinHocThi10Ngons.InsertOnSubmit(insert);
        db.SubmitChanges();
        alert.alert_Success(Page, "Em đã hoàn thành xong bài!", "");
    }



    protected void cbbLop_SelectedIndexChanged(object sender, EventArgs e)
    {
        cbbHocSinh.DataSource = from hs in db.tbHocSinhs
                                join hstl in db.tbHocSinhTrongLops on hs.hocsinh_id equals hstl.hocsinh_id
                                where hstl.lop_id == Convert.ToInt32(cbbLop.SelectedItem.Value)
                                select hs;
        cbbHocSinh.DataBind();
    }
}