using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_BaiTap_web_GameGiaiCuuMickey : System.Web.UI.Page
{
    cls_Alert alert = new cls_Alert();
    protected string key;
    public string cauhoi;
    public string cautraloi;
    public int STT;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //dv_giaicuu.Visible = false;
            Session["dapan1"] = "";
            Session["dapan2"] = "";
            Session["dapan3"] = "";
            Session["dapan4"] = "";
            Session["dapan5"] = "";
        }
        next1.Visible = false;
        next2.Visible = false;
        next3.Visible = false;
        next4.Visible = false;
        happy.Visible = false;
    }
    protected void question1_ServerClick(object sender, EventArgs e)
    {
        STT = 1;
        txtKQ1.Value = "";
        //random câu hỏi 1;
        string[] listCauHoi1 = new string[] { "Số bé nhất có hai chữ số là?", "Số lớn nhất có hai chữ số là?" };
        Random rndsp = new Random();
        int i = rndsp.Next(0, 2);
        cauhoi = listCauHoi1[i];
        lbnoidungcauhoi.Text = cauhoi;
        //đáp án câu hỏi 1
        string[] listDapAn1 = new string[] { "10", "99" };
        cautraloi = listDapAn1[i];
        Session["dapan1"] = cautraloi;
        ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupCauhoi.Show(); ", true);
    }
    protected void question2_ServerClick(object sender, EventArgs e)
    {
        //nếu câu 1 chưa làm được thì không cho làm câu 2
        if (Session["dapan1"].ToString() == "pass")
        {
            STT = 2;
            txtKQ1.Value = "";
            //random câu hỏi 2;
            string[] listCauHoi2 = new string[] { "14 + 5 - 3 = ...", "9 - 3 + 8 = ..." };
            Random rndsp = new Random();
            int i = rndsp.Next(0, 2);
            cauhoi = listCauHoi2[i];
            lbnoidungcauhoi.Text = cauhoi;
            //đáp án câu hỏi 2
            string[] listDapAn2 = new string[] { "16", "14" };
            cautraloi = listDapAn2[i];
            Session["dapan2"] = cautraloi;
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupCauhoi.Show(); ", true);
        }
        else
        {
            alert.alert_Warning(Page, "Bé chưa làm câu hỏi đầu tiên!", "Hãy quay về làm câu đầu tiên nhé!");
        }
    }

    protected void question3_ServerClick(object sender, EventArgs e)
    {
        //nếu câu 2 chưa làm được thì không cho làm câu 3
        if (Session["dapan2"].ToString() == "pass")
        {
            STT = 3;
            txtKQ1.Value = "";
            //random câu hỏi 3;
            string[] listCauHoi3 = new string[] { "Số liền trước của số 78 là?", "Số liền sau của số 39 là?" };
            Random rndsp = new Random();
            int i = rndsp.Next(0, 2);
            cauhoi = listCauHoi3[i];
            lbnoidungcauhoi.Text = cauhoi;
            //đáp án câu hỏi 3
            string[] listDapAn3 = new string[] { "77", "40" };
            cautraloi = listDapAn3[i];
            Session["dapan3"] = cautraloi;
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupCauhoi.Show(); ", true);
        }
        else
        {
            alert.alert_Warning(Page, "Bé chưa làm câu hỏi trước đó!", "Hãy quay về làm câu đó nhé!");
        }
    }

    protected void question4_ServerClick(object sender, EventArgs e)
    {
        //nếu câu 3 chưa làm được thì không cho làm câu 4
        if (Session["dapan3"].ToString() == "pass")
        {
            STT = 4;
            txtKQ1.Value = "";
            //random câu hỏi 4;
            string[] listCauHoi4 = new string[] { "25 + 3 - 8 = ...", "32 - 7 + 2 = ..." };
            Random rndsp = new Random();
            int i = rndsp.Next(0, 2);
            cauhoi = listCauHoi4[i];
            lbnoidungcauhoi.Text = cauhoi;
            //đáp án câu hỏi 4
            string[] listDapAn4 = new string[] { "20", "27" };
            cautraloi = listDapAn4[i];
            Session["dapan4"] = cautraloi;
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupCauhoi.Show(); ", true);
        }
        else
        {
            alert.alert_Warning(Page, "Bé chưa làm câu hỏi trước đó!", "Hãy quay về làm câu đó nhé!");
        }
    }
    protected void question5_ServerClick(object sender, EventArgs e)
    {
        //nếu câu 5 chưa làm được thì không cho làm câu 5
        if (Session["dapan4"].ToString() == "pass")
        {
            STT = 5;
            txtKQ1.Value = "";
            //random câu hỏi 5;
            string[] listCauHoi5 = new string[] { "Số chẵn lớn nhất có hai chữ số là?", "Số lẻ nhỏ nhất có hai chữ số là?" };
            Random rndsp = new Random();
            int i = rndsp.Next(0, 2);
            cauhoi = listCauHoi5[i];
            lbnoidungcauhoi.Text = cauhoi;
            //đáp án câu hỏi 5
            string[] listDapAn5 = new string[] { "98", "11" };
            cautraloi = listDapAn5[i];
            Session["dapan5"] = cautraloi;
            ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Detail", "popupCauhoi.Show(); ", true);
        }
        else
        {
            alert.alert_Warning(Page, "Bé chưa làm câu hỏi trước đó!", "Hãy quay về làm câu đó nhé!");
        }
    }
    protected void btnTraloi_Click(object sender, EventArgs e)
    {
        //Đáp án câu 1
        if (txtKQ1.Value == Session["dapan1"].ToString())
        {
            alert.alert_Success(Page, "Bé đã làm đúng rồi", "");
            txtKQ1.Value = "";
            popupCauhoi.ShowOnPageLoad = false;
            Session["dapan1"] = "pass";
            ch1.Visible = false;
            line1.Visible = false;
            btnStart.Visible = false;
            next1.Visible = true;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "nextquestion()", true);
        }
        else
        if (txtKQ1.Value == Session["dapan2"].ToString())
        {
            //Đáp án 2
            alert.alert_Success(Page, "Bé đã làm đúng rồi", "");
            txtKQ1.Value = "";
            popupCauhoi.ShowOnPageLoad = false;
            Session["dapan2"] = "pass";
            ch2.Visible = false;
            line2.Visible = false;
            next2.Visible = true;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "nextquestion()", true);
        }
        else
        if (txtKQ1.Value == Session["dapan3"].ToString())
        {
            //đáp án câu 3
            alert.alert_Success(Page, "Bé đã làm đúng rồi", "");
            txtKQ1.Value = "";
            popupCauhoi.ShowOnPageLoad = false;
            Session["dapan3"] = "pass";
            ch3.Visible = false;
            line3.Visible = false;
            next3.Visible = true;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "nextquestion()", true);
        }
        else
        if (txtKQ1.Value == Session["dapan4"].ToString())
        {
            //đáp án câu 4
            alert.alert_Success(Page, "Bé đã làm đúng rồi", "");
            txtKQ1.Value = "";
            popupCauhoi.ShowOnPageLoad = false;
            Session["dapan4"] = "pass";
            ch4.Visible = false;
            line4.Visible = false;
            next4.Visible = true;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "nextquestion()", true);
        }
        else
        if (txtKQ1.Value == Session["dapan5"].ToString())
        {
            //đáp án câu 5
            alert.alert_Success(Page, "Bé đã làm đúng rồi", "");
            txtKQ1.Value = "";
            popupCauhoi.ShowOnPageLoad = false;
            Session["dapan5"] = "pass";
            ch5.Visible = false;
            line5.Visible = false;
            happy.Visible = true;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "thanhcong()", true);
        }
        else
        {
            alert.alert_Error(Page, "Bé làm sai rồi!", "Hãy làm lại nhé");
            txtKQ1.Value = "";
            popupCauhoi.ShowOnPageLoad = false;
        }
    }
    protected void btnbatdau_ServerClick(object sender, EventArgs e)
    {
        //dv_giaicuu.Visible = true;
        //btnbatdau.Visible = false;
        //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "batdau()", true);
    }
}