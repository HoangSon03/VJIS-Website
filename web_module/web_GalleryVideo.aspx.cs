using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_GalleryVideo : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpLibrary.DataSource = from lib in db.tbLops
                               select lib;
        rpLibrary.DataBind();
        if (!IsPostBack)
        {
            var library = from lib in db.tbLops
                          join img in db.tbImageLibraries on lib.lop_id equals img.lop_id
                          where img.imagelib_parent == 2 && img.hidden==true
                          orderby img.imagelib_datecreate descending
                          select new
                          {
                              lib.lop_id,
                              lib.lop_name,
                              img.imagelib_image,
                              img.imagelib_link,
                          };
            rpImage.DataSource = library;
            rpImage.DataBind();

        }
    }
}