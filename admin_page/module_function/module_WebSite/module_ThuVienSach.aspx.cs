using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_ThuVienSach: System.Web.UI.Page
{
    cls_Alert alert = new cls_Alert();
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
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

        grvList.DataSource = from t in db.tbThuVien_TuSaches
                             join s in db.tbThuVien_Saches on t.thuvien_tusach_id equals s.thuvien_tusach_id
                             select new
                             {
                                 s.thuvien_sach_id,
                                 t.thuvien_tusach_name,
                                 s.thuvien_sach_name,
                                 s.thuvien_sach_image
                             };
        grvList.DataBind();
        ddllop.DataSource = from ddl in db.tbThuVien_TuSaches
                            select ddl;
        ddllop.DataBind();
    }
    public void delete(string sFileName)
    {
        if (sFileName != String.Empty)
        {
            if (File.Exists(sFileName))

                File.Delete(sFileName);
        }
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_sach_id" }));
        Session["_id"] = _id;
        var getData = (from t in db.tbThuVien_TuSaches
                       join s in db.tbThuVien_Saches on t.thuvien_tusach_id equals s.thuvien_tusach_id
                       where s.thuvien_sach_id == _id
                       select new
                       {
                           s.thuvien_sach_id,
                           s.thuvien_sach_image,
                           s.thuvien_sach_name,
                           t.thuvien_tusach_id,
                           t.thuvien_tusach_name
                       }).Single();
        // txtlink.Text = getData.imagelib_link;
        ddllop.Text = getData.thuvien_tusach_name;
        if (getData.thuvien_sach_image == "" || getData.thuvien_sach_image == null)
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        else
            image = getData.thuvien_sach_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + getData.thuvien_sach_image + "'); ", true);
        loadData();
    }

    protected void btnLuu_Click(object sender, EventArgs e)
    {

        if (Page.IsValid && FileUpload1.HasFile)
        {
            string filename = Path.GetRandomFileName() + Path.GetExtension(FileUpload1.FileName);
            string fileName_save = Path.Combine(Server.MapPath("~/uploadimages/thuvien"), filename);
            FileUpload1.SaveAs(fileName_save);
            image = "/uploadimages/thuvien/" + filename;
        }
        admin_User logedMember = Session["AdminLogined"] as admin_User;

        cls_AddImages cls = new cls_AddImages();
        {
            if (cls.Linq_suaimagesach(Convert.ToInt32(Session["_id"].ToString()), image))
            {
                ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Cập nhật thành công','','success').then(function(){grvList.Refresh();})", true);
                popupControl.ShowOnPageLoad = false;
                loadData();
            }
            else
            {
                alert.alert_Error(Page, "Cập nhật thất bại", "");
            }
        }

        // loadData();
    }
    // popupControl.ShowOnPageLoad = false;
}