using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_web_GiaiDauCoVua : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    public int STT = 1;
    cls_Alert alert = new cls_Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        //var listXepHang = (from hs in db.tbHocSinhTrongLops
        //                  join tt in db.tb_THanhTIchCoVuas on hs.hstl_id equals tt.hstl_id

        //                  group hs by hs.hstl_id into hocsinh 
        //                  select new
        //                  {
        //                      hstl_id = hocsinh.Key,
        //                      lop_name = (from l in db.tbLops
        //                                  join hstl in db.tbHocSinhTrongLops on l.lop_id equals hstl.lop_id
        //                                  where hstl.hstl_id == hocsinh.Key
        //                                  select l).FirstOrDefault().lop_name,
        //                      hocsinh_name = (from hs in db.tbHocSinhs
        //                                      join hstl in db.tbHocSinhTrongLops on hs.hocsinh_id equals hstl.hocsinh_id
        //                                      where hstl.hstl_id == hocsinh.Key
        //                                      select hs).FirstOrDefault().hocsinh_name,
        //                      thanhtich_diem = (from ttd in db.tb_THanhTIchCoVuas where ttd.hstl_id == hocsinh.Key select ttd).Sum(x => x.thanhtich_diem),
        //                  }).OrderByDescending(x=>x.thanhtich_diem);
        //rpBangXepHang.DataSource = listXepHang;
        //rpBangXepHang.DataBind();
    }

    protected void btnK1_ServerClick(object sender, EventArgs e)
    {
        if (txtGioiTinh.Value == "")
        {
            alert.alert_Warning(Page, "Vui lòng chọn giới tính!", "");
        }
        else
        {
            var listXepHang = (from hstl in db.tbHocSinhTrongLops
                               join tt in db.tb_THanhTIchCoVuas on hstl.hstl_id equals tt.hstl_id
                               join l in db.tbLops on hstl.lop_id equals l.lop_id
                               where l.khoi_id == 1
                               && tt.thanhtich_gioitinh == Convert.ToBoolean(txtGioiTinh.Value)
                               //&& tt.thanhtich_id == 1
                               group hstl by hstl.hstl_id into hocsinh
                               select new
                               {
                                   hstl_id = hocsinh.Key,
                                   lop_name = (from l in db.tbLops
                                               join hstl in db.tbHocSinhTrongLops on l.lop_id equals hstl.lop_id
                                               where hstl.hstl_id == hocsinh.Key
                                               select l).FirstOrDefault().lop_name,
                                   hocsinh_name = (from hs in db.tbHocSinhs
                                                   join hstl in db.tbHocSinhTrongLops on hs.hocsinh_id equals hstl.hocsinh_id
                                                   where hstl.hstl_id == hocsinh.Key
                                                   select hs).FirstOrDefault().hocsinh_name,
                                   thanhtich_diem = (from ttd in db.tb_THanhTIchCoVuas where ttd.hstl_id == hocsinh.Key select ttd).Sum(x => x.thanhtich_diem),
                               }).OrderByDescending(x => x.thanhtich_diem);
            rpBangXepHang.DataSource = listXepHang;
            rpBangXepHang.DataBind();
        }
    }



    protected void btnK2_K3_ServerClick(object sender, EventArgs e)
    {
        if (txtGioiTinh.Value == "")
        {
            alert.alert_Warning(Page, "Vui lòng chọn giới tính!", "");
        }
        else
        {
            var listXepHang = (from hstl in db.tbHocSinhTrongLops
                               join tt in db.tb_THanhTIchCoVuas on hstl.hstl_id equals tt.hstl_id
                               join l in db.tbLops on hstl.lop_id equals l.lop_id
                               where (l.khoi_id == 2 || l.khoi_id == 3) && tt.thanhtich_gioitinh == Convert.ToBoolean(txtGioiTinh.Value)
                               group hstl by hstl.hstl_id into hocsinh
                               select new
                               {
                                   hstl_id = hocsinh.Key,
                                   lop_name = (from l in db.tbLops
                                               join hstl in db.tbHocSinhTrongLops on l.lop_id equals hstl.lop_id
                                               where hstl.hstl_id == hocsinh.Key
                                               select l).FirstOrDefault().lop_name,
                                   hocsinh_name = (from hs in db.tbHocSinhs
                                                   join hstl in db.tbHocSinhTrongLops on hs.hocsinh_id equals hstl.hocsinh_id
                                                   where hstl.hstl_id == hocsinh.Key
                                                   select hs).FirstOrDefault().hocsinh_name,
                                   thanhtich_diem = (from ttd in db.tb_THanhTIchCoVuas where ttd.hstl_id == hocsinh.Key select ttd).Sum(x => x.thanhtich_diem),
                               }).OrderByDescending(x => x.thanhtich_diem);
            rpBangXepHang.DataSource = listXepHang;
            rpBangXepHang.DataBind();
        }
    }

    protected void btnK4_K5_ServerClick(object sender, EventArgs e)
    {
        if (txtGioiTinh.Value == "")
        {
            alert.alert_Warning(Page, "Vui lòng chọn giới tính!", "");
        }
        else
        {
            var listXepHang = (from hstl in db.tbHocSinhTrongLops
                               join tt in db.tb_THanhTIchCoVuas on hstl.hstl_id equals tt.hstl_id
                               join l in db.tbLops on hstl.lop_id equals l.lop_id
                               where (l.khoi_id == 4 || l.khoi_id == 5) && tt.thanhtich_gioitinh == Convert.ToBoolean(txtGioiTinh.Value)
                               group hstl by hstl.hstl_id into hocsinh
                               select new
                               {
                                   hstl_id = hocsinh.Key,
                                   lop_name = (from l in db.tbLops
                                               join hstl in db.tbHocSinhTrongLops on l.lop_id equals hstl.lop_id
                                               where hstl.hstl_id == hocsinh.Key
                                               select l).FirstOrDefault().lop_name,
                                   hocsinh_name = (from hs in db.tbHocSinhs
                                                   join hstl in db.tbHocSinhTrongLops on hs.hocsinh_id equals hstl.hocsinh_id
                                                   where hstl.hstl_id == hocsinh.Key
                                                   select hs).FirstOrDefault().hocsinh_name,
                                   thanhtich_diem = (from ttd in db.tb_THanhTIchCoVuas where ttd.hstl_id == hocsinh.Key select ttd).Sum(x => x.thanhtich_diem),
                               }).OrderByDescending(x => x.thanhtich_diem);
            rpBangXepHang.DataSource = listXepHang;
            rpBangXepHang.DataBind();
        }
    }
}