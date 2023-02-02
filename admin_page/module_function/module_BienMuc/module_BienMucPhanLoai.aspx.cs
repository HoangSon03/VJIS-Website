using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_BienMuc_module_BienMucPhanLoai : System.Web.UI.Page
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
        var getData = from tg in db.tbThuVien_PhanLoais
                      select new
                      {
                          tg.phanloai_id,
                          tg.phanloai_sophanloai,
                          tg.phanloai_name
                      };
        
        grvList.DataSource = getData;
        grvList.DataBind();
    }
    private void setNULL()
    {
        txtSoPhanLoai.Text = "";
        txtTenPhanLoai.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);


    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "phanloai_id" }));
        Session["_id"] = _id;

        var getData = (from pl in db.tbThuVien_PhanLoais
                       where pl.phanloai_id == _id
                       select pl).FirstOrDefault();
        txtTenPhanLoai.Text = getData.phanloai_name;
        txtSoPhanLoai.Text = getData.phanloai_sophanloai.ToString();
        
        //ddlLoaiTacGia.SelectedValue = getData.tacgia_loaitacgia;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();", true);
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_ThuVien_PhanLoai cls = new cls_ThuVien_PhanLoai();
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "phanloai_id" });
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
                    tbThuVien_PhanLoai insert = new tbThuVien_PhanLoai();
                    insert.phanloai_name= txtTenPhanLoai.Text;
                    insert.phanloai_sophanloai = Convert.ToInt32(txtSoPhanLoai.Text);
                    db.tbThuVien_PhanLoais.InsertOnSubmit(insert);
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
                    tbThuVien_PhanLoai update = db.tbThuVien_PhanLoais.Where(x => x.phanloai_id == u).FirstOrDefault();
                    update.phanloai_sophanloai = Convert.ToInt32(txtSoPhanLoai.Text);
                    update.phanloai_name = txtTenPhanLoai.Text;
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