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
            pnlDangKy.Visible = true;
            pnlKetQuaDangKy.Visible = false;
          
            
        }

        protected void btnDongY_Click(object sender, EventArgs e)
        {
            try
            {
                // kiểm tra dữ liệu
                if (kiemtraThongTinDangKy() == 0)   //nếu có lỗi
                {
                    pnlKetQuaDangKy.Visible = true;                    
                    return;
                }                

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
                thanhVienDto.GioiTinh = 0;
                thanhVienDto.MaLoaiTV = 2;  // đọc CSDL
                thanhVienDto.DaXoa = 0;
                
                // thêm vào cơ sở dữ liệu
                int kq = ThanhVien.ThemThanhVien(thanhVienDto);
                // nếu thất bại thì thông báo lỗi
                if (kq == 0)
                {
                    lblKetQuaDangKy.Text = "Đăng ký thành viên lỗi";                    
                }
                else if (kq == 1)
                {
                    // nếu thành công thì xuất thông báo người dùng
                    // chuyển về trang chủ sau 5s
                    pnlDangKy.Visible = false;
                    pnlKetQuaDangKy.Visible = true;
                    string strKQ = "Đăng ký thành công. Chào mừng bạn đã đến với website Hỏi Đáp A-Z.<br> Bấm vào đây để <span css='link-3'><a href='../Index.aspx'>quay về trang chủ</a></span>";
                    strKQ += " hoặc <span css='link-3'><a href='../TrangCaNhan.aspx'>trang thông tin cá nhân.</a></span>";

                    lblKetQuaDangKy.Height = 200;
                    lblKetQuaDangKy.Text = strKQ;
                }
            }
            catch (Exception ex)
            {
                lblKetQuaDangKy.Text = ex.Message.ToString();
            }

        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            // chuyển hướng trang web về trang chủ
            Response.Redirect("Index.aspx", true);
        }
        public int kiemtraThongTinDangKy()
        {            
            // kiểm tra chiều dài tên tài khoản
            if (txtTenDangNhap.Text.Length < 6 || txtTenDangNhap.Text.Length > 20)
            {
                lblKetQuaDangKy.Text = "Chiều dài tên đăng nhập không hợp lệ. (>=6 và =20)";
                txtTenDangNhap.Focus();
                return 0;
            }
            // kiểm tra có kí tự lạ
            if (txtTenDangNhap.Text.IndexOfAny(" ~!@#$%^&*()+.".ToCharArray()) > 0)
            {
                lblKetQuaDangKy.Text = "Tên đăng nhập chỉ chứa các kí tự A-Z, a-z, 0-9, và dấu _";
                txtTenDangNhap.Focus();
                return 0;
            }
            // kiểm tra chiều dài mật khẩu
            if (txtMatKhau.Text.Length < 6 || txtMatKhau.Text.Length > 20)
            {
                lblKetQuaDangKy.Text = "Chiều dài mật khẩu không hợp lệ. (>=6 và =20)";
                txtMatKhau.Focus();
                return 0;
            }
            //kiểm tra khớp mật khẩu
            if (txtMatKhau.Text.CompareTo(txtMatKhau2.Text) != 0)
            {
                lblKetQuaDangKy.Text = "Mật khẩu không khớp";
                txtMatKhau2.Focus();
                return 0;
            }
            //kiểm tra Email
            if (txtEmail.Text.Length <= 0)
            {
                lblKetQuaDangKy.Text = "Bạn chưa nhập email.";
                txtEmail.Focus();
                return 0;
            }
            if (kiemtraEmail(txtEmail.Text) == 0)
            {
                lblKetQuaDangKy.Text = "Email không hợp lệ.";
                txtEmail.Focus();
                return 0;
            }
            //kiểm tra đồng ý điều khoản website
            if (chkDongYDieuKhoan.Checked == false)
            {
                lblKetQuaDangKy.Text = "Bạn chưa click đồng ý điều khoản của Website.";
                return 0;
            }
            return 1;
        }
        public int kiemtraEmail(string email)
        {
            try
            {
                //testing               

                //Chuyển chuỗi email thành char
                char[] arrEmail = email.ToCharArray();
                //kiểm tra thành phần @
                int i = 0;
                while (i < arrEmail.Length && arrEmail[i].CompareTo('@') != 0)
                {
                    char c = arrEmail[i];
                    if ((c.CompareTo('0') >= 0 && c.CompareTo('9') <= 0)
                        || (c.CompareTo('a') >= 0 && c.CompareTo('z') <= 0)
                        || (c.CompareTo('A') >= 0 && c.CompareTo('Z') <= 0)
                        || c.CompareTo('_') == 0)
                    {
                        i++;
                    }
                    else
                    {
                        return 0;
                    }
                }

                i++;
                // nếu kết thúc chuỗi
                if (i == arrEmail.Length)
                    return 0;
                // tìm thành phần .
                while (i < arrEmail.Length && arrEmail[i].CompareTo('.') != 0)
                {
                    char c = arrEmail[i];
                    if ((c.CompareTo('0') >= 0 && c.CompareTo('9') <= 0)
                        || (c.CompareTo('a') >= 0 && c.CompareTo('z') <= 0)
                        || (c.CompareTo('A') >= 0 && c.CompareTo('Z') <= 0))
                    {
                        i++;
                    }
                    else
                    {
                        return 0;
                    }
                }
                i++;
                // nếu kết thúc chuỗi
                if (i == arrEmail.Length)
                    return 0;
                // duyệt thành phần còn lại
                while (i < arrEmail.Length)
                {
                    char c = arrEmail[i];
                    if ((c.CompareTo('0') >= 0 && c.CompareTo('9') <= 0)
                        || (c.CompareTo('a') >= 0 && c.CompareTo('z') <= 0)
                        || (c.CompareTo('A') >= 0 && c.CompareTo('Z') <= 0)
                        || (c.CompareTo('.') == 0))
                    {
                        i++;
                    }
                    else
                    {
                        return 0;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return 1;
        }
    }
}