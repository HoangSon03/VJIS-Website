using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_LienHe : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    DataTable dtSchool;
    private int _id;
    public string title, summary, content, image, vitri, TrungHocCoSo, TrangChu, TrungHocPhoThong, MamNon, TieuHoc;
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
        // load data đổ vào var danh sách
        var getData = from lh in db.tbWebsite_LienHes
                      orderby lh.lienhe_id descending
                      select lh;
        // đẩy dữ liệu vào gridivew
        grvList.DataSource = getData;
        grvList.DataBind();
       
    }
    private void setNULL()
    {
        txtTitle.Text = "";
        txtSummary.Text = "";
        txtAddress.Text = "";
        txtPhone.Text = "";
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
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "lienhe_id" }));
        // đẩy id vào session
        Session["_id"] = _id;
        var getData = (from lh in db.tbWebsite_LienHes
                       where lh.lienhe_id == _id
                       select lh
                      ).Single();
        txtTitle.Text = getData.lienhe_title;
        txtSummary.Text = getData.lienhe_summary;
        txtPhone.Text = getData.lienhe_phone;
        txtAddress.Text = getData.lienhe_address;
        //SEO_KEYWORD.Text = getData.meta_keywords;
        //SEO_TITLE.Text = getData.meta_title;
        //SEO_LINK.Text = getData.link_seo;
        //SEO_DEP.Value = getData.meta_description;
        //SEO_IMAGE.Text = getData.meta_image;

        //if (getData.intro_image == null)
        //    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        //else
        //    image = getData.intro_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    public bool checknull()
    {
        if (txtTitle.Text != "")
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {

      
        cls_LienHe cls = new cls_LienHe();

        if (checknull() == false)
            alert.alert_Warning(Page, "Hãy Tích Vào Vị trí!", "");
        else
        {
            //string KEYWORD = "", TitleSeo = "", Link = "", Dep = "", ImageSeo = "";

            //if (SEO_KEYWORD.Text != "")
            //{
            //    KEYWORD = SEO_KEYWORD.Text;
            //}
            //if (SEO_TITLE.Text != "")
            //{
            //    TitleSeo = SEO_TITLE.Text;
            //}
            //if (SEO_LINK.Text != "")
            //{
            //    Link = SEO_LINK.Text;
            //}
            //if (SEO_DEP.Value != "")
            //{
            //    Dep = SEO_DEP.Value;
            //}
            //if (SEO_IMAGE.Text != "")
            //{
            //    ImageSeo = SEO_IMAGE.Text;
            //}

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
                if (cls.Sua_LienHe(Convert.ToInt32(Session["_id"].ToString()), txtTitle.Text, txtSummary.Text, txtPhone.Text,txtAddress.Text))
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