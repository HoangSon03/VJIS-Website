using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_BienMuc_module_BienMucDeMuc : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    cls_ThuVien_DeMuc cls = new cls_ThuVien_DeMuc();
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
        var getData = from tg in db.tbThuVien_DeMucs
                      select new
                      {
                          tg.demuc_id,
                          tg.demuc_name,
                          tg.demuc_loaidemuc,
                          tg.demuc_ghichu
                      };
        
        grvList.DataSource = getData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        txtGhiChu.Value = "";
        txtTenDeMuc.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);


    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "demuc_id" }));
        Session["_id"] = _id;

        var getData = (from tg in db.tbThuVien_DeMucs
                       where tg.demuc_id == _id
                       select tg).FirstOrDefault();
        txtTenDeMuc.Text = getData.demuc_name;
        txtGhiChu.Value = getData.demuc_ghichu;
        ddlLoaiDeMuc.SelectedValue = getData.demuc_loaidemuc;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "demuc_id" });
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

    //public bool checknull()
    //{
    //    //if (txtNoiDung.Text != "" || txtDonHang.Text != "")
    //        return true;
    //    else return false;
    //}
    //protected void btnLuu_Click(object sender, EventArgs e)
    //{
    //    //try
    //    //{
    //    //    if (checknull() == false)
    //    //        alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
    //    //    else
    //    //    {
    //    //        if (Session["_id"].ToString() == "0")
    //    //        {
    //    //            if (cls.Linq_Them(txtDonHang.Text, txtNoiDung.Text, dtNgayNhap.Value))
    //    //                alert.alert_Success(Page, "Thêm thành công", "");
    //    //            else alert.alert_Error(Page, "Thêm thất bại", "");
    //    //        }
    //    //        else
    //    //        {
    //    //            if (cls.Linq_Sua(Convert.ToInt32(Session["_id"].ToString()), txtDonHang.Text, txtNoiDung.Text, dtNgayNhap.Value))
    //    //                alert.alert_Success(Page, "Cập nhật thành công", "");
    //    //            else alert.alert_Error(Page, "Cập nhật thất bại", "");
    //    //        }
    //    //    }
    //    //    popupControl.ShowOnPageLoad = false;
    //    //}
    //    //catch (Exception)
    //    //{
    //    //    alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
    //    //}
    //}

    protected void btnLuu_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["_id"].ToString() == "0")
            {
                try
                {
                    tbThuVien_DeMuc insert = new tbThuVien_DeMuc();
                    insert.demuc_name = txtTenDeMuc.Text;
                    insert.demuc_loaidemuc = ddlLoaiDeMuc.SelectedValue;
                    insert.demuc_ghichu = txtGhiChu.Value;
                    db.tbThuVien_DeMucs.InsertOnSubmit(insert);
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
                    tbThuVien_DeMuc update = db.tbThuVien_DeMucs.Where(x => x.demuc_id == u).FirstOrDefault();
                    update.demuc_loaidemuc = ddlLoaiDeMuc.SelectedValue;
                    
                    update.demuc_name = txtTenDeMuc.Text;
                    update.demuc_ghichu = txtGhiChu.Value;
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