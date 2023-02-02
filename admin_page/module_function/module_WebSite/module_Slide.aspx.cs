using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_Slide : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    DataTable dtSchool;
    private int _id;
    string image, vitri, TrungHocCoSo, TrangChu, TrungHocPhoThong, MamNon, TieuHoc;
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
        // load data đổ vào var danh sách
        var getData = from nc in db.tbWebsite_Slides
                      orderby nc.slide_datecreate descending
                      select new
                      {
                          nc.slide_id,
                          nc.slide_image,
                          nc.slidecate_name,
                          nc.slidecate_vitrishow,
                          nc.slide_datecreate,
                          nc.slide_trangchu,
                          nc.slide_trunghoccoso,
                          nc.slide_trunghocphothong,
                          nc.slide_tieuhoc,
                          nc.slide_mamnon,
                          slidecate_id = nc.slidecate_id == 1 ? "Slide banner" : "Slide nổi bật",
                          //slide_active = nc.slide_active == true ? "Đã hiển thị" : "Chưa hiển thị",
                      };
        // đẩy dữ liệu vào gridivew
        grvList.DataSource = getData;
        grvList.DataBind();


    }
    private void setNULL()
    {
        //txtMamNon.Checked = false;
        //txtTieuHoc.Checked = false;
        txtTrangChu.Checked = false;
        //txtTrungHocCS.Checked = false;
        //txtTrungHocPT.Checked = false;
        SEO_DEP.Value = "";
        SEO_IMAGE.Text = "";
        SEO_KEYWORD.Text = "";
        SEO_LINK.Text = "";
        SEO_TITLE.Text = "";
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
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "slide_id" }));
        // đẩy id vào session
        Session["_id"] = _id;
        var getData = (from nc in db.tbWebsite_Slides
                       where nc.slide_id == _id
                       select nc).Single();
        SEO_KEYWORD.Text = getData.meta_keywords;
        SEO_TITLE.Text = getData.meta_title;
        SEO_LINK.Text = getData.link_seo;
        SEO_DEP.Value = getData.meta_description;
        SEO_IMAGE.Text = getData.meta_image;
        ddlgroup.Text = getData.slidecate_id == 1 ? "Slide Banner" : "Silde nổi bật";
        if (getData.slide_trangchu == true)
        {
            txtTrangChu.Checked = true;
        }
        else
        {
            txtTrangChu.Checked = false;
        }
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
        if (getData.slide_image == null)
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        else
            image = getData.slide_image;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + getData.slide_image + "'); ", true);
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
        try
        {

            int group = 1;
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

            cls_Slide cls = new cls_Slide();

            //if (checknull() == false)
            //    alert.alert_Warning(Page, "Hãy Tích Vào Vị trí!", "");
            //else
            //{
            string KEYWORD = "", TitleSeo = "", Link = "", Dep = "", ImageSeo = "";

            if (SEO_KEYWORD.Text != "")
            {
                KEYWORD = SEO_KEYWORD.Text;
            }
            if (SEO_TITLE.Text != "")
            {
                TitleSeo = SEO_TITLE.Text;
            }
            if (SEO_LINK.Text != "")
            {
                Link = SEO_LINK.Text;
            }
            if (SEO_DEP.Value != "")
            {
                Dep = SEO_DEP.Value;
            }
            if (SEO_IMAGE.Text != "")
            {
                ImageSeo = SEO_IMAGE.Text;
            }

            if (Session["_id"].ToString() == "0")
            {
                if (image == null)
                {
                    image = "/images/520x350.jpg";
                }
                else
                {
                }

                if (cls.Them_slide(image, group, KEYWORD, TitleSeo, Link, Dep, ImageSeo, txtTrangChu.Checked, false, false, false, false))
                {

                    alert.alert_Success(Page, "Thêm thành công", "");
                    popupControl.ShowOnPageLoad = false;
                    loadData();
                }
                else alert.alert_Error(Page, "Thêm thất bại", "");

            }
            else
                if (cls.Sua_slide(Convert.ToInt32(Session["_id"].ToString()), image, group, KEYWORD, TitleSeo, Link, Dep, ImageSeo, txtTrangChu.Checked, false, false, false, false))
            {
                ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "swal('Cập nhật thành công','','success').then(function(){grvList.Refresh();})", true);
                popupControl.ShowOnPageLoad = false;
                loadData();
            }
            else alert.alert_Error(Page, "Cập nhật thất bại", "");


            loadData();
        }
        catch (Exception)
        {
            alert.alert_Error(Page, "Vui lòng liên hệ IT", "");
        }
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
        cls_Slide cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "slide_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_Slide();
                tbWebsite_Slide checkImage = (from i in db.tbWebsite_Slides where i.slide_id == Convert.ToInt32(item) select i).SingleOrDefault();
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

    protected void btnTrangChu_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "slide_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_Slides where sp.slide_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.slide_trangchu == null || getsp.slide_trangchu == false)
                {
                    getsp.slide_trangchu = true;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.slide_trangchu == true)
                    {
                        getsp.slide_trangchu = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }

    protected void btnTrungHocPT_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "slide_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_Slides where sp.slide_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.slide_trunghocphothong == null || getsp.slide_trunghocphothong == false)
                {
                    getsp.slide_trunghocphothong = true;
                    getsp.slide_datecreate = DateTime.Now;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.slide_trunghocphothong == true)
                    {
                        getsp.slide_trunghocphothong = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }

    protected void btnTrungHocCS_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "slide_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_Slides where sp.slide_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.slide_trunghoccoso == null || getsp.slide_trunghoccoso == false)
                {
                    getsp.slide_trunghoccoso = true;
                    getsp.slide_datecreate = DateTime.Now;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.slide_trunghoccoso == true)
                    {
                        getsp.slide_trunghoccoso = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }

    protected void btnTieuHoc_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "slide_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_Slides where sp.slide_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.slide_tieuhoc == null || getsp.slide_tieuhoc == false)
                {
                    getsp.slide_tieuhoc = true;
                    getsp.slide_datecreate = DateTime.Now;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.slide_tieuhoc == true)
                    {
                        getsp.slide_tieuhoc = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }

    protected void btnMamNon_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "slide_id" });
        if (selectedKey.Count > 0)
        {

            foreach (var item in selectedKey)
            {

                var getsp = (from sp in db.tbWebsite_Slides where sp.slide_id == Convert.ToInt32(item) select sp).SingleOrDefault();
                if (getsp.slide_mamnon == null || getsp.slide_mamnon == false)
                {
                    getsp.slide_mamnon = true;
                    getsp.slide_datecreate = DateTime.Now;
                    db.SubmitChanges();
                    alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                }
                else
                {
                    if (getsp.slide_mamnon == true)
                    {
                        getsp.slide_mamnon = false;
                        db.SubmitChanges();
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    else
                    {
                        alert.alert_Error(Page, "Xử Lí thất bại!", "");
                    }
                }
            }
        }
    }
}