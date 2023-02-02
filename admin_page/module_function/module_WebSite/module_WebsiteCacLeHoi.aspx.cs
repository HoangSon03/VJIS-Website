using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_WebsiteCacLeHoi : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int _id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["_id"] = 0;
        }
        getData();

    }
    protected void getData()
    {
        var loadData = from ld in db.tbWebsite_CacLeHois
                       where ld.lehoi_id != 1
                       select ld;
        grvList.DataSource = loadData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        txtVideo.Text = "";
        txtTitle.Text = "";
        edtnoidung.Html = "";
        edtDescription.Html = "";
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);
    }

    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "lehoi_id" }));
        Session["_id"] = _id;
        var checkCh = (from ch in db.tbWebsite_CacLeHois
                       where ch.lehoi_id == _id
                       select ch).SingleOrDefault();
        txtTitle.Text = checkCh.lehoi_title;
        txtVideo.Text = checkCh.lehoi_video;
        edtnoidung.Html = checkCh.lehoi_content;
        edtDescription.Html = checkCh.lehoi_description;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show()", true);
    }

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "lehoi_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                var xoa = (from c in db.tbWebsite_CacLeHois
                           where c.lehoi_id == Convert.ToInt32(item)
                           select c).SingleOrDefault();
                db.tbWebsite_CacLeHois.DeleteOnSubmit(xoa);
                db.SubmitChanges();
            }
            alert.alert_Success(Page, "Đã Xóa Thành Công", "");
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
        popupControl.ShowOnPageLoad = false;
        getData();
    }

    protected void btnLuu_Click(object sender, EventArgs e)
    {
        try
        {
            cls_LeHoiLon cls = new cls_LeHoiLon();
            if (Session["_id"].ToString() == "0")
            {
                if (cls.Them_LeHoiLon(txtTitle.Text, txtVideo.Text, edtnoidung.Html, edtDescription.Html))
                    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Thêm thành công!','','success').then(function(){grvList.UnselectRows();})", true);
                else alert.alert_Error(Page, "Thêm thất bại", "");
            }
            else
            {
                if (cls.Sua_LeHoiLon(Convert.ToInt32(Session["_id"].ToString()), txtTitle.Text, txtVideo.Text, edtnoidung.Html, edtDescription.Html))
                    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Cập nhật thành công!','','success').then(function(){grvList.UnselectRows();})", true);
                else alert.alert_Error(Page, "Cập nhật thất bại", "");
            }
            popupControl.ShowOnPageLoad = false;
        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
    }
}