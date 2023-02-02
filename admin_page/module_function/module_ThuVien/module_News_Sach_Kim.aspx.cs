using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_News_Sach_Kim : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int _id;
    string image;
    protected void Page_Load(object sender, EventArgs e)
    {
        //   edtnoidung.Toolbars.Add(HtmlEditorToolbar.CreateStandardToolbar1());
        if (!IsPostBack)
        {
            if (RouteData.Values["id"].ToString() != "0")
            {
                loadData();
            }
            ddlloaitusach.DataSource = from b in db.tbThuVien_TuSaches
                                       select b;
            ddlloaitusach.DataBind();
        }
    }
    private void loadData()
    {
        var getData = (from n in db.tbThuVien_Saches
                       join tb in db.tbThuVien_TuSaches on n.thuvien_tusach_id equals tb.thuvien_tusach_id
                       where n.thuvien_sach_id == Convert.ToInt32(RouteData.Values["id"].ToString())
                       select new
                       {
                           n.thuvien_sach_id,
                           n.thuvien_sach_name,
                           n.thuvien_sach_image,
                           n.thuvien_sach_soluong,
                           tb.thuvien_tusach_id,
                           tb.thuvien_tusach_name,
                       }).Single();
        txtTenSach.Text = getData.thuvien_sach_name;
        ddlloaitusach.Text = getData.thuvien_tusach_name;
        txtSoLuong.Text = (getData.thuvien_sach_soluong).ToString();
        if (getData.thuvien_sach_image != null)
            image = getData.thuvien_sach_image;
        txtImage.Value = getData.thuvien_sach_image;
    }

    public bool checknull()
    {
        if (txtTenSach.Text != "" && txtSoLuong.Text != "")
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
        admin_User logedMember = Session["AdminLogined"] as admin_User;
        cls_Sach cls = new cls_Sach();
        if (checknull() == false)
            alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
        else
        {

            if (RouteData.Values["id"].ToString() == "0")
            {

                if (image == null)
                {
                    image = "/images/790x525.jpg";
                }
                else
                {
                }
                if (cls.Linq_Them(txtTenSach.Text, txtSoLuong.Text, image, ddlloaitusach.Text))
                    alert.alert_Success(Page, "Thêm thành công", "");
                else alert.alert_Error(Page, "Thêm thất bại", "");

            }
            else
            {
                if (image == null)
                    image = txtImage.Value;
                if (cls.Linq_Sua(Convert.ToInt32(RouteData.Values["id"].ToString()), txtTenSach.Text, txtSoLuong.Text, image, ddlloaitusach.Text))
                    alert.alert_Success(Page, "Cập nhật thành công", "");
                else alert.alert_Error(Page, "Cập nhật thất bại", "");
            }
            Response.Redirect("/admin-sach");
        }
    }

}