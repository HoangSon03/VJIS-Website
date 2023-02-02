using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_GiaoVien : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    DataTable dtSchool;
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
        // load data đổ vào var danh sách
        var getData = from nc in db.tbWebSite_GiaoViens select nc;
        // đẩy dữ liệu vào gridivew
        grvList.DataSource = getData;
        grvList.DataBind();


    }
    private void setNULL()
    {

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
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "giaovien_id" }));
        // đẩy id vào session
        Session["_id"] = _id;
        var getData = (from nc in db.tbWebSite_GiaoViens
                       where nc.giaovien_id == _id
                       select nc).Single();
        txtHoTen.Text = getData.giaovien_name;
        txtChucVu.Text = getData.giaovien_title;
        txtImage.Value = getData.giaovien_image;
        if (getData.giaovien_image == null)
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        else
            image = getData.giaovien_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + getData.giaovien_image + "'); ", true);
        loadData();
    }

    protected void btnLuu_Click(object sender, EventArgs e)
    {
        if (Page.IsValid && FileUpload1.HasFile)
        {
            String folderUser = Server.MapPath("~/uploadimages/anh_giaovien/");
            if (!Directory.Exists(folderUser))
            {
                Directory.CreateDirectory(folderUser);
            }
            //string filename;
            string ulr = "/uploadimages/anh_giaovien/";
            HttpFileCollection hfc = Request.Files;
            string filename = Path.GetRandomFileName() + Path.GetExtension(FileUpload1.FileName);
            string fileName_save = Path.Combine(Server.MapPath("~/uploadimages/anh_giaovien"), filename);
            FileUpload1.SaveAs(fileName_save);
            image = ulr + filename;
        }
        cls_website_giaovien cls = new cls_website_giaovien();
        if (Session["_id"].ToString() == "0")
        {
            if (image == null)
            {
                image = "/images/520x350.jpg";
            }
            else
            {
            }

            if (cls.Them_giaovien(txtHoTen.Text, txtChucVu.Text, image, edtnoidung.Html))
            {
                alert.alert_Success(Page, "Thêm thành công", "");
                popupControl.ShowOnPageLoad = false;
                loadData();
            }
            else alert.alert_Error(Page, "Thêm thất bại", "");
        }
        else
        {
            if (image == null)
                image = txtImage.Value;
            if (cls.Sua_giaovien(Convert.ToInt32(Session["_id"].ToString()), txtHoTen.Text, txtChucVu.Text, image, edtnoidung.Html))
            {
                ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Cập nhật thành công','','success').then(function(){grvList.Refresh();})", true);
                popupControl.ShowOnPageLoad = false;
                loadData();
            }
            else
                alert.alert_Error(Page, "Cập nhật thất bại", "");
        }

        loadData();
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_website_giaovien cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "giaovien_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_website_giaovien();
                if (cls.Xoa_giaovien(Convert.ToInt32(item)))
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