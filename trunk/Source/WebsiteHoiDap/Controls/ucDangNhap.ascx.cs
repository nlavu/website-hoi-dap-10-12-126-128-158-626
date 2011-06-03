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
    public partial class ucDangNhap : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Id 
            pnlKetQuaDatDangNhap.Visible = false;
            int iDaDangNhap = (Int32)Session["IsLogin"];
            if (iDaDangNhap == 1)
            {
                pnlDangNhap.Visible = false;                            
            }            
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            ThanhVien thanhVienDto = ThanhVien.LayThongTinThanhVienTheoTenTaiKhoan(txtTenDangNhap.Text);

            if (thanhVienDto == null)
            {
                pnlKetQuaDatDangNhap.Visible = true;
                lblKetQuaDangNhap.Text = "Tên tài khoản không tồn tại.";
            }
            else
            {
                if (thanhVienDto.MatKhau.CompareTo(txtMatKhau.Text) == 0)
                {
                    Session["IsLogin"] = 1;
                    Session["IdUser"] = thanhVienDto.MaThanhVien;
                    Session["Username"] = thanhVienDto.TenTaiKhoan;

                    pnlKetQuaDatDangNhap.Visible = true;
                    lblKetQuaDangNhap.Text = "Đăng nhập thành công.";
                    pnlDangNhap.Visible = false;
                    //Response.Redirect("../Index.aspx");
                }
                else
                {
                    pnlKetQuaDatDangNhap.Visible = true;
                    lblKetQuaDangNhap.Text = "Mật khẩu không đúng.";
                }
            }

        }
    }
}