using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_PhuHuynhVaHocSinh : System.Web.UI.Page
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
        var getData = from n in db.tbWebsite_PhuHuynhVaHocSinhs
                      join tb in db.tbWebsite_PhuHuynhVaHocSinhCates on n.phuhuynhvahocsinhcate_id equals tb.phuhuynhvahocsinhcate_id
                      orderby n.phuhuynhvahocsinh_id descending
                      select new
                      {
                          n.phuhuynhvahocsinh_id,
                          n.phuhuynhvahocsinh_title,
                          tb.phuhuynhvahocsinhcate_title,
                          n.phuhuynhvahocsinh_content,
                          phuhuynhvahocsinh_active = n.phuhuynhvahocsinh_active == true ? "Hiển thị" : "Không hiển thị",
                          n.phuhuynhvahocsinhcate_link,
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
        ddlloaisanpham.DataSource = from tb in db.tbWebsite_PhuHuynhVaHocSinhCates
                                    select tb;
        ddlloaisanpham.DataBind();

    }
    private void setNULL()
    {
        ddlloaisanpham.Text = "";
        txtTieuDe.Text = "";
        edtnoidung.Html = "";
        txtlink.Text = "";
        ddltinhtrang.Text = "";
        SEO_KEYWORD.Text = "";
        SEO_TITLE.Text = "";
        SEO_LINK.Text = "";
        SEO_DEP.Value = "";
        SEO_IMAGE.Text = "";
        //imgPreview.Src = "";
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "phuhuynhvahocsinh_id" }));
        Session["_id"] = _id;
        var getData = (from n in db.tbWebsite_PhuHuynhVaHocSinhs
                       join tb in db.tbWebsite_PhuHuynhVaHocSinhCates on n.phuhuynhvahocsinhcate_id equals tb.phuhuynhvahocsinhcate_id
                       where n.phuhuynhvahocsinh_id == _id
                       select new
                       {
                           n.phuhuynhvahocsinh_id,
                           n.phuhuynhvahocsinh_title,
                           n.phuhuynhvahocsinh_content,
                           tb.phuhuynhvahocsinhcate_title,
                           tb.phuhuynhvahocsinhcate_id,
                           n.meta_keywords,
                           n.meta_title,
                           n.meta_description,
                           n.link_seo,
                           n.meta_image,
                           n.phuhuynhvahocsinhcate_link,
                           n.phuhuynhvahocsinh_active,
                       }).Single();
        txtTieuDe.Text = getData.phuhuynhvahocsinh_title;
        ddlloaisanpham.Text = getData.phuhuynhvahocsinhcate_title;
        edtnoidung.Html = getData.phuhuynhvahocsinh_content;
        txtlink.Text = getData.phuhuynhvahocsinhcate_link;
        ddltinhtrang.Text = getData.phuhuynhvahocsinh_active ==  true ? "Hiển thị" : "Không hiển thị";
        // dteDate.Value = getData.news_datecreate.ToString();
        //imgPreview.Src = getData.news_image;
        SEO_KEYWORD.Text = getData.meta_keywords;
        SEO_TITLE.Text = getData.meta_title;
        SEO_LINK.Text = getData.link_seo;
        SEO_DEP.Value = getData.meta_description;
        SEO_IMAGE.Text = getData.meta_image;
        // loadData();
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_PhuHuynhVaHocSinh cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "phuhuynhvahocsinh_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_PhuHuynhVaHocSinh();
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
        popupControl.ShowOnPageLoad = false;
        loadData();
    }
    public bool checknull()
    {
        if (txtTieuDe.Text != "" || edtnoidung.Html != "" )
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {

        cls_PhuHuynhVaHocSinh cls = new cls_PhuHuynhVaHocSinh();
        bool tinhtrang = ddltinhtrang.Text == "Hiển thị" ? true : false;
        if (checknull() == false)
            alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
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

                if (image == null)
                {
                    image = "/images/790x525.jpg";
                }
                else
                {
                }
                if (cls.Linq_Them(txtTieuDe.Text,  edtnoidung.Html,tinhtrang, Convert.ToInt32(ddlloaisanpham.Value.ToString()),txtlink.Text, KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                    alert.alert_Success(Page, "Thêm thành công", "");
                else alert.alert_Error(Page, "Thêm thất bại", "");

            }
            else
            {
                if (cls.Linq_Sua(Convert.ToInt32(Session["_id"].ToString()), txtTieuDe.Text, edtnoidung.Html, tinhtrang, Convert.ToInt32(ddlloaisanpham.Value.ToString()), txtlink.Text, KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                    alert.alert_Success(Page, "Cập nhật thành công", "");
                else alert.alert_Error(Page, "Cập nhật thất bại", "");
            }
            popupControl.ShowOnPageLoad = false;
            loadData();
        }
    }
}