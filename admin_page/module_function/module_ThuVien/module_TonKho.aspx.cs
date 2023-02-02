using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_module_function_module_TonKho : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        loadData();
    }
    private void loadData()
    {
        var getDataXuat = from bsct in db.tbThuVien_BookSach_ChiTiets
                          join bs in db.tbThuVien_BookSaches on bsct.thuvien_booksach_id equals bs.thuvien_booksach_id
                          join s in db.tbThuVien_Saches on bsct.thuvien_sach_id equals s.thuvien_sach_id
                          where bs.status == 1
                          group bsct by bsct.thuvien_sach_id into item
                          select new
                          {
                              item.Key,
                              sach_name = (from s in db.tbThuVien_Saches
                                           where s.thuvien_sach_id == item.Key
                                           select s.thuvien_sach_name).First(),
                              sach_soluongxuat = item.Sum(bsct => bsct.booksach_chitiet_soluong),
                          };
        var getData = from ns in db.tbThuVien_NhapSach_ChiTiets
                      join s in db.tbThuVien_Saches on ns.thuvien_sach_id equals s.thuvien_sach_id
                      group ns by ns.thuvien_sach_id into item
                      select new
                      {
                          item.Key,
                          sach_name = (from s in db.tbThuVien_Saches
                                       where s.thuvien_sach_id == item.Key
                                       select s.thuvien_sach_name).First(),
                          sach_soluongnhap = (item.Sum(ns => ns.nhapsach_chitiet_soluong)),
                      };

        var tonkho = from n in getData
                     select new
                     {
                         n.Key,
                         n.sach_name,
                         n.sach_soluongnhap,
                         soluongxs = n.sach_soluongnhap - (from x in getDataXuat where n.Key == x.Key select x).First().sach_soluongxuat == null ? 0 : (from x in getDataXuat where n.Key == x.Key select x).First().sach_soluongxuat,
                         tonkho = n.sach_soluongnhap - (from x in getDataXuat where n.Key == x.Key select x).First().sach_soluongxuat == null ? n.sach_soluongnhap : n.sach_soluongnhap - (from x in getDataXuat where n.Key == x.Key select x).First().sach_soluongxuat
                     };


        grvList.DataSource = tonkho;
        grvList.DataBind();
    }
}
