using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_ThuVien_web_CheckDonHangMuonSach : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    DataTable dtProduct;
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["spChiTiet"] = null;
            loadData();
        }
        if (Request.Cookies["HocSinh"] != null)
        {
            string name = Request.Cookies["HocSinh"].Value;
            //txtHocSinh.Value = Session["code"].ToString();
            var hocsinh = from hs in db.tbHocSinhs
                          where hs.hocsinh_code.Contains(name)
                          select hs;
            //check tk của gv
            var checkTK = from gv in db.admin_Users
                          where gv.username_username == name
                          select gv;
            if (hocsinh.Count() > 0)
            {
                txt_Name.Value = hocsinh.SingleOrDefault().hocsinh_name;
                txt_Email.Value = hocsinh.SingleOrDefault().hocsinh_eamilba;
            }
            else if (checkTK.Count() > 0)
            {
                txt_Name.Value = checkTK.SingleOrDefault().username_fullname;
                txt_Email.Value = checkTK.SingleOrDefault().username_email;
            }
            loaddatatable();
            dtProduct = (DataTable)Session["spChiTiet"];

            //load Cookie mượn sách để lấy data
            //loadData();
        }
        else
        {
            Response.Redirect("/trang-chu");
        }
    }
    public void loadData()
    {
        if (Request.Cookies["cartbook"] != null)
        {

            //load Cookie mượn sách để lấy data
            string listID = Request.Cookies["cartbook"].Value;
            string[] getcheckid = listID.Split(',').Skip(1).ToArray();
            foreach (var item in getcheckid)
            {

                var getSach = (from s in db.tbThuVien_Saches
                               where s.thuvien_sach_id == Convert.ToInt32(item)
                               select s).SingleOrDefault();
                if (getSach != null)
                {
                    if (Session["spChiTiet"] != null)
                    {
                        DataRow row = dtProduct.NewRow();
                        row["thuvien_sach_id"] = getSach.thuvien_sach_id;
                        row["thuvien_sach_name"] = getSach.thuvien_sach_name;
                        row["thuvien_sach_image"] = getSach.thuvien_sach_image;
                        row["booksach_chitiet_soluong"] = 1;
                        dtProduct.Rows.Add(row);
                        Session["spChiTiet"] = dtProduct;
                    }
                    else
                    {
                        //load datatable
                        loaddatatable();
                        DataRow row = dtProduct.NewRow();
                        row["thuvien_sach_id"] = getSach.thuvien_sach_id;
                        row["thuvien_sach_name"] = getSach.thuvien_sach_name;
                        row["thuvien_sach_image"] = getSach.thuvien_sach_image;
                        row["booksach_chitiet_soluong"] = 1;
                        dtProduct.Rows.Add(row);
                        Session["spChiTiet"] = dtProduct;
                    }
                }
            }
            rpMuonSach.DataSource = dtProduct;
            rpMuonSach.DataBind();
        }
    }
    public void loaddatatable()
    {
        try
        {
            if (dtProduct == null)
            {
                dtProduct = new DataTable();
                dtProduct.Columns.Add("thuvien_sach_id", typeof(int));
                dtProduct.Columns.Add("thuvien_sach_name", typeof(string));
                dtProduct.Columns.Add("thuvien_sach_image", typeof(string));
                dtProduct.Columns.Add("booksach_chitiet_soluong", typeof(int));
            }
        }
        catch { }
    }
    protected void btnXoa_ServerClick(object sender, EventArgs e)
    {
        int _id = Convert.ToInt32(txt_ID.Value);
        dtProduct = (DataTable)Session["spChiTiet"];
        foreach (DataRow row in dtProduct.Rows)
        {
            string product_id = row["thuvien_sach_id"].ToString();
            if (product_id == _id.ToString())
            {
                dtProduct.Rows.Remove(row);
                Session["spChiTiet"] = dtProduct;
                break;
            }
        }
        rpMuonSach.DataSource = dtProduct;
        rpMuonSach.DataBind();
    }

    protected void btnMuonSach_ServerClick(object sender, EventArgs e)
    {
        dtProduct = (DataTable)Session["spChiTiet"];
        if (dtProduct == null)
        {
            alert.alert_Error(Page, "Bạn chưa có sách nào để mượn!", "Vui lòng chọn sách trước khi mượn!");
        }
        else
        {
            try
            {
                //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "text", "DisplayLoadingIcon()()", true);
                //insert vào đơn mượn sách
                tbThuVien_BookSach insert = new tbThuVien_BookSach();
                insert.thuvien_booksach_tungay = Convert.ToDateTime(txt_NgayTra.Value);
                insert.thuvien_booksach_denngay = Convert.ToDateTime(txt_NgayMuon.Value);
                insert.khachhang_name = Request.Cookies["HocSinh"].Value;
                insert.hidden = false;
                insert.status = 0;
                insert.thuvien_booksach_createdate = DateTime.Now;
                db.tbThuVien_BookSaches.InsertOnSubmit(insert);
                db.SubmitChanges();
                //insert vào đơn mượn sách chi tiết
                foreach (DataRow row in dtProduct.Rows)
                {
                    tbThuVien_BookSach_ChiTiet MSCT = new tbThuVien_BookSach_ChiTiet();
                    MSCT.thuvien_sach_id = Convert.ToInt32(row["thuvien_sach_id"]);
                    MSCT.booksach_chitiet_soluong = Convert.ToInt32(row["booksach_chitiet_soluong"]);
                    MSCT.thuvien_booksach_id = insert.thuvien_booksach_id;
                    MSCT.booksach_chitiet_tungay = Convert.ToDateTime(txt_NgayTra.Value);
                    MSCT.booksach_chitiet_denngay = Convert.ToDateTime(txt_NgayMuon.Value);
                    db.tbThuVien_BookSach_ChiTiets.InsertOnSubmit(MSCT);
                    db.SubmitChanges();
                }
                string name = Request.Cookies["HocSinh"].Value.Substring(0, 2);
                if (name.Contains("HS"))
                {
                    username = "học sinh";
                }
                else
                {
                    username = "giáo viên";
                }
                SendMail("luuvanquyet2612@gmail.com", username);
                HttpCookie ck = new HttpCookie("cartbook");
                string s = ck.Value;
                ck.Value = "";  //set a blank value to the cookie 
                ck.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(ck);
                //Response.Redirect("/trang-chu");
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "AlertBox", "swal('Mượn sách thành công!', 'Vui lòng đợi phản hồi từ thủ thư','success').then(function(){window.location = '/trang-chu';})", true);

            }
            catch (Exception) { }

        }
    }
    private bool SendMail(string email, string username)
    {

        if (email != "")
        {
            try
            {
                var fromAddress = "thongbaovietnhatschool@gmail.com";//  Email Address from where you send the mail 
                var toAddress = email;
                const string fromPassword = "neiabcekdjluofid";
                string subject, title;
                title = "Thông báo";
                subject = "<!DOCTYPE html><html><head><title></title></head><body ><div>" +
                "<h3 style=\"margin-top:0px; text-align:center; color:#029ada\">Bạn có đơn mượn sách mới từ " + username + ". Truy cập ứng dụng để biết thêm chi tiết.</a></h3>" +
                "</div></body></html>";
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                    smtp.Timeout = 20000;
                }
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress(fromAddress, "Trường Liên cấp Việt Nhật");
                mm.Subject = title;
                mm.To.Add(toAddress);
                mm.IsBodyHtml = true;
                mm.Body = subject;
                smtp.Send(mm);
                return true;
            }
            catch
            {
                return false;
            }
        }
        else
            return false;
    }
    protected void btnUpdate_ServerClick(object sender, EventArgs e)
    {
        try
        {
            // kiểm tra id
            int _id = Convert.ToInt32(txt_ID.Value);
            if (Session["spChiTiet"] != null)
            {
                dtProduct = (DataTable)Session["spChiTiet"];
                // chạy foreach để lặp lại các row 
                foreach (DataRow row in dtProduct.Rows)
                {
                    string product_id = row["thuvien_sach_id"].ToString();
                    if (product_id == _id.ToString())
                    {
                        // lưu data bằng input đầu vào
                        row.SetField("booksach_chitiet_soluong", txt_SoLuong.Value);
                        rpMuonSach.DataSource = dtProduct;
                        rpMuonSach.DataBind();
                    }
                }
            }
        }
        catch (Exception) { }
    }
}