using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_BaiTap_web_GameTiengVietBasic1 : System.Web.UI.Page
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
            mau = "green";
        }
        else
        {
            mau = "color:red;";
        }
        //Câu 2
        if (txtread1.Value == "ếp" || txtread1.Value == "ep")
        {
            mau1 = "color:green;";
        }
        else
        {
            mau1 = "color:red;";
        }
        //Câu 3
        if (txtread2.Value == "ếp" || txtread2.Value == "ep")
        {
            mau2 = "color:green;";
        }
        else
        {
            mau2 = "color:red;";
        }
        //Câu 4
        if (txtread3.Value == "ẹp" || txtread3.Value == "ep")
        {
            mau3 = "color:green;";
        }
        else
        {
            mau3 = "color:red;";
        }
        //Câu 5
        if (txtread4.Value == "ép" || txtread4.Value == "ep")
        {
            mau4 = "color:green;";
        }
        else
        {
            mau4 = "color:red;";
        }
        //Câu 6
        if (txtread5.Value == "ếp" || txtread5.Value == "ep")
        {
            mau5 = "color:green;";
        }
        else
        {
            mau5 = "color:red;";
        }
        //Câu 7
        if (txtread6.Value == "ẹp" || txtread6.Value == "ep")
        {
            mau6 = "color:green;";
        }
        else
        {
            mau6 = "color:red;";
        }
        //Câu 8
        if (txtread7.Value == "ép" || txtread7.Value == "ep")
        {
            mau7 = "color:green;";
        }
        else
        {
            mau7 = "color:red;";
        }
        //Câu 9
        if (txtread8.Value == "ếp" || txtread8.Value == "ep")
        {
            mau8 = "color:green;";
        }
        else
        {
            mau8 = "color:red;";
        }
        //Câu 10
        if (txtread9.Value == "ếp" || txtread9.Value == "ep")
        {
            mau9 = "color:green;";
        }
        else
        {
            mau9 = "color:red;";
        }
        //Câu 11
        if (txtread10.Value == "ẹp" || txtread10.Value == "ep")
        {
            mau10 = "color:green;";
        }
        else
        {
            mau10 = "color:red;";
        }
        //Câu 12
        if (txtread11.Value == "ệp" || txtread11.Value == "ep")
        {
            mau11 = "color:green;";
        }
        else
        {
            mau11 = "color:red;";
        }
    }
}