using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_LeHoiLon_web_KyNang : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        //rpNewscate.DataSource = from intro in db.tbWebsite_NewsCates
        //                        where intro.newscate_active == true
        //                        select intro;
        //rpNewscate.DataBind();
        rpChuongTrinhDaoTao.DataSource = from n in db.tbWebsite_DaoTaoNgonNgus
                               where n.daotaongonngu_id == 4
                               select n;
        rpChuongTrinhDaoTao.DataBind();
    }
}