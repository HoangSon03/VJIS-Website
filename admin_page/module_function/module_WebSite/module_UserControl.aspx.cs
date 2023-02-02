using DevExpress.Web.ASPxHtmlEditor;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_UserControl : System.Web.UI.Page
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
    private void loadPage()
    {
        var getData = from n in db.tbUserControls
                      join sc in db.tbUserControlCates on n.usercontrolcate_id equals sc.usercontrolcate_id
                      where n.usercontrolcate_id == Convert.ToInt32(ddltrang.SelectedItem.Value)
                      select new
                      {
                          n.usercontrol_id,
                          n.usercontrol_link,
                          n.usercontrol_linkregister,
                          n.usercontrol_hiden,
                          n.usercontrol_name,
                          n.usercontrol_position,
                          sc.usercontrolcate_name,
                          sc.usercontrolcate_id
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
    }
    private void loadData()
    {
        var getData = from n in db.tbUserControls
                      join sc in db.tbUserControlCates on n.usercontrolcate_id equals sc.usercontrolcate_id
                      orderby n.usercontrolcate_id ascending
                      select new
                      {
                          n.usercontrol_id,
                          n.usercontrol_link,
                          n.usercontrol_linkregister,
                          n.usercontrol_hiden,
                          n.usercontrol_name,
                          n.usercontrol_position,
                          sc.usercontrolcate_name,
                          sc.usercontrolcate_id
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
        ddlloaisanpham.DataSource = from s in db.tbUserControlCates
                                    select s;
        ddlloaisanpham.DataBind();
        ddltrang.DataSource = from ss in db.tbUserControlCates
                              select ss;
        ddltrang.DataBind();
    }
    private void setNULL()
    {
        txtLinkblock.Text = "";
        txtName.Text = "";
        ddlloaisanpham.Value = "";
        //imgPreview.Src = "";
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        Session["_id"] = 0;
        setNULL();
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Insert", "popupControl.Show();", true);
    }
    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        //_id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "uc_id" }));
        //Session["_id"] = _id;
        //var getData = (from n in db.tbUserControls
        //               join sc in db.tbWebsite_Schools on n.school_id equals sc.school_id
        //               where n.uc_id == _id
        //               select new
        //               {
        //                   n.uc_active,
        //                   n.uc_id,
        //                   n.uc_link,
        //                   n.uc_name,
        //                   sc.school_name,
        //                   sc.school_id
        //               }).Single();
        //txtName.Text = getData.uc_name;
        //txtLinkblock.Text = getData.uc_link;
        //ddlloaisanpham.Value = getData.school_name;
        // dteDate.Value = getData.news_datecreate.ToString();
        //imgPreview.Src = getData.news_image;


        //if (getData.news_image == null)
        //    ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + "/admin_images/Preview-icon.png" + "'); ", true);
        //else
        //    image = getData.news_image;
        //ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupControl.Show();showImg1_1('" + getData.news_image + "'); ", true);
        // loadData();
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        cls_UserControl cls;
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "usercontrol_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                cls = new cls_UserControl();
                //tbUserControl checkImage = (from i in db.tbUserControls where i.uc_id == Convert.ToInt32(item) select i).SingleOrDefault();
                if (cls.UC_Xoa(Convert.ToInt32(item)))
                {
                    alert.alert_Success(Page, "Xóa thành công", "");
                }
                else
                    alert.alert_Error(Page, "Xóa thất bại", "");
            }
        }
        else
            alert.alert_Warning(Page, "Bạn chưa chọn dữ liệu", "");
        popupControl.ShowOnPageLoad = false;
        loadData();
    }
    public bool checknull()
    {
        if (txtLinkblock.Text != "" || txtName.Text != "" || ddlloaisanpham.Text != "")
            return true;
        else return false;
    }
    protected void btnLuu_Click(object sender, EventArgs e)
    {


        admin_User logedMember = Session["AdminLogined"] as admin_User;
        cls_UserControl cls = new cls_UserControl();
        if (checknull() == false)
            alert.alert_Warning(Page, "Hãy nhập đầy đủ thông tin!", "");
        else
        {

            if (Session["_id"].ToString() == "0")
            {


                if (cls.Them_UserControl(txtName.Text, txtLinkblock.Text, Convert.ToInt32(ddlloaisanpham.Value.ToString()), Convert.ToInt32(txtPosition.Text), txtLinkregister_block.Text))
                    alert.alert_Success(Page, "Thêm thành công", "");
                else alert.alert_Error(Page, "Thêm thất bại", "");

            }
            else
            {
                if (cls.Sua_UC(Convert.ToInt32(Session["_id"].ToString()), txtName.Text, txtLinkblock.Text, Convert.ToInt32(ddlloaisanpham.Value.ToString()), Convert.ToInt32(txtPosition.Text), txtLinkregister_block.Text))
                    alert.alert_Success(Page, "Cập nhật thành công", "");
                else alert.alert_Error(Page, "Cập nhật thất bại", "");
            }
            popupControl.ShowOnPageLoad = false;
            loadData();
        }
    }



    protected void ddltrang_SelectedIndexChanged(object sender, EventArgs e)
    {
        var getData = from n in db.tbUserControls
                      join sc in db.tbUserControlCates on n.usercontrolcate_id equals sc.usercontrolcate_id
                      where n.usercontrolcate_id == Convert.ToInt32(ddltrang.SelectedItem.Value)
                      select new
                      {
                          n.usercontrol_id,
                          n.usercontrol_link,
                          n.usercontrol_linkregister,
                          n.usercontrol_hiden,
                          n.usercontrol_name,
                          n.usercontrol_position,
                          sc.usercontrolcate_name,
                          sc.usercontrolcate_id
                      };
        grvList.DataSource = getData;
        grvList.DataBind();
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "usercontrol_id" });
        if (selectedKey.Count > 0)
        {
            foreach (var item in selectedKey)
            {
                var getblock = (from n in db.tbUserControls
                                join t in db.tbUserControlCates on n.usercontrolcate_id equals t.usercontrolcate_id
                                where n.usercontrol_id == Convert.ToInt32(item)
                                select n).SingleOrDefault();
                if (getblock != null)
                {
                    if (getblock.usercontrol_id == Convert.ToInt32(item))
                    {
                        if (getblock.usercontrol_hiden == true)
                        {
                            getblock.usercontrol_hiden = false;
                            db.SubmitChanges();
                        }
                        else {
                            getblock.usercontrol_hiden = true;
                            db.SubmitChanges();
                        }

                     
                        alert.alert_Success(Page, "Đã Xử Lí Xong!", "");
                    }
                    //var page = from pa in db.tbUserControls
                    //           where pa.usercontrolcate_id == getblock.usercontrolcate_id && pa.usercontrol_id != Convert.ToInt32(item)
                    //           select pa;

                    //foreach (var usercontrol_id in page)
                    //{
                    //    if (getblock.usercontrol_id != usercontrol_id.usercontrol_id)
                    //    {
                    //        usercontrol_id.usercontrol_hiden = false;
                    //        db.SubmitChanges();
                    //    }
                    //}
                }
                else
                {
                    alert.alert_Success(Page, "Thao Tác thất bại!", "");

                }
            }
        }
    }

    //protected void btnHidden_Click(object sender, EventArgs e)
    //{
    //    List<object> selectedKey = grvList.GetSelectedFieldValues(new string[] { "usercontrol_id" });
    //    if (selectedKey.Count > 0)
    //    {
    //        foreach (var item in selectedKey)
    //        {
    //            var getblock = (from n in db.tbUserControls
    //                            where n.usercontrol_id == Convert.ToInt32(item)
    //                            select n).SingleOrDefault();
    //            if (getblock != null)
    //            {
    //                if (getblock.usercontrol_id == Convert.ToInt32(item))
    //                {
    //                    getblock.usercontrol_hiden = false;
    //                    db.SubmitChanges();
    //                    alert.alert_Success(Page, "Thao Tác thành công!", "");
    //                }
    //            }
    //            else
    //            {
    //                alert.alert_Success(Page, "Thao Tác thất bại!", "");

    //            }
    //        }
    //    }
    //}
}