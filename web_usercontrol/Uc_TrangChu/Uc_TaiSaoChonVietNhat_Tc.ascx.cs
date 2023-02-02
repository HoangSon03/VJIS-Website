using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_TrangChu_Uc_TaiSaoChonVietNhat_Tc : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpSlide1.DataSource = from ts in db.tbWebsite_TaiSaoChonVietNhats where ts.taisaochonvietnhat_loai == 1 select ts;
        rpSlide1.DataBind();
        rpSlide1_icon.DataSource = from ts in db.tbWebsite_TaiSaoChonVietNhats where ts.taisaochonvietnhat_loai == 1 select ts;
        rpSlide1_icon.DataBind();
        rpSlide2.DataSource = from ts in db.tbWebsite_TaiSaoChonVietNhats where ts.taisaochonvietnhat_loai == 2 select ts;
        rpSlide2.DataBind();
        rpSlide2_Icon.DataSource = from ts in db.tbWebsite_TaiSaoChonVietNhats where ts.taisaochonvietnhat_loai == 2 select ts;
        rpSlide2_Icon.DataBind();
        rpSlide3.DataSource = from ts in db.tbWebsite_TaiSaoChonVietNhats where ts.taisaochonvietnhat_loai == 3 select ts;
        rpSlide3.DataBind();
        rpSlide3_Icon.DataSource = from ts in db.tbWebsite_TaiSaoChonVietNhats where ts.taisaochonvietnhat_loai == 3 select ts;
        rpSlide3_Icon.DataBind();
        //BLock Cac-LeHoi-Title

        //var listCacLeHoiTitle = from lh in db.tbWebsite_CacLeHois
        //                        where lh.lehoi_id == 6
        //                        select lh;
        //rpCacLeHoiTitle.DataSource = listCacLeHoiTitle;
        //rpCacLeHoiTitle.DataBind();
        //// BLock Các Lễ hội
        //var cacLeHoi1 = (from lh in db.tbWebsite_CacLeHois
        //                 orderby lh.lehoi_positon
        //                 where lh.lehoi_id != 6
        //                 select lh).Take(1);
        //rpBlockLeHoi1.DataSource = cacLeHoi1;
        //rpBlockLeHoi1.DataBind();

        //// BLock Các Lễ hội 2
        //var cacLeHoi2 = (from lh in db.tbWebsite_CacLeHois
        //                 orderby lh.lehoi_positon
        //                 where lh.lehoi_id != 6
        //                 select lh).Skip(1).Take(1);
        //rpBlockLeHoi2.DataSource = cacLeHoi2;
        //rpBlockLeHoi2.DataBind();

        //// BLock Các Lễ hội 3
        //var cacLeHoi3 = (from lh in db.tbWebsite_CacLeHois
        //                 orderby lh.lehoi_positon
        //                 where lh.lehoi_id != 6
        //                 select lh).Skip(2).Take(1);
        //rpBlockLeHoi3.DataSource = cacLeHoi3;
        //rpBlockLeHoi3.DataBind();
    }
}