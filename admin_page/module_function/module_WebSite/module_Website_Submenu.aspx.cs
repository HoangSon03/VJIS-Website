using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_Website_Submenu : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int _id;
    string image;
    protected void Page_Load(object sender, EventArgs e)
    {
        edtnoidung.Toolbars.Add(HtmlEditorToolbar.CreateStandardToolbar1());
        if (!IsPostBack)
        {
            Session["_id"] = 0;
        }
        loadData();

    }
    private void loadData()
    {
        var getData = from sm in db.tbWebsite_Submenus
                      join m in db.tbWebsite_Menus on sm.websitemenu_id equals m.websitemenu_id
                      orderby sm.websitesubmenu_id descending
                      select new
                      {
                          sm.websitesubmenu_id,
                          websitesubmenu_active = sm.websitesubmenu_active == true ? "Hiển thị" : "Không hiển thị",
                          sm.websitesubmenu_content,
                          sm.websitesubmenu_createdate,
                          sm.websitesubmenu_position,
                          sm.websitesubmenu_title,
                          m.websitemenu_id,
                          m.websitemenu_title,
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
        ddlgroup.DataSource = from wb in db.tbWebsite_Menus
                              select wb;
        ddlgroup.DataBind();
    }
    private void setNULL()
    {
        ddlgroup.Text = "";
        txttitle.Value = "";
        txtvitri.Value = "";
        edtnoidung.Html = "";
        ddltinhtrang.Text = "";
        SEO_KEYWORD.Text = "";
        SEO_TITLE.Text = "";
        SEO_LINK.Text = "";
        SEO_DEP.Value = "";
        SEO_IMAGE.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {

        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "websitesubmenu_id" }));
        Session["_id"] = _id;

        var getData = (from tb in db.tbWebsite_Submenus
                       join wb in db.tbWebsite_Menus on tb.websitemenu_id equals wb.websitemenu_id
                       where tb.websitesubmenu_id == _id
                       select new
                       {
                           tb.websitesubmenu_id,
                           tb.websitesubmenu_active,
                           tb.websitesubmenu_content,
                           tb.websitesubmenu_createdate,
                           tb.websitesubmenu_position,
                           tb.websitesubmenu_title,
                           wb.websitemenu_id,
                           wb.websitemenu_title,
                           tb.title_web,
                           tb.meta_title,
                           tb.meta_keywords,
                           tb.meta_image,
                           tb.meta_description,
                           tb.link_seo,
                           tb.h1_seo
                       }).Single();
        txttitle.Value = getData.websitesubmenu_title;
        txtvitri.Value = getData.websitesubmenu_position.ToString();
        edtnoidung.Html = getData.websitesubmenu_content;
        ddltinhtrang.Text = getData.websitesubmenu_active == true ? "Hiển thị" : "Không hiển thị";
        ddlgroup.Text = getData.websitemenu_title;
        SEO_KEYWORD.Text = getData.meta_keywords;
        SEO_TITLE.Text = getData.meta_title;
        SEO_LINK.Text = getData.link_seo;
        SEO_DEP.Value = getData.meta_description;
        SEO_IMAGE.Text = getData.meta_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_Website_Submenu cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "websitesubmenu_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_Website_Submenu();
                if (cls.Linq_Xoa(Convert.ToInt32(item)))
                    alert.alert_Success(Page, "Xóa thành công", "");
                else
                    alert.alert_Error(Page, "Xóa thất bại", "");
            }
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
        popupControl.ShowOnPageLoad = false;
        loadData();
    }

    public bool checknull()
    {
        if (txttitle.Value != "" || edtnoidung.Html != "" || ddltinhtrang.Text != "" || ddlgroup.Text != "")
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {
        try
        {
            cls_Website_Submenu cls = new cls_Website_Submenu();
            bool tinhtrang = ddltinhtrang.Text == "Hiển thị" ? true : false;
            if (checknull() == false)
                alert.alert_Warning(Page, "Hảy nhập đầy đủ thông tin!", "");
            else
            {
                string KEYWORD = "", TitleSeo = "", Link = "", Dep = "", ImageSeo = "";
                {
                    if (SEO_KEYWORD.Text != "")
                    {
                        KEYWORD = SEO_KEYWORD.Text;
                    }
                    if (SEO_TITLE.Text != "")
                    {
                        TitleSeo = SEO_TITLE.Text;
                    }
                    if (SEO_LINK.Text != "")
                    {
                        Link = SEO_LINK.Text;
                    }
                    if (SEO_DEP.Value != "")
                    {
                        Dep = SEO_DEP.Value;
                    }
                    if (SEO_IMAGE.Text != "")
                    {
                        ImageSeo = SEO_IMAGE.Text;
                    }
                }
                if (Session["_id"].ToString() == "0")
                {
                    if (cls.Linq_Them(txttitle.Value, edtnoidung.Html, DateTime.Now, Convert.ToInt32(txtvitri.Value), Convert.ToInt32(ddlgroup.Value), tinhtrang, KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                        alert.alert_Success(Page, "Thêm thành công", "");
                    else alert.alert_Error(Page, "Thêm thất bại", "");
                }
                else
                {
                    if (cls.Linq_Sua(Convert.ToInt32(Session["_id"].ToString()), txttitle.Value, edtnoidung.Html, DateTime.Now, Convert.ToInt32(txtvitri.Value), Convert.ToInt32(ddlgroup.Value), tinhtrang, KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                        alert.alert_Success(Page, "Cập nhật thành công", "");
                    else alert.alert_Error(Page, "Cập nhật thất bại", "");
                }
            }
            popupControl.ShowOnPageLoad = false;
        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
    }
}