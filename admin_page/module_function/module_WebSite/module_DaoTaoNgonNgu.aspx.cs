using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_News : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int _id;
    string image;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["_id"] = 0;

        }
        loadData();

    }
    private void loadData()
    {
        var getData = from daotaongonngu in db.tbWebsite_DaoTaoNgonNgus select daotaongonngu;
                     
        grvList.DataSource = getData;
        grvList.DataBind();
        

    }
    
    protected void btnThem_Click(object sender, EventArgs e)
    {
        Response.Redirect("/admin-them-tin-tuc-0");
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "news_id" }));
        Response.Redirect("/admin-them-tin-tuc-" + _id);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_News cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "news_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_News();
                tbWebsite_New checkImage = (from i in db.tbWebsite_News where i.news_id == Convert.ToInt32(item) select i).SingleOrDefault();
                if (cls.Linq_Xoa(Convert.ToInt32(item)))
                {
                    alert.alert_Success(Page, "Xóa thành công", "");
                }
                else
                    alert.alert_Error(Page, "Xóa thất bại", "");
            }
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
        loadData();
    }
    

    protected void btnTrangChu_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "news_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_News where sp.news_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.news_trangchu == null || getsp.news_trangchu == false)
                {
                    getsp.news_trangchu = true;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.news_trangchu == true)
                    {
                        getsp.news_trangchu = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }

    protected void btnTrungHocPT_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "news_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_News where sp.news_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.news_trunghocphothong == null || getsp.news_trunghocphothong == false)
                {
                    getsp.news_trunghocphothong = true;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.news_trunghocphothong == true)
                    {
                        getsp.news_trunghocphothong = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }

    protected void btnTrungHocCS_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "news_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_News where sp.news_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.news_trunghoccoso == null || getsp.news_trunghoccoso == false)
                {
                    getsp.news_trunghoccoso = true;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.news_trunghoccoso == true)
                    {
                        getsp.news_trunghoccoso = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }

    protected void btnTieuHoc_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "news_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_News where sp.news_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.news_tieuhoc == null || getsp.news_tieuhoc == false)
                {
                    getsp.news_tieuhoc = true;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.news_tieuhoc == true)
                    {
                        getsp.news_tieuhoc = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }

    protected void btnMamNon_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "news_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_News where sp.news_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.news_mamnon == null || getsp.news_mamnon == false)
                {
                    getsp.news_mamnon = true;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.news_mamnon == true)
                    {
                        getsp.news_mamnon = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }
    
}