using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_Content : System.Web.UI.Page
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
        var getData = from lh in db.tbContentBlocks
                      orderby lh.content_id descending
                      select lh;
        // đẩy dữ liệu vào gridivew
        grvList.DataSource = getData;
        grvList.DataBind();

    }
    private void setNULL()
    {
        txtTitle.Text = "";
        txtSummary.Text = "";
        edtnoidung.Html = "";
        SEO_KEYWORD.Text = "";
        SEO_TITLE.Text = "";
        SEO_LINK.Text = "";
        SEO_DEP.Value = "";
        SEO_IMAGE.Text = "";

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
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "content_id" }));
        // đẩy id vào session
        Session["_id"] = _id;
        var getData = (from lh in db.tbContentBlocks
                       where lh.content_id == _id
                       select lh
                      ).Single();
        txtTitle.Text = getData.content_title;
        txtSummary.Text = getData.content_summary;
        edtnoidung.Html = getData.content_content;
        SEO_KEYWORD.Text = getData.meta_keywords;
        SEO_TITLE.Text = getData.meta_title;
        SEO_LINK.Text = getData.link_seo;
        SEO_DEP.Value = getData.meta_description;
        SEO_IMAGE.Text = getData.meta_image;

        if (getData.content_image == null)
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        else
            image = getData.content_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + getData.content_image + "');", true);
    }
    public bool checknull()
    {
        if (txtTitle.Text != "")
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {
        try
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

            cls_Content cls = new cls_Content();

            if (checknull() == false)
                alert.alert_Warning(Page, "Hãy Nhập Đủ Thông Tin!", "");
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


                }
                else
                    if (cls.Sua_Content(Convert.ToInt32(Session["_id"].ToString()), txtTitle.Text, txtSummary.Text, image, edtnoidung.Html, KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                {
                    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Cập nhật thành công','','success').then(function(){grvList.Refresh();})", true);
                    popupControl.ShowOnPageLoad = false;
                    loadData();
                }
                else alert.alert_Error(Page, "Cập nhật thất bại", "");
            }

            loadData();
        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
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
        cls_Content cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "content_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_Content();
                tbContentBlock checkImage = (from i in db.tbContentBlocks where i.content_id == Convert.ToInt32(item) select i).SingleOrDefault();
                if (cls.Content_Xoa(Convert.ToInt32(item)))
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