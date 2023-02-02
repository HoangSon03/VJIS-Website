using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Data.SqlClient;

public partial class admin_page_module_function_module_ThuKho_module_ThuKho : System.Web.UI.Page
{
    dbcsdlwebsiteDataContext db = new dbcsdlwebsiteDataContext();
    cls_Alert alert = new cls_Alert();
    private int stt = 1;
    private int _id;
    private static int CoSo;
    protected void Page_Load(object sender, EventArgs e)
    {
        loaddata();
    }

    private void loaddata()
    {
        Session["spChiTiet"] = null;
        
        var getdata = from ns in db.tbThuVien_NhapSaches
                      join u in db.admin_Users on ns.username_id equals u.username_id
                      orderby ns.nhapsach_code descending
                      select new
                      {
                          ns.nhapsach_id,
                          u.username_fullname,
                          ns.nhapsach_createday,
                          ns.nhapsach_code,
                          ns.nhapsach_tongtien,  
                      };
        
        grvList.DataSource = getdata;
        grvList.DataBind();
    }



    protected void btnChiTiet_Click(object sender, EventArgs e)
    {
        _id = Convert.ToInt32(grvList.GetRowValues(grvList.FocusedRowIndex, new string[] { "nhapsach_id" }));
        Response.Redirect("admin-quan-ly-nhap-hang-" + _id);
    }

    protected void btnImport_ServerClick(object sender, EventArgs e)
    {
        if (!fuUpload.HasFile)
            alert.alert_Warning(Page, "Vui lòng chọn file excel cần nhập!", "");
        else
        {
            string fileName = fuUpload.FileName;//Lấy tên file
            string ext = Path.GetExtension(fileName);//Lấy đuôi file

            if (ext.ToLower() == ".xls" || ext.ToLower().Equals(".xlsx")) //Kiểm tra đuôi file
            {
                string path = string.Concat(Server.MapPath("~/Excel Files/coso_" + CoSo + "_" + DateTime.Now.ToString("dd-MM-yyyy_hh_mm_ss") + fileName)); //Đường dẫn lưu file

                //Nếu trong thư mục trùng file (name) thì xóa và lưu file excel mới
                if (File.Exists(path))//Kiểm tra file đã tồn tại hay chưa
                    File.Delete(path);//Xóa file đã tồn tại
                fuUpload.SaveAs(path); //Lưu file excel
                string conString = string.Empty;//Chuỗi kết nối
                string extension = Path.GetExtension(fuUpload.PostedFile.FileName);//Lấy đuôi file
                switch (extension)//Kiểm tra đuôi file
                {
                    case ".xls": //Excel 97-03
                        conString = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString; //Lấy chuỗi kết nối trong web.config
                        //ví dụ: conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
                        break;
                    case ".xlsx": //Excel 07 or higher
                        conString = ConfigurationManager.ConnectionStrings["Excel07+ConString"].ConnectionString;
                        break;

                }
                conString = string.Format(conString, path);//Đường dẫn file excel
                using (OleDbConnection excel_con = new OleDbConnection(conString))//Kết nối với file excel
                {
                    excel_con.Open();//Mở kết nối
                    //Error : System.InvalidOperationException: 'The connection property has not been initialized.'
                    //Lỗi này do chưa khai báo connection string trong web.config

                    string sheet1 = excel_con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null).Rows[0]["tbHocSinh"].ToString();//Lấy tên sheet1
                    DataTable dtExcelData = new DataTable();//Tạo 1 bảng tạm

                    //[OPTIONAL]: It is recommended as otherwise the data will be considered as String by default.
                    dtExcelData.Columns.AddRange(new DataColumn[6] { new DataColumn("hocsinh_code", typeof(string)),
                                                                     new DataColumn("hocsinh_name", typeof(string)),
                                                                     new DataColumn("hocsinh_ngaysinh", typeof(DateTime)),
                                                                     new DataColumn("hocsinh_tenme", typeof(string)),
                                                                     new DataColumn("hocsinh_sdtme", typeof(string)),
                                                                     new DataColumn("hocsinh_eamilme", typeof(string))

                                                                    });

                    using (OleDbDataAdapter oda = new OleDbDataAdapter("SELECT * FROM [" + sheet1 + "]", excel_con))//Lấy dữ liệu từ sheet1
                    {
                        oda.Fill(dtExcelData);//Đổ dữ liệu vào bảng tạm
                    }
                    excel_con.Close();//Đóng kết nối

                    string consString = ConfigurationManager.ConnectionStrings["db_quantrimamnonConnectionString"].ConnectionString;//Chuỗi kết nối
                    using (SqlConnection con = new SqlConnection(consString))//Kết nối với database
                    {
                        using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))//Copy dữ liệu từ bảng tạm vào database
                        {
                            //Set the database table name
                            sqlBulkCopy.DestinationTableName = "tbHocSinh";
                            //[OPTIONAL]: Map the Excel columns with that of the database table
                            sqlBulkCopy.ColumnMappings.Add("hocsinh_code", "hocsinh_code");
                            sqlBulkCopy.ColumnMappings.Add("hocsinh_name", "hocsinh_name");
                            sqlBulkCopy.ColumnMappings.Add("hocsinh_ngaysinh", "hocsinh_ngaysinh");
                            sqlBulkCopy.ColumnMappings.Add("hocsinh_tenme", "hocsinh_tenme");
                            sqlBulkCopy.ColumnMappings.Add("hocsinh_sdtme", "hocsinh_sdtme");
                            sqlBulkCopy.ColumnMappings.Add("hocsinh_eamilme", "hocsinh_eamilme");
                            con.Open();
                            sqlBulkCopy.WriteToServer(dtExcelData);
                            con.Close();
                        }
                    }
                }
 
            }
            else
                alert.alert_Warning(Page, "File chọn không đúng định dạng!", "");//Thông báo
        }
    }

    


}