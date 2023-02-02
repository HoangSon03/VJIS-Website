using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_MamNon_Uc_ThuVienAnh : System.Web.UI.UserControl
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
                          select new {
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



    //protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    ddlClass.DataSource = from cl in db.tbLops
    //                          select cl;
    //    ddlClass.TextField = "lop_name";
    //    ddlClass.ValueField = "lop_id";
    //    ddlClass.DataBind();
    //    var library = from lib in db.tbImageLibraryCates
    //                  join img in db.tbImageLibraries on lib.imagelibcate_id equals img.imagelibcate_id
    //                  where img.lop_id == Convert.ToInt32(ddlClass.SelectedItem.Value)
    //                  orderby img.imagelib_datecreate descending
    //                  select new
    //                  {
    //                      lib.imagelibcate_id,
    //                      lib.imagelibcate_title,
    //                      img.imagelib_image,
    //                      img.imagelib_summary,
    //                  };
    //    rpImage.DataSource = library;
    //    rpImage.DataBind();
    //}

    //protected void rpImage_ItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    Repeater rpImage = e.Item.FindControl("rpImage") as Repeater;
    //    int imagelibcate_id = int.Parse(DataBinder.Eval(e.Item.DataItem, "imagelibcate_id").ToString());

    //    var image = from img in db.tbImageLibraries
    //                where img.imagelibcate_id == imagelibcate_id
    //                select img;
    //    rpImage.DataSource = image;
    //    rpImage.DataBind();
    //}

    //protected void udClass_Load(object sender, EventArgs e)
    //{
    //    var library = from lib in db.tbImageLibraryCates
    //                  join img in db.tbImageLibraries on lib.imagelibcate_id equals img.imagelibcate_id
    //                  where img.lop_id == Convert.ToInt32(ddlClass.SelectedItem.Value)
    //                  orderby img.imagelib_datecreate descending
    //                  select new
    //                  {
    //                      lib.imagelibcate_id,
    //                      lib.imagelibcate_title,
    //                      img.imagelib_image,
    //                      img.imagelib_summary,
    //                  };
    //    rpImage.DataSource = library;
    //    rpImage.DataBind();
    //}
}