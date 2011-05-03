using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using WebsiteHoiDap.BUS;

namespace WebsiteHoiDap.Controls
{
    public partial class ucDangKy : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDongY_Click(object sender, EventArgs e)
        {
            try
            {
                // kiểm tra dữ liệu

                // nếu dữ liệu hợp lệ
                ThanhVien thanhVienDto = new ThanhVien();
                thanhVienDto.TenTaiKhoan = txtTenDangNhap.Text;
                thanhVienDto.MatKhau = txtMatKhau.Text;
                thanhVienDto.Email = txtEmail.Text;
                thanhVienDto.Diem = 0; // khi đọc bảng tham số sẽ truyền giá trị vô
                thanhVienDto.CapBac = 1; // khi đọc bảng tham số sẽ truyền giá trị vô
                thanhVienDto.TinhTrang = 1;
                thanhVienDto.HoTen = "";
                thanhVienDto.NgaySinh = DateTime.Parse("1/1/1900");
                thanhVienDto.GioiTinh = "Nam";
                thanhVienDto.MaLoaiTV = 2;  // đọc CSDL
                thanhVienDto.DaXoa = 0;
                
                // thêm vào cơ sở dữ liệu
                int kq = thanhVienDto.ThemThanhVien();
                // nếu thất bại thì thông báo lỗi
                if (kq == 0)
                {
                    throw new Exception("Đăng ký thành viên lỗi");
                    Response.Redirect("DangKy.aspx");
                }
                else if (kq == 1)
                {
                    // nếu thành công thì xuất thông báo người dùng
                    // chuyển về trang chủ sau 5s
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            // chuyển hướng trang web về trang chủ
            Response.Redirect("Index.aspx", true);
        }       
    }
}