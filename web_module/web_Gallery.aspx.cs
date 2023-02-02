using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_Gallery : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        // Lễ hội âm nhạc, Lễ hôi thể thao, Lễ hội mùa hè, Lễ hội hoa anh đào, 
        var cate = from lib in db.tbImageLibraryCates
                   where lib.hidden == null
                   select new
                   {
                       lib.imagelibcate_title,
                       active = lib.imagelibcate_id == 1 ? "active" : ""
                   };
        rpLibrary.DataSource = cate;
        rpLibrary.DataBind();
        if (!IsPostBack)
        {
            var library = from c in db.tbImageLibraryCates
                          join img in db.tbImageLibraries on c.imagelibcate_id equals img.imagelibcate_id
                          where  img.hidden == true
                          orderby img.imagelib_datecreate descending
                          select new
                          {
                              c.imagelibcate_id,
                              c.imagelibcate_title,
                              img.imagelib_image

                          };
            rpImage.DataSource = library;
            rpImage.DataBind();
        }
    }
}