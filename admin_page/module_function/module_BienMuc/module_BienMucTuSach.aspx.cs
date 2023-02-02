using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_BienMuc_module_BienMucTuSach : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    
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
        var getData = from tg in db.tbThuVien_TuSaches orderby tg.thuvien_tusach_id descending
                      select new
                      {
                          tg.thuvien_tusach_id,
                          tg.thuvien_tusach_name,
                      };
        
        grvList.DataSource = getData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        txtTuSach.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);


    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "thuvien_tusach_id" }));
        Session["_id"] = _id;

        var getData = (from pl in db.tbThuVien_TuSaches
                       where pl.thuvien_tusach_id == _id
                       select pl).FirstOrDefault();
        txtTuSach.Text = getData.thuvien_tusach_name;
        
        //ddlLoaiTacGia.SelectedValue = getData.tacgia_loaitacgia;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_TuSach cls = new cls_TuSach();
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "thuvien_tusach_id" });
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

    protected void btnLuu_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["_id"].ToString() == "0")
            {
                try
                {
                    tbThuVien_TuSach insert = new tbThuVien_TuSach();
                    insert.thuvien_tusach_name= txtTuSach.Text;
                    insert.hidden = true;
                    db.tbThuVien_TuSaches.InsertOnSubmit(insert);
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Thêm thành công", "");
                }
                catch (Exception)
                {
                    alert.alert_Error(Page, "Thêm thất bại", "");
                }

            }
            else
            {
                try
                {
                    int u = Convert.ToInt32(Session["_id"].ToString());
                    tbThuVien_TuSach update = db.tbThuVien_TuSaches.Where(x => x.thuvien_tusach_id == u).FirstOrDefault();
                    update.thuvien_tusach_name = txtTuSach.Text;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Cập nhật thành công", "");
                }
                catch (Exception)
                {
                    alert.alert_Error(Page, "Cập nhật thất bại", "");
                }

            }

        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
    }
}