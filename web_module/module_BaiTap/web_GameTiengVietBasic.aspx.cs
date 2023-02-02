using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_BaiTap_web_GameTiengVietBasic : System.Web.UI.Page
{
    public string mau, mau1, mau2, mau3, mau4, mau5, mau6, mau7, mau8, mau9, mau10, mau11;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
        mau = "";
        mau1 = "";
        mau2= "";
        mau3 = "";
        mau4 = "";
        mau5 = "";
        mau6 = "";
        mau7 = "";
        mau8 = "";
        mau9 = "";
        mau10 = "";
        mau11 = "";
    }

    protected void btnHoanthanh_ServerClick(object sender, EventArgs e)
    {
        //Câu 1
        if(txtread.Value== "ép" || txtread.Value == "ep")
        {
            txtread.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 2
        if (txtread1.Value == "ếp" || txtread1.Value == "ep")
        {
            txtread1.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread1.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 3
        if (txtread2.Value == "ếp" || txtread2.Value == "ep")
        {
            txtread2.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread2.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 4
        if (txtread3.Value == "ẹp" || txtread3.Value == "ep")
        {
            txtread3.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread3.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 5
        if (txtread4.Value == "ép" || txtread4.Value == "ep")
        {
            txtread4.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread4.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 6
        if (txtread5.Value == "ếp" || txtread5.Value == "ep")
        {
            txtread5.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread5.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 7
        if (txtread6.Value == "ẹp" || txtread6.Value == "ep")
        {
            txtread6.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread6.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 8
        if (txtread7.Value == "ép" || txtread7.Value == "ep")
        {
            txtread7.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread7.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 9
        if (txtread8.Value == "ếp" || txtread8.Value == "ep")
        {
            txtread8.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread8.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 10
        if (txtread9.Value == "ếp" || txtread9.Value == "ep")
        {
            txtread9.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread9.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 11
        if (txtread10.Value == "ẹp" || txtread10.Value == "ep")
        {
            txtread10.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread10.Attributes.CssStyle.Add("color", "red");
        }
        //Câu 12
        if (txtread11.Value == "ệp" || txtread11.Value == "ep")
        {
            txtread11.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtread11.Attributes.CssStyle.Add("color", "red");
        }

        //Câu 12
        if (txtlisten.Value == "ẹp" || txtlisten.Value == "ep")
        {
            txtlisten.Attributes.CssStyle.Add("color", "#099429");
        }
        else
        {
            txtlisten.Attributes.CssStyle.Add("color", "red");
        }
    }
}