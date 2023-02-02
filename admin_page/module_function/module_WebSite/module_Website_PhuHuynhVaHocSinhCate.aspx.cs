using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_Website_PhuHuynhVaHocSinhCate : System.Web.UI.Page
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
        loadData();

    }
    private void loadData()
    {
        var getData = from tb in db.tbWebsite_PhuHuynhVaHocSinhCates
                      join wb in db.tbWebsite_Menus on tb.websitemenu_id equals wb.websitemenu_id
                      select new {
                          tb.phuhuynhvahocsinhcate_title,
                          tb.phuhuynhvahocsinhcate_position,
                          tb.phuhuynhvahocsinhcate_id,
                          phuhuynhvahocsinhcate_active= tb.phuhuynhvahocsinhcate_active == true ? "Hiển thị" :"Không hiển thị",
                          wb.websitemenu_title,
                          wb.websitemenu_id,
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
        ddlgroup.DataSource = from wb in db.tbWebsite_Menus
                              select wb;
        ddlgroup.DataBind();
    }
    private void setNULL()
    {
        txtloaisanpham.Text = "";
        txtvitri.Value = "";
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

        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "phuhuynhvahocsinhcate_id" }));
        Session["_id"] = _id;

        var getData = (from tb in db.tbWebsite_PhuHuynhVaHocSinhCates
                       join wb in db.tbWebsite_Menus on tb.websitemenu_id equals wb.websitemenu_id
                       where tb.phuhuynhvahocsinhcate_id == _id
                       select new {
                           tb.phuhuynhvahocsinhcate_title,
                           tb.phuhuynhvahocsinhcate_position,
                           tb.phuhuynhvahocsinhcate_id,
                           tb.phuhuynhvahocsinhcate_active,
                           tb.meta_title,tb.meta_keywords,tb.meta_image,tb.meta_description,tb.link_seo,tb.h1_seo,
                           wb.websitemenu_id,
                           wb.websitemenu_title,
                       }).Single();
        txtloaisanpham.Text = getData.phuhuynhvahocsinhcate_title;
        txtvitri.Value = getData.phuhuynhvahocsinhcate_position + "";
        ddltinhtrang.Text = getData.phuhuynhvahocsinhcate_active == true ? "Hiển thị" : "Không hiển thị";
        ddlgroup.Text = 
        SEO_KEYWORD.Text = getData.meta_keywords;
        SEO_TITLE.Text = getData.meta_title;
        SEO_LINK.Text = getData.link_seo;
        SEO_DEP.Value = getData.meta_description;
        SEO_IMAGE.Text = getData.meta_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_PhuHuynhHocSinhCate cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "phuhuynhvahocsinhcate_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_PhuHuynhHocSinhCate();
                if (cls.Linq_Xoa(Convert.ToInt32(item)))
                    alert.alert_Success(Page, "Xóa thành công", "");
                else
                    alert.alert_Error(Page, "Xóa thất bại", "");
            }
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
        popupControl.ShowOnPageLoad = false;
    }

    public bool checknull()
    {
        if (txtloaisanpham.Text != "" || txtvitri.Value != "" || ddltinhtrang.Text != "")
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {
        cls_PhuHuynhHocSinhCate cls = new cls_PhuHuynhHocSinhCate();
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
                if (cls.Linq_Them(Convert.ToInt32(txtvitri.Value), txtloaisanpham.Text, tinhtrang, Convert.ToInt32(ddlgroup.Value), KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                    alert.alert_Success(Page, "Thêm thành công", "");
                else alert.alert_Error(Page, "Thêm thất bại", "");
            }
            else
            {
                if (cls.Linq_Sua(Convert.ToInt32(Session["_id"].ToString()), Convert.ToInt32(txtvitri.Value), txtloaisanpham.Text, tinhtrang,Convert.ToInt32( ddlgroup.Value), KEYWORD, TitleSeo, Link, Dep, ImageSeo))
                    alert.alert_Success(Page, "Cập nhật thành công", "");
                else alert.alert_Error(Page, "Cập nhật thất bại", "");
            }
        }
        popupControl.ShowOnPageLoad = false;
    }
}