using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_TaiSaoPhaiChonVietNhat : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    DataTable dtSchool;
    private int _id;
    string image, vitri, TrungHocCoSo, TrangChu, TrungHocPhoThong, MamNon, TieuHoc;
     
    protected void Page_Load(object sender, EventArgs e)
    {
        edtMoTa.Toolbars.Add(HtmlEditorToolbar.CreateStandardToolbar1());
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
        var getData = from nc in db.tbWebsite_TaiSaoChonVietNhats
                      select new
                      {
                        nc.taisaochonvietnhat_id,
                        nc.taisaochonvietnhat_image,
                          taisaochonvietnhat_loai = nc.taisaochonvietnhat_loai == 1 ? "Chương trình học và đào tạo có tính kế thừa" : nc.taisaochonvietnhat_loai == 2 ?"Môi trường học tập lý tưởng" : "Cơ sở vật chất khang trang, hiện đại",
                          //slide_active = nc.slide_active == true ? "Đã hiển thị" : "Chưa hiển thị",
                      };
        // đẩy dữ liệu vào gridivew
        grvList.DataSource = getData;
        grvList.DataBind();


    }
    private void setNULL()
    {
        edtMoTa.Html = "";
        edtnoidung.Html = "";
        //txtMamNon.Checked = false;
        //txtTieuHoc.Checked = false;
        //txtTrangChu.Checked = false;
        //txtTrungHocCS.Checked = false;
        //txtTrungHocPT.Checked = false;
        //SEO_DEP.Value = "";
        //SEO_IMAGE.Text = "";
        //SEO_KEYWORD.Text = "";
        //SEO_LINK.Text = "";
        //SEO_TITLE.Text = "";
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
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "taisaochonvietnhat_id" }));
        // đẩy id vào session
        Session["_id"] = _id;
        var getData = (from nc in db.tbWebsite_TaiSaoChonVietNhats
                       where nc.taisaochonvietnhat_id == _id
                       select nc).Single();
        //SEO_KEYWORD.Text = getData.meta_keywords;
        //SEO_TITLE.Text = getData.meta_title;
        //SEO_LINK.Text = getData.link_seo;
        //SEO_DEP.Value = getData.meta_description;
        //SEO_IMAGE.Text = getData.meta_image;
        edtMoTa.Html = getData.taisaochonvietnhat_description;
        edtnoidung.Html = getData.taisaochonvietnhat_content;
        ddlgroup.Text = getData.taisaochonvietnhat_loai == 1 ? "Chương trình học và đào tạo có tính kế thừa" : getData.taisaochonvietnhat_loai == 2 ? "Môi trường học tập lý tưởng" : "Cơ sở vật chất khang trang, hiện đại";
        //if (getData.slide_trangchu == true)
        //{
        //    txtTrangChu.Checked = true;
        //}
        //else
        //{
        //    txtTrangChu.Checked = false;
        //}
        //if (getData.slide_trunghocphothong == true)
        //{
        //    txtTrungHocPT.Checked = true;
        //}
        //else
        //{
        //    txtTrungHocPT.Checked = false;
        //}
        //if (getData.slide_trunghoccoso == true)
        //{
        //    txtTrungHocCS.Checked = true;
        //}
        //else
        //{
        //    txtTrungHocCS.Checked = false;
        //}
        //if (getData.slide_tieuhoc == true)
        //{
        //    txtTieuHoc.Checked = true;
        //}
        //else
        //{
        //    txtTieuHoc.Checked = false;
        //}
        //if (getData.slide_mamnon == true)
        //{
        //    txtMamNon.Checked = true;
        //}
        //else
        //{
        //    txtMamNon.Checked = false;
        //}
        if (getData.taisaochonvietnhat_image == null)
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        else
            image = getData.taisaochonvietnhat_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + getData.taisaochonvietnhat_image + "'); ", true);
        loadData();
    }
    //public bool checknull()
    //{
    //    if (txtTrangChu.Value!="")
    //        return true;
    //    else return false;
    //}
    protected void btnLuu_Click(object sender, EventArgs e)
    {
        
        if (Page.IsValid && FileUpload1.HasFile)
        {
            String folderUser = Server.MapPath("~/uploadimages/anh_slide/");
            if (!Directory.Exists(folderUser))
            {
                Directory.CreateDirectory(folderUser);
            }
            //string filename;
            string ulr = "/uploadimages/anh_slide/";
            HttpFileCollection hfc = Request.Files;
            string filename = Path.GetRandomFileName() + Path.GetExtension(FileUpload1.FileName);
            string fileName_save = Path.Combine(Server.MapPath("~/uploadimages/anh_slide"), filename);
            FileUpload1.SaveAs(fileName_save);
            image = ulr + filename;
        }
        admin_User logedMember = Session["AdminLogined"] as admin_User;

        cls_TaiSaoPhaiChonVietNhat cls = new cls_TaiSaoPhaiChonVietNhat();

        //if (checknull() == false)
        //    alert.alert_Warning(Page, "Hãy Tích Vào Vị trí!", "");
        //else
        //{
        

        if (Session["_id"].ToString() == "0")
        {
            if (image == null)
            {
                image = "/images/520x350.jpg";
            }
            else
            {
            }
           
            if (cls.Them_TaiSaoChonVietNhat(image, Convert.ToInt32(ddlgroup.SelectedValue), edtMoTa.Html,edtnoidung.Html))
            {
             
                alert.alert_Success(Page, "Thêm thành công", "");
                popupControl.ShowOnPageLoad = false;
                loadData();
            }
            else alert.alert_Error(Page, "Thêm thất bại", "");

        }
        else
            if (cls.Sua_TaiSaoChonVietNhat(Convert.ToInt32(Session["_id"].ToString()), image, Convert.ToInt32(ddlgroup.SelectedValue), edtMoTa.Html, edtnoidung.Html))
        {
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Cập nhật thành công','','success').then(function(){grvList.Refresh();})", true);
            popupControl.ShowOnPageLoad = false;
            loadData();
        }
        else alert.alert_Error(Page, "Cập nhật thất bại", "");


        loadData();
    }

    public void delete(string sFileName)
    {
        if (sFileName != String.Empty)
        {
            if (File.Exists(sFileName))

                File.Delete(sFileName);
        }
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_TaiSaoPhaiChonVietNhat cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "taisaochonvietnhat_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_TaiSaoPhaiChonVietNhat();
                tbWebsite_TaiSaoChonVietNhat checkImage = (from i in db.tbWebsite_TaiSaoChonVietNhats where i.taisaochonvietnhat_id == Convert.ToInt32(item) select i).SingleOrDefault();
                if (cls.Slide_Xoa(Convert.ToInt32(item)))
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