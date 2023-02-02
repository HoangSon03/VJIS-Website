using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_BienMuc_module_BienMucNhaXuatBan : System.Web.UI.Page
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
        var getData = from nxb in db.tbThuVienNhaXuatBans
                      select new
                      {
                          nxb.nhaxuatban_id,
                          nxb.nhaxuatban_diachi,
                          nxb.nhaxuatban_ghichu,
                          nxb.nhaxuatban_quocgia,
                          nxb.nhaxuatban_name
                      };

        grvList.DataSource = getData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        txtGhiChu.Value = "";
        txtTenNhaXuatBan.Text = "";
        txtDiaChi.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);


    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "nhaxuatban_id" }));
        Session["_id"] = _id;

        var getData = (from nxb in db.tbThuVienNhaXuatBans
                       where nxb.nhaxuatban_id == _id
                       select nxb).FirstOrDefault();
        txtGhiChu.Value = getData.nhaxuatban_ghichu;
        txtDiaChi.Text = getData.nhaxuatban_diachi;
        txtTenNhaXuatBan.Text = getData.nhaxuatban_name;
        ddlQuocGia.SelectedValue = getData.nhaxuatban_quocgia;

        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }

    protected bool Linq_Xoa(int newscate_id)
    {
        tbThuVienNhaXuatBan delete = db.tbThuVienNhaXuatBans.Where(x => x.nhaxuatban_id == newscate_id).FirstOrDefault();
        db.tbThuVienNhaXuatBans.DeleteOnSubmit(delete);
        try
        {
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "nhaxuatban_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                if (Linq_Xoa(Convert.ToInt32(item)))
                {
                    alert.alert_Success(Page, "Xóa thành công", "");
                }
                else
                {
                    alert.alert_Error(Page, "Xóa thất bại", "");
                }
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
                    tbThuVienNhaXuatBan insert = new tbThuVienNhaXuatBan();
                    insert.nhaxuatban_name = txtTenNhaXuatBan.Text;
                    insert.nhaxuatban_diachi = txtDiaChi.Text;
                    insert.nhaxuatban_quocgia = ddlQuocGia.SelectedValue;
                    insert.nhaxuatban_ghichu = txtGhiChu.Value;
                    db.tbThuVienNhaXuatBans.InsertOnSubmit(insert);
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
                    tbThuVienNhaXuatBan update = db.tbThuVienNhaXuatBans.Where(x => x.nhaxuatban_id == u).FirstOrDefault();
                    update.nhaxuatban_name = txtTenNhaXuatBan.Text;
                    update.nhaxuatban_diachi = txtDiaChi.Text;
                    update.nhaxuatban_quocgia = ddlQuocGia.SelectedValue;
                    update.nhaxuatban_ghichu = txtGhiChu.Value;

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