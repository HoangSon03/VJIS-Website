using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_CamNhanPhuHuynh : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int _id;
    string image;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["_id"] = 0;
        }
        getData();

    }
    protected void getData()
    {
        var loadData = from nn in db.tbWebsite_CamNhanPhuHuynhs
                           //where ld.lehoi_id != 1
                       select nn;
        grvList.DataSource = loadData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        //txtVideo.Text = "";
        txtTitle.Text = "";
        edtnoidung.Html = "";

    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);
    }

    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "camnhan_id" }));
        Session["_id"] = _id;
        var checkCh = (from ch in db.tbWebsite_CamNhanPhuHuynhs
                       where ch.camnhan_id == _id
                       select ch).SingleOrDefault();
        txtTitle.Text = checkCh.camnhan_namephuhuynh;
        txtImage.Value = checkCh.camnhan_image;
        edtnoidung.Html = checkCh.camnhan_content;
        image = checkCh.camnhan_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + checkCh.camnhan_image + "')", true);
    }

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "camnhan_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                var xoa = (from c in db.tbWebsite_CamNhanPhuHuynhs
                           where c.camnhan_id == Convert.ToInt32(item)
                           select c).SingleOrDefault();
                db.tbWebsite_CamNhanPhuHuynhs.DeleteOnSubmit(xoa);
                db.SubmitChanges();
            }
            alert.alert_Success(Page, "Đã Xóa Thành Công", "");
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
        getData();
    }

    protected void btnLuu_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid && FileUpload1.HasFile)
            {
                String folderUser = Server.MapPath("~/uploadimages/anh_camnhanphuhuynh/");
                if (!Directory.Exists(folderUser))
                {
                    Directory.CreateDirectory(folderUser);
                }
                //string filename;
                string ulr = "/uploadimages/anh_camnhanphuhuynh/";
                HttpFileCollection hfc = Request.Files;
                string filename = Path.GetRandomFileName() + Path.GetExtension(FileUpload1.FileName);
                string fileName_save = Path.Combine(Server.MapPath("~/uploadimages/anh_camnhanphuhuynh"), filename);
                FileUpload1.SaveAs(fileName_save);
                image = ulr + filename;
            }
            cls_CamNhanPhuHuynh cls = new cls_CamNhanPhuHuynh();
            if (Session["_id"].ToString() == "0")
            {
                if (image == null)
                    image = "admin_images/up-img.png";
                if (cls.Them(txtTitle.Text, image, edtnoidung.Html))
                    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Thêm thành công!','','success').then(function(){grvList.UnselectRows();})", true);
                else alert.alert_Error(Page, "Thêm thất bại", "");
            }
            else
            {
                if (image == null)
                    image = txtImage.Value;
                if (cls.Sua(Convert.ToInt32(Session["_id"].ToString()), txtTitle.Text, image, edtnoidung.Html))
                    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Cập nhật thành công!','','success').then(function(){grvList.UnselectRows();})", true);
                else alert.alert_Error(Page, "Cập nhật thất bại", "");
            }
            popupControl.ShowOnPageLoad = false;
        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
    }
}