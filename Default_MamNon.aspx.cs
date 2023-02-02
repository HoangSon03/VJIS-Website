using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default_MamNon : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var getDataSlide = from mn in db.tbWebsite_Slides
                           select new
                           {
                               mn.slide_image,
                           };
        rpSlide.DataSource = getDataSlide;
        rpSlide.DataBind();
        getGiaoVien();
        getCamNhan();
        getTinTuc();
    }
    private void getGiaoVien()
    {
        var getDataGV = from mn in db.tbWebSite_GiaoViens
                        select new
                        {
                            mn.giaovien_image,
                        };
        rpGiaoVien.DataSource = getDataGV;
        rpGiaoVien.DataBind();
    }
    private void getCamNhan()
    {
        var getDataCamNhan = from mn in db.tbWebsite_CamNhanPhuHuynhs
                                select new
                                {
                                    mn.camnhan_namephuhuynh,
                                    mn.camnhan_image,
                                    mn.camnhan_content
                                };
        rpCamNhan.DataSource = getDataCamNhan;
        rpCamNhan.DataBind();
    }
    private void getTinTuc()
    {
        var getDataTinTuc = from tt in db.tbWebsite_News
                            select new
                            {
                                tt.news_id,
                                tt.news_title,
                                tt.news_image,
                                tt.news_summary,
                                tt.news_datecreate,

                            };
        rpTinTuc.DataSource = getDataTinTuc;
        rpTinTuc.DataBind();
    }
}