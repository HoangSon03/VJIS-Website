using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_introduce : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    DataTable dtSchool;
    private int _id;
    public string title, summary, content, image, vitri, TrungHocCoSo, TrangChu, TrungHocPhoThong, MamNon, TieuHoc;
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
        // load data đổ vào var danh sách
        var getData = from nc in db.tbIntroduces
                      join sc in db.tbWebsite_Schools on nc.school_id equals sc.school_id
                      orderby nc.intro_id descending
                      select new
                      {
                          nc.intro_id,
                          nc.intro_content,
                          nc.intro_image,
                          nc.intro_summary,
                          nc.intro_title,
                          sc.school_id,
                          sc.school_name
                          //slide_active = nc.slide_active == true ? "Đã hiển thị" : "Chưa hiển thị",
                      };
        // đẩy dữ liệu vào gridivew
        grvList.DataSource = getData;
        grvList.DataBind();
        ddlloaitrang.DataSource = from scc in db.tbWebsite_Schools
                                  select scc;
        ddlloaitrang.DataBind();
    }
    private void setNULL()
    {
        txtTitle.Text = "";
        txtSummary.Text = "";
        edtnoidung.Html = "";
        SEO_DEP.Value = "";
        SEO_IMAGE.Text = "";
        SEO_KEYWORD.Text = "";
        SEO_LINK.Text = "";
        SEO_TITLE.Text = "";
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        // Khi nhấn nút thêm thì mật định session id = 0 để thêm mới
        Session["_id"] = 0;
        // gọi hàm setNull để trả toàn bộ các control về rỗng
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);
        loadData();
    }

    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        // get value từ việc click vào gridview
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "intro_id" }));
        // đẩy id vào session
        Session["_id"] = _id;
        var getData = (from nc in db.tbIntroduces
                       join sc in db.tbWebsite_Schools on nc.school_id equals sc.school_id
                       where nc.intro_id == _id
                       select new
                       {
                           nc.h1_seo,
                           nc.intro_content,
                           nc.intro_image,
                           nc.intro_summary,
                           nc.intro_title,
                           nc.link_seo,
                           nc.meta_description,
                           nc.meta_image,
                           nc.meta_keywords,
                           nc.meta_title,
                           nc.title_web,
                           nc.school_id,
                           sc.school_name,
                       }).Single();
        txtTitle.Text = getData.intro_title;
        txtSummary.Text = getData.intro_summary;
        ddlloaitrang.Value = getData.school_name;
        image = getData.intro_image;
        edtnoidung.Html = getData.intro_content;
        SEO_KEYWORD.Text = getData.meta_keywords;
        SEO_TITLE.Text = getData.meta_title;
        SEO_LINK.Text = getData.link_seo;
        SEO_DEP.Value = getData.meta_description;
        SEO_IMAGE.Text = getData.meta_image;

        if (getData.intro_image == null)
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        else
            image = getData.intro_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + getData.intro_image + "'); ", true);
        loadData();
    }
    public bool checknull()
    {
        if (txtTitle.Text != "")
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {

        if (Page.IsValid && FileUpload1.HasFile)
        {
            String folderUser = Server.MapPath("~/uploadimages/anh_tintuc/");
            if (!Directory.Exists(folderUser))
            {
                Directory.CreateDirectory(folderUser);
            }
            //string filename;
            string ulr = "/uploadimages/anh_tintuc/";
            HttpFileCollection hfc = Request.Files;
            string filename = Path.GetRandomFileName() + Path.GetExtension(FileUpload1.FileName);
            string fileName_save = Path.Combine(Server.MapPath("~/uploadimages/anh_tintuc"), filename);
            FileUpload1.SaveAs(fileName_save);
            image = ulr + filename;
        }

        cls_Introduce cls = new cls_Introduce();

        if (checknull() == false)
            alert.alert_Warning(Page, "Hãy Tích Vào Vị trí!", "");
        else
        {
            string KEYWORD = "", TitleSeo = "", Link = "", Dep = "", ImageSeo = "";

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

            if (Session["_id"].ToString() == "0")
            {
                if (image == null)
                {
                    image = "/images/520x350.jpg";
                }
                else
                {
                }

                if (cls.Them_Intro(txtTitle.Text, txtSummary.Text, edtnoidung.Html, image, Convert.ToInt32(ddlloaitrang.Value.ToString()), KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                {

                    alert.alert_Success(Page, "Thêm thành công", "");
                    popupControl.ShowOnPageLoad = false;
                    loadData();
                }
                else alert.alert_Error(Page, "Thêm thất bại", "");

            }
            else
                if (cls.Sua_slide(Convert.ToInt32(Session["_id"].ToString()), txtTitle.Text, txtSummary.Text, edtnoidung.Html, image, Convert.ToInt32(ddlloaitrang.Value.ToString()), KEYWORD, TitleSeo, Link, Dep, ImageSeo))
            {
                ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Cập nhật thành công','','success').then(function(){grvList.Refresh();})", true);
                popupControl.ShowOnPageLoad = false;
                loadData();
            }
            else alert.alert_Error(Page, "Cập nhật thất bại", "");
        }

        loadData();
    }

    public void delete(string sFileName)
    {
        if (sFileName != String.Empty)
        {
            if (File.Exists(sFileName))

                File.Delete(sFileName);
        }
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_Introduce cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "intro_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_Introduce();
                tbIntroduce checkImage = (from i in db.tbIntroduces where i.intro_id == Convert.ToInt32(item) select i).SingleOrDefault();
                if (cls.Intro_Xoa(Convert.ToInt32(item)))
                {
                    alert.alert_Success(Page, "Xóa thành công", "");
                }
                else
                    alert.alert_Error(Page, "Xóa thất bại", "");
            }
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
    }
}