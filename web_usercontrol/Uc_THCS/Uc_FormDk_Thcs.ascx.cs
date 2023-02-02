using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_usercontrol_Uc_THCS_Uc_FormDk_Thcs : System.Web.UI.UserControl
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert cls = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnConfirm_ServerClick(object sender, EventArgs e)
    {
        if (txt_phone.Value == "" && txt_email.Value == "" && txt_name.Value == "")
        {
            cls.alert_Warning(Page, "Vui Lòng Thông Tin Đầy Đủ!", "");
        }
        else
        {
            tbRegister ins = new tbRegister();
            ins.register_name = txt_name.Value;
            ins.register_email = txt_email.Value;
            ins.register_phone = txt_phone.Value;
            ins.register_age = Convert.ToInt32(txt_age.Value);
            db.tbRegisters.InsertOnSubmit(ins);
            db.SubmitChanges();
            cls.alert_Success(Page, "Chúng Tôi Sẽ Liên Lạc Bạn Trong Vòng 24h!", "");
        }
    }
}