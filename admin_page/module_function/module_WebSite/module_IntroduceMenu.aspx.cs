using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_IntroduceMenu : System.Web.UI.Page
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
        var getData = from tb in db.tbIntroduceMenus
                      select new {
                          intromenucate_id = tb.intromenucate_id == 1 ? "Giới Thiệu" : "Tuyển Sinh",
                          tb.intromenu_content,
                          tb.intromenu_image,
                          tb.intromenu_titledefault,
                          tb.intromenu_title,
                          tb.intromenu_summary,
                          tb.intromenu_id,
                          intromenu_active = tb.intromenu_active == true ? "Hiển thị" : "Không hiển thị"
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        txtloaisanpham.Text = "";
        txttitle.Value = "";
        txttomtat.Value = "";
        edtnoidung.Html = "";
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

        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "intromenu_id" }));
        Session["_id"] = _id;

        var getData = (from tb in db.tbIntroduceMenus
                       where tb.intromenu_id == _id
                       select tb).Single();
        txtloaisanpham.Text = getData.intromenu_titledefault;
        txttitle.Value = getData.intromenu_title;
        txttomtat.Value = getData.intromenu_summary;
        edtnoidung.Html = getData.intromenu_content;
        ddltinhtrang.Text = getData.intromenu_active == true ? "Hiển thị" : "Không hiển thị";
      
        ddlgroup.Text = getData.intromenucate_id == 1 ? "Giới Thiệu" : "Tuyển Sinh";
        //ddltinhtrang.Text = getData.newscate_active == true ? "Hiển thị" : "Không hiển thị";
        SEO_KEYWORD.Text = getData.meta_keywords;
        SEO_TITLE.Text = getData.meta_title;
        SEO_LINK.Text = getData.link_seo;
        SEO_DEP.Value = getData.meta_description;
        SEO_IMAGE.Text = getData.meta_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_IntroduceMenu cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "intromenu_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_IntroduceMenu();
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
        if (txtloaisanpham.Text != "" || txttitle.Value != "" || edtnoidung.Html != ""||ddltinhtrang.Text!=""||ddlgroup.Text!="")
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {
      
        cls_IntroduceMenu cls = new cls_IntroduceMenu();
        bool tinhtrang = ddltinhtrang.Text == "Hiển thị" ? true : false;
        int group = ddlgroup.Text == "1" ? 1 : 2;
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
                if (cls.Linq_Them(txtloaisanpham.Text,txttitle.Value,txttomtat.Value,edtnoidung.Html, group, tinhtrang, KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                    alert.alert_Success(Page, "Thêm thành công", "");
                else alert.alert_Error(Page, "Thêm thất bại", "");
            }
            else
            {
                if (cls.Linq_Sua(Convert.ToInt32(Session["_id"].ToString()), txtloaisanpham.Text, txttitle.Value, txttomtat.Value, edtnoidung.Html,group,tinhtrang, KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                    alert.alert_Success(Page, "Cập nhật thành công", "");
                else alert.alert_Error(Page, "Cập nhật thất bại", "");
            }
        }
        popupControl.ShowOnPageLoad = false;
    }
}