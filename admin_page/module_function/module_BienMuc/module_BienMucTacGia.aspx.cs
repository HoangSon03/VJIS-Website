using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_BienMuc_module_BienMucTacGia : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    cls_ThuVien_TacGia cls = new cls_ThuVien_TacGia();
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
        var getData = from tg in db.tbThuVien_TacGias
                      select new
                      {
                          tg.tacgia_id,
                          tg.tacgia_name,
                          tg.tacgia_loaitacgia,
                          tg.tacgia_ghichu
                      };

        grvList.DataSource = getData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        txtGhiChu.Value = "";
        txtTenTacGia.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);


    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "tacgia_id" }));
        Session["_id"] = _id;

        var getData = (from tg in db.tbThuVien_TacGias
                       where tg.tacgia_id == _id
                       select tg).FirstOrDefault();
        txtTenTacGia.Text = getData.tacgia_name;
        txtGhiChu.Value = getData.tacgia_ghichu;
        ddlLoaiTacGia.SelectedValue = getData.tacgia_loaitacgia;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "tacgia_id" });
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
                    tbThuVien_TacGia insert = new tbThuVien_TacGia();
                    insert.tacgia_name = txtTenTacGia.Text;
                    insert.tacgia_loaitacgia = ddlLoaiTacGia.SelectedValue;
                    insert.tacgia_ghichu = txtGhiChu.Value;
                    db.tbThuVien_TacGias.InsertOnSubmit(insert);
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
                    tbThuVien_TacGia update = db.tbThuVien_TacGias.Where(x => x.tacgia_id == u).FirstOrDefault();
                    update.tacgia_loaitacgia = ddlLoaiTacGia.SelectedValue;

                    update.tacgia_name = txtTenTacGia.Text;
                    update.tacgia_ghichu = txtGhiChu.Value;
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