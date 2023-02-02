using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_Sach_Kim : System.Web.UI.Page
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
        loadData();
    }
    private void loadData()
    {
        var getData = from n in db.tbThuVien_Saches
                      join tb in db.tbThuVien_TuSaches on n.thuvien_tusach_id equals tb.thuvien_tusach_id
                      orderby n.thuvien_sach_soluong descending
                      select new
                      {
                          n.thuvien_sach_id,
                          n.thuvien_sach_name,
                          n.thuvien_sach_image,
                          n.thuvien_sach_soluong,
                          tb.thuvien_tusach_name,
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Response.Redirect("/admin-them-sach-0");
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_sach_id" }));
        Response.Redirect("/admin-them-sach-" + _id);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_Sach cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "thuvien_sach_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_Sach();
                tbThuVien_Sach checkImage = (from i in db.tbThuVien_Saches where i.thuvien_sach_id == Convert.ToInt32(item) select i).SingleOrDefault();
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
        loadData();
    }
}