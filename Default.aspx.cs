using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    //dbcsdltuyensinhDataContext dbtuyensinh = new dbcsdltuyensinhDataContext();
    public string slide;
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        // get tất cả các user control nào mình muốn cho nó shown ra
        var checkcontrol = (from uc in db.tbUserControls
                            where uc.usercontrolcate_id == 1 && uc.usercontrol_hiden == true
                            orderby uc.usercontrol_position ascending
                            select uc);
        //chạy vòng lặp để load các user control ra
        foreach (var item in checkcontrol)
        {
            //biến a mình gọi nó là controll chỉ là tên khoogn cần quan tâm
            //item.usercontrol_link là link usercontrol vd: ~/web_usercontrol/Uc_TieuHoc/Uc_Slide_Th.ascx
            Control a = (Control)Page.LoadControl(item.usercontrol_link);
            // gọi biến này mình đổ lên panel
            pnlDynamicControl.Controls.Add(a);
        }

        //get data lễ hội thể thao
        var getLeHoiTT = (from lh1 in db.tbWebsite_CacLeHois
                          where lh1.lehoi_id != 1
                          select lh1).Take(1);
        rpLeHoiTheThao.DataSource = getLeHoiTT;
        rpLeHoiTheThao.DataBind();
        //get data lễ hội hoa anh đào
        var getLeHoiAnhDao = (from lh1 in db.tbWebsite_CacLeHois
                              where lh1.lehoi_id != 1
                              select lh1).Skip(1).Take(1);
        rpLeHoiHoaAnhDao.DataSource = getLeHoiAnhDao;
        rpLeHoiHoaAnhDao.DataBind();
        //get data lễ hội hoa âm nhạc
        var getLeHoiAmNhac = (from lh1 in db.tbWebsite_CacLeHois
                              where lh1.lehoi_id != 1
                              select lh1).Skip(2).Take(1);
        rpLeHoiAmNhac.DataSource = getLeHoiAmNhac;
        rpLeHoiAmNhac.DataBind();
        //get data chương trình đào tạo
        var getChuongTrinhDaoTao = (from ctdt in db.tbWebsite_DaoTaoNgonNgus
                                    orderby ctdt.daotaongonngu_id descending
                                    select ctdt).Take(3);
        rpChuongTrinhDaoTao.DataSource = getChuongTrinhDaoTao;
        rpChuongTrinhDaoTao.DataBind();
        //get data cảm nhận của phụ huynh
        var getCamNhan = from c in db.tbWebsite_CamNhanPhuHuynhs
                         select c;
        rpCamNhanPhuHuynh.DataSource = getCamNhan;
        rpCamNhanPhuHuynh.DataBind();
        // get data giáo viên
        var getGiaoVien = (from gv in db.tbWebSite_GiaoViens select gv).Take(6);
        rpGiaoVien.DataSource = getGiaoVien;
        rpGiaoVien.DataBind();
    }
    public void setNull()
    {
        txtNameHs.Value = "";
        dteDateHS.Value = "";
        txtSchool.Value = "";
        ddlTuyenSinh.SelectedValue = "0";
        txtNamePh.Value = "";
        txtDiaChi.Value = "";
        txtEmail.Value = "";
        txtSoDienThoai.Value = "";
    }
    protected void btnDangKy_ServerClick(object sender, EventArgs e)
    {
        try
        {
            if (txtNameHs.Value == "" && dteDateHS.Value == "" && txtEmail.Value == "" && txtSoDienThoai.Value == "")
            {
                alert.alert_Warning(Page, "Vui Lòng Nhập Đầy Đủ Thông Tin", "");
            }
            else
            {
                //tbWebsite_DangKiTuyenSinh hsdk = new tbWebsite_DangKiTuyenSinh();
                //hsdk.hocsinh_name = txtNameHs.Value;
                //hsdk.hocsinh_dateofbirth = Convert.ToDateTime(dteDateHS.Value);
                //hsdk.hocsinh_quoctich = txtSchool.Value;
                //hsdk.hocsinh_dangki_class = ddlTuyenSinh.SelectedValue;
                //hsdk.hocsinh_phuhuynh_name = txtNamePh.Value;
                //hsdk.hocsinh_address = txtDiaChi.Value;
                //hsdk.hocsinh_email = txtEmail.Value;
                //hsdk.hocsinh_phone = txtSoDienThoai.Value;
                //hsdk.hocsinh_trangthai_dangky = 0;
                //hsdk.hocsinh_ngaydangky = DateTime.Now;
                //hsdk.hocsinh_noidangky = "Website";
                //hsdk.hocsinh_trangthai_guimail = false;
                //hsdk.hocsinh_danhsachcho_khaosat = false;
                //hsdk.hocsinh_tinhtrang = 6; //đăng ký mới
                //hsdk.hocsinh_nguondangky = "Website";
                tbWebsite_DangKiTuyenSinh insert = new tbWebsite_DangKiTuyenSinh();
                insert.hocsinh_name = txtNameHs.Value;
                insert.hocsinh_dateofbirth = Convert.ToDateTime(dteDateHS.Value);
                insert.hocsinh_quoctich = txtSchool.Value;
                insert.hocsinh_dangki_class = ddlTuyenSinh.SelectedValue;
                insert.hocsinh_phuhuynh_name = txtNamePh.Value;
                insert.hocsinh_address = txtDiaChi.Value;
                insert.hocsinh_email = txtEmail.Value;
                insert.hocsinh_phone = txtSoDienThoai.Value;
                insert.hocsinh_ngaydangky = DateTime.Now;
                db.tbWebsite_DangKiTuyenSinhs.InsertOnSubmit(insert);
                db.SubmitChanges();
                //db.tbWebsite_DangKiTuyenSinhs.InsertOnSubmit(hsdk);
                //db.SubmitChanges();
                SendMail("huyenntt.mkt@vjis.edu.vn, quynhpt@vjis.edu.vn");
                alert.alert_Success(Page, "Đã đăng ký thành công!", "Vui lòng chờ ban tuyển sinh liên hệ");
                setNull();
            }
        }
        catch (Exception)
        {

        }
    }
    private bool SendMail(string email)
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
                "<h3 style=\"margin-top:0px; text-align:center; color:#029ada\">Bạn có đăng kí tuyển sinh mới.</a></h3>" +
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

}
