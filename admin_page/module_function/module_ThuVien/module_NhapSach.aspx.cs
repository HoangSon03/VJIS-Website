using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_NhapSach : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    cls_NhapSach cls = new cls_NhapSach();
    private int _id;
    int vitri;
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
        var getData = from tb in db.tbThuVien_NhapSaches
                      select new
                      {
                          tb.nhapsach_id,
                          tb.nhapsach_createday,
                          tb.nhapsach_tongtien,
                          tb.nhapsach_code
                      };
        grvList.DataSource = getData;
        grvList.DataBind();


    }
    private void setNULL()
    {
        txtCode.Text = "";
        txtTongTien.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "nhapsach_id" }));
        Session["_id"] = _id;

        var getData = (from tb in db.tbThuVien_NhapSaches
                       where tb.nhapsach_id == _id
                       select tb).Single();
        txtTongTien.Text = getData.nhapsach_tongtien.ToString();
        txtCode.Text = getData.nhapsach_code;
        dtNgayNhap.Value = getData.nhapsach_createday.ToString();

        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "nhapsach_id" });
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
        if (txtTongTien.Text != "" || txtCode.Text != "")
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {
        try
        {
            if (checknull() == false)
                alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
            else
            {
                if (Session["_id"].ToString() == "0")
                {
                    if (cls.Linq_Them(txtCode.Text, dtNgayNhap.Value, txtTongTien.Text))
                        alert.alert_Success(Page, "Thêm thành công", "");
                    else alert.alert_Error(Page, "Thêm thất bại", "");
                }
                else
                {
                    if (cls.Linq_Sua(Convert.ToInt32(Session["_id"].ToString()), txtCode.Text,dtNgayNhap.Value, txtTongTien.Text))
                        alert.alert_Success(Page, "Cập nhật thành công", "");
                    else alert.alert_Error(Page, "Cập nhật thất bại", "");
                }
            }
        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
    }
}