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

public partial class admin_page_module_function_module_ThuVienAnh : System.Web.UI.Page
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

        grvList.DataSource = from vd in db.tbImageLibraryCates
                             join img in db.tbImageLibraries on vd.imagelibcate_id equals img.imagelibcate_id
                             orderby img.imagelib_id descending
                             select new
                             {
                                 vd.imagelibcate_id,
                                 vd.imagelibcate_title,
                                 img.imagelib_image,
                                 img.imagelib_id,
                                 img.imagelib_link,
                                 imagelib_parent = img.imagelib_parent == 1 ? "Thư Viện Ảnh" : "Thư Viện Video"
                             };
        grvList.DataBind();
        ddllop.DataSource = from ddl in db.tbImageLibraryCates
                            select ddl;
        ddllop.DataBind();
    }
    private void setNULL()
    {
        txtlink.Text = "";
    }

    public void delete(string sFileName)
    {
        if (sFileName != String.Empty)
        {
            if (File.Exists(sFileName))

                File.Delete(sFileName);
        }
    }
    public bool checknull()
    {
        if (txtlink.Text != "")
            return true;
        else return false;
    }


    protected void btnThemImg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin-them-anh");
    }

    protected void btnThemVideo_Click(object sender, EventArgs e)
    {
        Session["_id"] = "0";
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();showImg('');", true);
        loadData();
    }

    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "imagelib_id" }));
        Session["_id"] = _id;
        var getData = (from l in db.tbLops
                       join img in db.tbImageLibraries on l.lop_id equals img.lop_id
                       where img.imagelib_id == _id
                       select new
                       {
                           l.lop_id,
                           l.lop_name,
                           img.imagelib_title,
                           img.imagelib_link,
                           img.imagelib_image,
                           img.imagelib_id,
                           img.imagelib_parent,
                       }).Single();
        txtlink.Text = getData.imagelib_link;
        ddllop.Text = getData.lop_name;
        if (getData.imagelib_image == "" || getData.imagelib_image == null)
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        else
            image = getData.imagelib_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + getData.imagelib_image + "'); ", true);
        loadData();
    }

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_AddImages cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "imagelib_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_AddImages();
                tbImageLibrary checkImage = (from i in db.tbImageLibraries where i.imagelib_id == Convert.ToInt32(item) select i).SingleOrDefault();
                if (cls.Linq_xoa(Convert.ToInt32(item)))
                {
                    alert.alert_Success(Page, "Xóa thành công", "");
                    loadData();
                }
                else
                    alert.alert_Error(Page, "Xóa thất bại", "");
            }
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
    }

    protected void btnLuu_Click(object sender, EventArgs e)
    {

        if (Page.IsValid && FileUpload1.HasFile)
        {
            string filename = Path.GetRandomFileName() + Path.GetExtension(FileUpload1.FileName);
            string fileName_save = Path.Combine(Server.MapPath("~/uploadimages/thuvienanh"), filename);
            FileUpload1.SaveAs(fileName_save);
            image = "/uploadimages/thuvienanh/" + filename;
        }
        admin_User logedMember = Session["AdminLogined"] as admin_User;

        cls_AddImages cls = new cls_AddImages();
        cls_ThemVideo clss = new cls_ThemVideo();
        {
            if (Session["_id"].ToString() == "0")
            {
                if (checknull() == false)
                    alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
                else
                   if (clss.Video_them(txtlink.Text, image, Convert.ToInt32(ddllop.Value)))
                {
                    alert.alert_Success(Page, "Thêm thành công", "");
                    setNULL();
                }
                else alert.alert_Error(Page, "Thêm thất bại", "");
            }
            else
            {
                if (cls.Linq_suavideo(Convert.ToInt32(Session["_id"].ToString()), txtlink.Text, image, Convert.ToInt32(ddllop.Value)))
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
}