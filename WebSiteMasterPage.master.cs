using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSiteMasterPage : System.Web.UI.MasterPage
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public string nameStudent;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["HocSinh"] != null)
        {
            txtHocSinh.Value = Request.Cookies["HocSinh"].Value;
            //txtHocSinh.Value = Session["code"].ToString();
            var hocsinh = from hs in db.tbHocSinhs
                          where hs.hocsinh_eamilba.Contains(txtHocSinh.Value)
                          select hs;
            //check tk của gv
            var checkTK = from gv in db.admin_Users
                          where gv.username_username == txtHocSinh.Value
                          select gv;
            if (hocsinh.Count() > 0)
            {
                nameStudent = hocsinh.Single().hocsinh_name;
            }
            else if (checkTK.Count() > 0)
            {
                nameStudent = checkTK.Single().username_fullname;
            }
            btnLogin.Visible = false;
            btnLogin.Visible = false;
            dv_Account.Visible = true;
            //btnPhiDichVu.Visible = true;
        }
        else
        {
            btnLogin.Visible = true;
            nameStudent = "";
            dv_Account.Visible = false;
            //btnPhiDichVu.Visible = false;
        }
        //if (Session["code"] == null)
        //{
        //    btnLogin.Visible = true;
        //    nameStudent = "";
        //    dv_Account.Visible = false;
        //    btnPhiDichVu.Visible = false;
        //}
        //else
        //{
        //    // txtHocSinh.Value = Request.Cookies["HocSinh"].Value;
        //    txtHocSinh.Value = Session["code"].ToString();
        //    var hocsinh = from hs in db.tbHocSinhs
        //                  where hs.hocsinh_code.Contains(txtHocSinh.Value)
        //                  select hs;
        //    nameStudent = hocsinh.Single().hocsinh_name;
        //    btnLogin.Visible = false;
        //    btnLogin.Visible = false;
        //    dv_Account.Visible = true;
        //    btnPhiDichVu.Visible = true;
        //}
        //}
        //else
        //{
        //    btnLogin.Visible = true;
        //    nameStudent = "";
        //    dv_Account.Visible = false;
        //    btnPhiDichVu.Visible = false;
        //}
        rpNewCate.DataSource = from nc in db.tbWebsite_NewsCates
                               where nc.newscate_active == true
                               select nc;
        rpNewCate.DataBind();
        rpMenu.DataSource = from ts in db.tbWebsite_Menus
                            where ts.websitemenu_active == true
                            orderby ts.websitemenu_position ascending
                            select ts;
        rpMenu.DataBind();

        rpLienHe.DataSource = from lh in db.tbWebsite_LienHes
                              select new
                              {
                                  active = lh.lienhe_active == true ? "active" : "",
                                  lh.lh_classid2,
                                  lh.lienhe_classid,
                                  lh.lienhe_address,
                                  lh.lienhe_map,
                                  lh.lienhe_phone,
                                  lh.lienhe_title,
                                  lh.lienhe_summary,
                              };
        rpLienHe.DataBind();
        rpInformation.DataSource = from info in db.tbWebsite_LienHes
                                   select new
                                   {
                                       active = info.lienhe_active == true ? "active" : "",
                                       info.lh_classid2,
                                       info.lienhe_classid,
                                       info.lienhe_address,
                                       info.lienhe_map,
                                       info.lienhe_phone,
                                       info.lienhe_title,
                                       info.lienhe_summary,
                                   };
        rpInformation.DataBind();

    }
    protected void btnDangNhap_ServerClick(object sender, EventArgs e)
    {
        string userName = txtMaHocSinh.Value;
        //check tk của hs
        var viewUserName = from tb in db.tbHocSinhs
                           where tb.hocsinh_eamilba.Contains(userName)
                           select tb;
        //check tk của gv
        var checkTK = from gv in db.admin_Users
                      where gv.username_username == userName
                      select gv;
        if (viewUserName.Count() > 0 || checkTK.Count() > 0)
        {
            //tbHocSinh list = viewUserName.Single();
            HttpCookie ck = new HttpCookie("HocSinh");
            string s = ck.Value;
            ck.Value = userName;
            ck.Expires = DateTime.Now.AddDays(365);
            Response.Cookies.Add(ck);
            Response.Redirect("http://quantrimamnon.vietnhatschool.edu.vn/");
            //Session["code"] = userName;
            //Response.Redirect("/trang-chu");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "AlertBox", "swal('Sai tên đăng nhập / mật khẩu!', '','warning')", true);
        }
    }

    protected void Logout_ServerClick(object sender, EventArgs e)
    {

        if (Request.Cookies["HocSinh"] != null)
        {
            Response.Cookies["HocSinh"].Expires = DateTime.Now.AddDays(-10);
        }
        if (Request.Cookies["cartbook"] != null)
        {
            Response.Cookies["cartbook"].Expires = DateTime.Now.AddDays(-10);
        }
        Response.Redirect("/trang-chu");
    }
    protected void rpMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpSubMenu = e.Item.FindControl("rpSubMenu") as Repeater;
        int websitemenu_id = int.Parse(DataBinder.Eval(e.Item.DataItem, "websitemenu_id").ToString());

        var submenu = from sub in db.tbWebsite_Submenus
                      join m in db.tbWebsite_Menus on sub.websitemenu_id equals m.websitemenu_id
                      where sub.websitemenu_id == websitemenu_id && sub.websitesubmenu_active == true
                      orderby sub.websitesubmenu_position ascending
                      select new
                      {
                          sub.websitesubmenu_id,
                          sub.websitesubmenu_title,
                          m.websitemenu_id,
                          m.websitemenu_title
                      };
        rpSubMenu.DataSource = submenu;
        rpSubMenu.DataBind();
    }
}
