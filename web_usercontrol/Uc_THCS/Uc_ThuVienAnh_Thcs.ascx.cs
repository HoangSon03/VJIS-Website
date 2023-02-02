using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_THCS_Uc_ThuVienAnh_Thcs : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public string title_lib;
    protected void Page_Load(object sender, EventArgs e)
    {
        rpLibrary.DataSource = from lib in db.tbLops

                               select lib;
        rpLibrary.DataBind();
        if (!IsPostBack)
        {
            var library = from lib in db.tbLops
                          join img in db.tbImageLibraries on lib.lop_id equals img.lop_id
                          select new
                          {
                              lib.lop_id,
                              lib.lop_name,
                              img.imagelib_image,
                          };
            rpImage.DataSource = library;
            rpImage.DataBind();


            //ddlClass.DataSource = from cl in db.tbLops
            //                      select cl;
            //ddlClass.TextField = "lop_name";
            //ddlClass.ValueField = "lop_id";
            //ddlClass.DataBind();
        }
    }
}