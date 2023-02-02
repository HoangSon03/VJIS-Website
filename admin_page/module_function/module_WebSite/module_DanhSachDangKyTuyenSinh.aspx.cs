using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_WebSite_module_DanhSachDangKyTuyenSinh : System.Web.UI.Page
{
    dbcsdltuyensinhDataContext dbtuyensinh = new dbcsdltuyensinhDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var getData = from nc in dbtuyensinh.tbWebsite_DangKiTuyenSinhs
                      where nc.hocsinh_trangthai_dangky >= 0 //chưa tư vấn hoặc đã đang tư vấn
                      //&& nc.hocsinh_trangthai_dangky < 2
                      //&& nc.hocsinh_danhsachcho_khaosat == false // chưa thêm vào ds khảo sát
                      && nc.hocsinh_tinhtrang == 6 //đăng kí mới
                      orderby nc.chedo_id descending
                      select new
                      {
                          nc.hocsinh_id,
                          nc.hocsinh_name,
                          hocsinh_namsinh = nc.hocsinh_dateofbirth,
                          hocsinh_tuoi = DateTime.Now.Year - Convert.ToDateTime(nc.hocsinh_dateofbirth).Year + " tuổi",
                          nc.hocsinh_phuhuynh_name,
                          nc.hocsinh_tenme,
                          nc.hocsinh_address,
                          nc.hocsinh_phone,
                          nc.hocsinh_noidangky,
                          nc.hocsinh_dangki_class,
                          nc.hocsinh_sdtme,
                          nc.hocsinh_ghichu,
                         
                      };
        // đẩy dữ liệu vào gridivew
        grvList.DataSource = getData;
        grvList.DataBind();
    }
}