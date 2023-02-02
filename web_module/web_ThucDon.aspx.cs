using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_ThucDon : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    private int tuan;
    protected void Page_Load(object sender, EventArgs e)
    {
        var thucDonTuan = (from t in db.tbThucDonHangTuans
                           orderby t.thucdontuan_id descending
                           select t).FirstOrDefault();
        if (thucDonTuan != null)
        {
            tuan = thucDonTuan.thucdontuan_id;
            var getThu = from td in db.tbThucDonHangNgays
                         where td.thucdontuan_id == thucDonTuan.thucdontuan_id
                         group td by new
                         {
                             td.thucdon_thu,
                             td.thucdontuan_id
                         } into g
                         select new
                         {
                             thudon_id = g.First().thucdon_id,
                             thucdon_thu = g.First().thucdon_thu,
                         };
            div_KetQua.Visible = true;
            rpThu.DataSource = getThu;
            rpThu.DataBind();
            txtTuan.InnerText = "TUẦN " + thucDonTuan.thucdontuan_tuan;
            txtNgay.InnerText = thucDonTuan.thucdontuan_tungay.Value.ToString("dd/MM").Replace(' ', 'T') + " - " + Convert.ToDateTime(thucDonTuan.thucdontuan_tungay).AddDays(4).ToString("dd/MM").Replace(' ', 'T');
        }
        else
        {
            div_KetQua.Visible = false;
        }
    }

    protected void rpThu_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpMon = e.Item.FindControl("rpMon") as Repeater;
        string thu = DataBinder.Eval(e.Item.DataItem, "thucdon_thu").ToString();
        var getMonAn = (from td in db.tbThucDonHangNgays
                        where td.thucdon_thu == thu && td.thucdontuan_id == tuan
                        orderby td.thucdon_ngaybatdau descending
                        select new
                        {
                            thucdon_monan = td.thucdon_monan.ToString().Replace(",", "</br>"),
                        });
        rpMon.DataSource = getMonAn;
        rpMon.DataBind();
    }
}