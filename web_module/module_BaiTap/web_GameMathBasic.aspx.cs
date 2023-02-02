using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_GameMathBasic : System.Web.UI.Page
{
    cls_Alert alert = new cls_Alert();
    public string sanpham;
    public string[] listSP = new string[] { "cái kẹo", "cái bánh", "quả táo", "trái banh", "bông hoa" };
    public string b1_cau1, b1_cau2, b1_cau3, b1_cau4, b1_cau5, b1_cau6, b1_cau7, b1_cau8, b1_cau9, b1_cau10;
    public string b2_cau1, b2_cau2, b2_cau3, b2_cau4, b2_cau5, b2_cau6, b2_cau7, b2_cau8, b2_cau9;
    public string b3_cau1;
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dvBaiTap.Visible = false;

        }
    }
    protected void btnStart_ServerClick(object sender, EventArgs e)
    {
        //alert.alert_Info(Page, "Vui lòng chờ đợi trong vài giây", "");
        txtKQ1.Value = "";
        txtKQ2.Value = "";
        txtKQ3.Value = "";
        txtKQ4.Value = "";
        txtKQ5.Value = "";
        txtKQ6.Value = "";
        txtKQ7.Value = "";
        txtKQ8.Value = "";
        txtKQ9.Value = "";
        txtKQ10.Value = "";
        txtb2KQ1.Value = "";
        txtb2KQ2.Value = "";
        txtb2KQ3.Value = "";
        txtb2KQ4.Value = "";
        txtb2KQ5.Value = "";
        txtb2KQ6.Value = "";
        txtb2KQ7.Value = "";
        txtb2KQ8.Value = "";
        txtb2KQ9.Value = "";
        txtHieu.Value = "";
        txtSoHang1.Value = "";
        txtSoHang2.Value = "";
        dvBaiTap.Visible = true;
        Random rndsp = new Random();
        int i = rndsp.Next(1, 5);
        sanpham = listSP[i];
        // Câu 1
        Random rnd1 = new Random();
        int sohang1_1 = rnd1.Next(11, 20);
        lblSo1_1.Text = sohang1_1 + "";
        int newstring1 = Convert.ToInt16(lblSo1_1.Text.Substring(1, 1));
        Random rnd1_2 = new Random();
        int sohang1_2 = rnd1_2.Next(1, newstring1);
        lblSo1_2.Text = sohang1_2 + "";
        b1_cau1 = (sohang1_1 - sohang1_2) + "";
        Thread.Sleep(1000);
        // Câu 2
        Random rnd2 = new Random();
        int sohang2_1 = rnd2.Next(11, 20);
        lblSo2_1.Text = sohang2_1 + "";
        int newstring2 = Convert.ToInt16(lblSo2_1.Text.Substring(1, 1));
        Random rnd2_2 = new Random();
        int sohang2_2 = rnd2_2.Next(1, newstring2);
        lblSo2_2.Text = sohang2_2 + "";
        b1_cau2 = (sohang2_1 - sohang2_2) + "";
        Thread.Sleep(1000);
        // Câu 3
        Random rnd3 = new Random();
        int sohang3_1 = rnd3.Next(11, 20);
        lblSo3_1.Text = sohang3_1 + "";
        int newstring3 = Convert.ToInt16(lblSo3_1.Text.Substring(1, 1));
        Random rnd3_2 = new Random();
        int sohang3_2 = rnd3_2.Next(1, newstring3);
        lblSo3_2.Text = sohang3_2 + "";
        b1_cau3 = (sohang3_1 - sohang3_2) + "";
        Thread.Sleep(1000);
        // Câu 4
        Random rnd4 = new Random();
        int sohang4_1 = rnd4.Next(11, 20);
        lblSo4_1.Text = sohang4_1 + "";
        int newstring4 = Convert.ToInt16(lblSo4_1.Text.Substring(1, 1));
        Random rnd4_2 = new Random();
        int sohang4_2 = rnd4_2.Next(1, newstring4);
        lblSo4_2.Text = sohang4_2 + "";
        b1_cau4 = (sohang4_1 - sohang4_2) + "";
        Thread.Sleep(1000);
        // Câu 5
        Random rnd5 = new Random();
        int sohang5_1 = rnd5.Next(11, 20);
        lblSo5_1.Text = sohang5_1 + "";
        int newstring5 = Convert.ToInt16(lblSo5_1.Text.Substring(1, 1));
        Random rnd5_2 = new Random();
        int sohang5_2 = rnd5_2.Next(1, newstring5);
        lblSo5_2.Text = sohang5_2 + "";
        b1_cau5 = (sohang5_1 - sohang5_2) + "";
        Thread.Sleep(1000);
        // Câu 6
        Random rnd6 = new Random();
        int sohang6_1 = rnd6.Next(11, 20);
        lblSo6_1.Text = sohang6_1 + "";
        int newstring6 = Convert.ToInt16(lblSo6_1.Text.Substring(1, 1));
        Random rnd6_2 = new Random();
        int sohang6_2 = rnd6_2.Next(1, newstring6);
        lblSo6_2.Text = sohang6_2 + "";
        b1_cau6 = (sohang6_1 - sohang6_2) + "";
        Thread.Sleep(1000);
        // Câu 7
        Random rnd7 = new Random();
        int sohang7_1 = rnd7.Next(11, 20);
        lblSo7_1.Text = sohang7_1 + "";
        int newstring7 = Convert.ToInt16(lblSo7_1.Text.Substring(1, 1));
        Random rnd7_2 = new Random();
        int sohang7_2 = rnd7_2.Next(1, newstring7);
        lblSo7_2.Text = sohang7_2 + "";
        b1_cau7 = (sohang7_1 - sohang7_2) + "";
        Thread.Sleep(1000);
        // Câu 8
        Random rnd8 = new Random();
        int sohang8_1 = rnd8.Next(11, 20);
        lblSo8_1.Text = sohang8_1 + "";
        int newstring8 = Convert.ToInt16(lblSo8_1.Text.Substring(1, 1));
        Random rnd8_2 = new Random();
        int sohang8_2 = rnd8_2.Next(1, newstring8);
        lblSo8_2.Text = sohang8_2 + "";
        b1_cau8 = (sohang8_1 - sohang8_2) + "";
        Thread.Sleep(1000);
        // Câu 9
        Random rnd9 = new Random();
        int sohang9_1 = rnd9.Next(11, 20);
        lblSo9_1.Text = sohang9_1 + "";
        int newstring9 = Convert.ToInt16(lblSo9_1.Text.Substring(1, 1));
        Random rnd9_2 = new Random();
        int sohang9_2 = rnd9_2.Next(1, newstring9);
        lblSo9_2.Text = sohang9_2 + "";
        b1_cau9 = (sohang9_1 - sohang9_2) + "";
        Thread.Sleep(1000);
        // Câu 10
        Random rnd10 = new Random();
        int sohang10_1 = rnd10.Next(11, 20);
        lblSo10_1.Text = sohang10_1 + "";
        int newstring10 = Convert.ToInt16(lblSo10_1.Text.Substring(1, 1));
        Random rnd10_2 = new Random();
        int sohang10_2 = rnd10_2.Next(1, newstring10);
        lblSo10_2.Text = sohang10_2 + "";
        b1_cau10 = (sohang10_1 - sohang10_2) + "";

        // Bài 2 Câu 1
        Random b2rnd1 = new Random();
        int b2sohang1_1 = b2rnd1.Next(11, 20);
        lbl1_1.Text = b2sohang1_1 + "";
        int newstring21 = Convert.ToInt16(lbl1_1.Text.Substring(1, 1));
        Random b2rnd1_2 = new Random();
        int b2sohang1_2 = b2rnd1_2.Next(1, newstring21);
        lbl1_2.Text = b2sohang1_2 + "";
        b2_cau1 = (b2sohang1_1 - b2sohang1_2) + "";
        Thread.Sleep(1000);
        // Bài 2 Câu 2
        Random b2rnd2 = new Random();
        int b2sohang2_1 = b2rnd2.Next(11, 20);
        lbl2_1.Text = b2sohang2_1 + "";
        int newstring22 = Convert.ToInt16(lbl2_1.Text.Substring(1, 1));
        Random b2rnd2_2 = new Random();
        int b2sohang2_2 = b2rnd2_2.Next(1, newstring22);
        lbl2_2.Text = b2sohang2_2 + "";
        b2_cau2 = (b2sohang2_1 - b2sohang2_2) + "";
        Thread.Sleep(1000);
        // Bài 2 Câu 3
        Random b2rnd3 = new Random();
        int b2sohang3_1 = b2rnd3.Next(11, 20);
        lbl3_1.Text = b2sohang3_1 + "";
        int newstring23 = Convert.ToInt16(lbl3_1.Text.Substring(1, 1));
        Random b2rnd3_2 = new Random();
        int b2sohang3_2 = b2rnd3_2.Next(1, newstring23);
        lbl3_2.Text = b2sohang3_2 + "";
        b2_cau3 = (b2sohang3_1 - b2sohang3_2) + "";
        Thread.Sleep(1000);
        // Bài 2 Câu 4
        Random b2rnd4 = new Random();
        int b2sohang4_1 = b2rnd4.Next(11, 20);
        lbl4_1.Text = b2sohang4_1 + "";
        int newstring24 = Convert.ToInt16(lbl4_1.Text.Substring(1, 1));
        Random b2rnd4_2 = new Random();
        int b2sohang4_2 = b2rnd4_2.Next(1, newstring24);
        lbl4_2.Text = b2sohang4_2 + "";
        b2_cau4 = (b2sohang4_1 - b2sohang4_2) + "";
        Thread.Sleep(1000);
        // Bài 2 Câu 5
        Random b2rnd5 = new Random();
        int b2sohang5_1 = b2rnd5.Next(11, 20);
        lbl5_1.Text = b2sohang5_1 + "";
        int newstring25 = Convert.ToInt16(lbl5_1.Text.Substring(1, 1));
        Random b2rnd5_2 = new Random();
        int b2sohang5_2 = b2rnd5_2.Next(1, newstring25);
        lbl5_2.Text = b2sohang5_2 + "";
        b2_cau5 = (b2sohang5_1 - b2sohang5_2) + "";
        Thread.Sleep(1000);
        // Bài 2 Câu 6
        Random b2rnd6 = new Random();
        int b2sohang6_1 = b2rnd6.Next(11, 20);
        lbl6_1.Text = b2sohang6_1 + "";
        int newstring26 = Convert.ToInt16(lbl6_1.Text.Substring(1, 1));
        Random b2rnd6_2 = new Random();
        int b2sohang6_2 = b2rnd6_2.Next(1, newstring26);
        lbl6_2.Text = b2sohang6_2 + "";
        b2_cau6 = (b2sohang6_1 - b2sohang6_2) + "";
        Thread.Sleep(1000);
        // Bài 2 Câu 7
        Random b2rnd7 = new Random();
        int b2sohang7_1 = b2rnd7.Next(11, 20);
        lbl7_1.Text = b2sohang7_1 + "";
        int newstring27 = Convert.ToInt16(lbl7_1.Text.Substring(1, 1));
        Random b2rnd7_2 = new Random();
        int b2sohang7_2 = b2rnd7_2.Next(1, newstring27);
        lbl7_2.Text = b2sohang7_2 + "";
        b2_cau7 = (b2sohang7_1 - b2sohang7_2) + "";
        Thread.Sleep(1000);
        // Bài 2 Câu 8
        Random b2rnd8 = new Random();
        int b2sohang8_1 = b2rnd8.Next(11, 20);
        lbl8_1.Text = b2sohang8_1 + "";
        int newstring28 = Convert.ToInt16(lbl8_1.Text.Substring(1, 1));
        Random b2rnd8_2 = new Random();
        int b2sohang8_2 = b2rnd8_2.Next(1, newstring28);
        lbl8_2.Text = b2sohang8_2 + "";
        b2_cau8 = (b2sohang8_1 - b2sohang8_2) + "";
        Thread.Sleep(1000);
        // Bài 2 Câu 9
        Random b2rnd9 = new Random();
        int b2sohang9_1 = b2rnd9.Next(11, 20);
        lbl9_1.Text = b2sohang9_1 + "";
        int newstring29 = Convert.ToInt16(lbl9_1.Text.Substring(1, 1));
        Random b2rnd9_2 = new Random();
        int b2sohang9_2 = b2rnd9_2.Next(1, newstring29);
        lbl9_2.Text = b2sohang9_2 + "";
        b2_cau9 = (b2sohang9_1 - b2sohang9_2) + "";
        // Bài 3 
        Random b3rnd1 = new Random();
        int b3sohang1_1 = b3rnd1.Next(11, 20);
        lblb3_1.Text = b3sohang1_1 + "";
        int newstring31 = Convert.ToInt16(lblb3_1.Text.Substring(1, 1));
        Random b3rnd2 = new Random();
        int b3sohang1_2 = b3rnd2.Next(1, newstring31);
        lblb3_2.Text = b3sohang1_2 + "";
        b3_cau1 = (b3sohang1_1 - b3sohang1_2) + "";


    }
    protected void btnNopBai_ServerClick(object sender, EventArgs e)
    {
        float diem = 0;
        b1_cau1 = Convert.ToInt16(lblSo1_1.Text) - Convert.ToInt16(lblSo1_2.Text) + "";
        if (txtKQ1.Value == b1_cau1)
        {
            diem = diem + float.Parse("0.5");
            txtKQ1.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ1.Attributes.CssStyle.Add("color", "red");

        b1_cau2 = Convert.ToInt16(lblSo2_1.Text) - Convert.ToInt16(lblSo2_2.Text) + "";
        if (txtKQ2.Value == b1_cau2)
        {
            diem = diem + float.Parse("0.5");
            txtKQ2.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ2.Attributes.CssStyle.Add("color", "red");

        b1_cau3 = Convert.ToInt16(lblSo3_1.Text) - Convert.ToInt16(lblSo3_2.Text) + "";
        if (txtKQ3.Value == b1_cau3)
        {
            diem = diem + float.Parse("0.5");
            txtKQ3.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ3.Attributes.CssStyle.Add("color", "red");

        b1_cau4 = Convert.ToInt16(lblSo4_1.Text) - Convert.ToInt16(lblSo4_2.Text) + "";
        if (txtKQ4.Value == b1_cau4)
        {
            diem = diem + float.Parse("0.5");
            txtKQ4.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ4.Attributes.CssStyle.Add("color", "red");

        b1_cau5 = Convert.ToInt16(lblSo5_1.Text) - Convert.ToInt16(lblSo5_2.Text) + "";
        if (txtKQ5.Value == b1_cau5)
        {
            diem = diem + float.Parse("0.5");
            txtKQ5.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ5.Attributes.CssStyle.Add("color", "red");

        b1_cau6 = Convert.ToInt16(lblSo6_1.Text) - Convert.ToInt16(lblSo6_2.Text) + "";
        if (txtKQ6.Value == b1_cau6)
        {
            diem = diem + float.Parse("0.5");
            txtKQ6.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ6.Attributes.CssStyle.Add("color", "red");

        b1_cau7 = Convert.ToInt16(lblSo7_1.Text) - Convert.ToInt16(lblSo7_2.Text) + "";
        if (txtKQ7.Value == b1_cau7)
        {
            diem = diem + float.Parse("0.5");
            txtKQ7.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ7.Attributes.CssStyle.Add("color", "red");

        b1_cau8 = Convert.ToInt16(lblSo8_1.Text) - Convert.ToInt16(lblSo8_2.Text) + "";
        if (txtKQ8.Value == b1_cau8)
        {
            diem = diem + float.Parse("0.5");
            txtKQ8.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ8.Attributes.CssStyle.Add("color", "red");

        b1_cau9 = Convert.ToInt16(lblSo9_1.Text) - Convert.ToInt16(lblSo9_2.Text) + "";
        if (txtKQ9.Value == b1_cau9)
        {
            diem = diem + float.Parse("0.5");
            txtKQ9.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ9.Attributes.CssStyle.Add("color", "red");

        b1_cau10 = Convert.ToInt16(lblSo10_1.Text) - Convert.ToInt16(lblSo10_2.Text) + "";
        if (txtKQ10.Value == b1_cau10)
        {
            diem = diem + float.Parse("0.5");
            txtKQ10.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtKQ10.Attributes.CssStyle.Add("color", "red");
        // bài 2
        b2_cau1 = Convert.ToInt16(lbl1_1.Text) - Convert.ToInt16(lbl1_2.Text) + "";
        if (txtb2KQ1.Value == b2_cau1)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ1.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ1.Attributes.CssStyle.Add("color", "red");

        b2_cau2 = Convert.ToInt16(lbl2_1.Text) - Convert.ToInt16(lbl2_2.Text) + "";
        if (txtb2KQ2.Value == b2_cau2)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ2.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ2.Attributes.CssStyle.Add("color", "red");

        b2_cau3 = Convert.ToInt16(lbl3_1.Text) - Convert.ToInt16(lbl3_2.Text) + "";
        if (txtb2KQ3.Value == b2_cau3)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ3.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ3.Attributes.CssStyle.Add("color", "red");

        b2_cau4 = Convert.ToInt16(lbl4_1.Text) - Convert.ToInt16(lbl4_2.Text) + "";
        if (txtb2KQ4.Value == b2_cau4)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ4.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ4.Attributes.CssStyle.Add("color", "red");

        b2_cau5 = Convert.ToInt16(lbl5_1.Text) - Convert.ToInt16(lbl5_2.Text) + "";
        if (txtb2KQ5.Value == b2_cau5)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ5.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ5.Attributes.CssStyle.Add("color", "red");

        b2_cau6 = Convert.ToInt16(lbl6_1.Text) - Convert.ToInt16(lbl6_2.Text) + "";
        if (txtb2KQ6.Value == b2_cau6)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ6.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ6.Attributes.CssStyle.Add("color", "red");

        b2_cau7 = Convert.ToInt16(lbl7_1.Text) - Convert.ToInt16(lbl7_2.Text) + "";
        if (txtb2KQ7.Value == b2_cau7)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ7.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ7.Attributes.CssStyle.Add("color", "red");

        b2_cau8 = Convert.ToInt16(lbl8_1.Text) - Convert.ToInt16(lbl8_2.Text) + "";
        if (txtb2KQ8.Value == b2_cau8)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ8.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ8.Attributes.CssStyle.Add("color", "red");

        b2_cau9 = Convert.ToInt16(lbl9_1.Text) - Convert.ToInt16(lbl9_2.Text) + "";
        if (txtb2KQ9.Value == b2_cau9)
        {
            diem = diem + float.Parse("0.5");
            txtb2KQ9.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtb2KQ9.Attributes.CssStyle.Add("color", "red");
        // bài 3
        b3_cau1 = Convert.ToInt16(txtSoHang1.Value) - Convert.ToInt16(txtSoHang2.Value) + "";
        if (txtHieu.Value == b3_cau1)
        {
            diem = diem + float.Parse("0.5");
            txtHieu.Attributes.CssStyle.Add("color", "blue");
        }
        else
            txtHieu.Attributes.CssStyle.Add("color", "red");
        tbTracNghiem_TestResult insert = new tbTracNghiem_TestResult();
        insert.baitap_name = "lop1_tuan21_toan1";
        insert.student_code = Request.Cookies["HocSinh"].Value;
        insert.result_point = diem;
        db.tbTracNghiem_TestResults.InsertOnSubmit(insert);
        db.SubmitChanges();
        if (diem >= 9)
        {
            alert.alert_Success(Page, "Điểm của con là " + diem + " điểm, con quá xuất sắc chúc mừng con ", "");
        }
        if (diem >= 7 && diem < 9)
            alert.alert_Success(Page, "Điểm của con là " + diem + " điểm, con cố gắng thêm nữa nhé ", "");
        else
            alert.alert_Success(Page, "Chúc mừng con đã làm xong bài, con cố gắng làm lại để được điểm cao hơn nhé", "");
    }
}