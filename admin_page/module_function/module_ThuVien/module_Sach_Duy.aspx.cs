using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_Sach : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    cls_Sach cls = new cls_Sach();
    private int _id;
    string image;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["_id"] = 0;
            
        }
        loadData();
        setCBB();
    }
    private void setCBB()
    {
        var listNV = from nv in db.tbThuVien_TuSaches select nv;
        cbbTuSach.DataSource = listNV;
        cbbTuSach.DataBind();
    }
    private void loadData()
    {
        var getData = from s in db.tbThuVien_Saches
                      join ts in db.tbThuVien_TuSaches on s.thuvien_tusach_id equals ts.thuvien_tusach_id
                      select new
                      {
                          s.thuvien_sach_name,
                          ts.thuvien_tusach_name,
                          s.thuvien_sach_id,
                          s.thuvien_sach_image
                      };
        //grvList.DataSource = getData;
        //grvList.DataBind();
        grvList.DataSource = getData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        txtTenSach.Text = "";
        txtSoLuong.Text = "";
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();showImg('');", true);
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_sach_id" }));
        Session["_id"] = _id;

        var getData = (from s in db.tbThuVien_Saches
                       join ts in db.tbThuVien_TuSaches on s.thuvien_tusach_id equals ts.thuvien_tusach_id
                       where s.thuvien_sach_id == _id
                       select new
                       {
                           s.thuvien_sach_name,
                           s.thuvien_sach_soluong,
                           ts.thuvien_tusach_name,
                           s.thuvien_sach_image,
                       }).Single();
        txtTenSach.Text = getData.thuvien_sach_name;
        txtSoLuong.Text = getData.thuvien_sach_soluong + "";
        cbbTuSach.Value = getData.thuvien_tusach_name;
        imgPreview.Src = getData.thuvien_sach_image;


        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "thuvien_sach_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
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
        if (txtTenSach.Text != "" || txtSoLuong.Text != "")
            return true;
        else return false;
    }

    protected void btnLuu_Click(object sender, EventArgs e)
    {
        try
        {
            cls_UploadImage uploadImg = new cls_UploadImage();
            HttpFileCollection fileCollection = Request.Files;
            string fileName = uploadImg.uploadSingle(fileCollection);
            if (checknull() == false)
                alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
            else
            {
                if (Session["_id"].ToString() == "0")
                {
                    if (cls.Linq_Them(txtTenSach.Text, txtSoLuong.Text, Convert.ToInt32(cbbTuSach.Value),fileName))
                        alert.alert_Success(Page, "Thêm thành công", "");
                    else alert.alert_Error(Page, "Thêm thất bại", "");
                }
                else
                {
                    if (cls.Linq_Sua(Convert.ToInt32(Session["_id"].ToString()), txtTenSach.Text, txtSoLuong.Text, Convert.ToInt32(cbbTuSach.Value),fileName))
                        alert.alert_Success(Page, "Cập nhật thành công", "");
                    else alert.alert_Error(Page, "Cập nhật thất bại", "");
                }
            }
            popupControl.ShowOnPageLoad = false;
        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
    }
}