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
    public partial class ucDoiMatKhau : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlKetQuaDoiMK.Visible = false;

            int iDaDangNhap = (Int32)Session["IsLogin"];
            if (iDaDangNhap == 0)
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btnDongY_Click(object sender, EventArgs e)
        {
            pnlKetQuaDoiMK.Visible = true;

            if (txtMatKhauCu.Text.Length == 0)
            {
                lblKetQuaDoiMK.Text = "Bạn chưa nhập mật khẩu cũ.<br>";
                return;
            }
            if (txtMatKhau.Text.Length == 0)
            {
                lblKetQuaDoiMK.Text = "Bạn chưa nhập mật khẩu mới.<br>";
                return;
            }
            if (txtMatKhau2.Text.Length == 0)
            {
                lblKetQuaDoiMK.Text = "Bạn chưa xác nhận mật khẩu.<br>";
                return;
            }

            int iMaThanhVien = (Int32)Session["IdUser"];

            ThanhVien thanhVien = ThanhVien.LayThongTinThanhVienTheoMa(iMaThanhVien);

            if (txtMatKhauCu.Text.CompareTo(thanhVien.MatKhau) == 0)
            {
                // kiểm tra chiều dài mật khẩu mới
                if (txtMatKhau.Text.Length < 6 || txtMatKhau.Text.Length > 20)
                {                   
                    lblKetQuaDoiMK.Text = "Mật khẩu mới phải có chiều dài lớn hơn hoặc bằng 6 và nhỏ hơn hoặc bằng 20.";
                }
                else
                {
                    // kiểm tra khớp mật khẩu
                    if (txtMatKhau.Text.CompareTo(txtMatKhau2.Text) == 0)
                    {
                        pnlDoiMatKhau.Visible = false;

                        thanhVien.MatKhau = txtMatKhau.Text;
                        if (thanhVien.DoiMatKhau() == 1)
                        {                            
                            lblKetQuaDoiMK.Text = "Đổi mật khẩu thành công.";
                        }
                        else
                        {                           
                            lblKetQuaDoiMK.Text = "Đổi mật khẩu bị lỗi.";
                        }
                    }
                    else
                    {                       
                        lblKetQuaDoiMK.Text = "Mật khẩu mới không khớp.";
                    }
                }
            }
            else
            {               
                lblKetQuaDoiMK.Text = "Mật khẩu cũ không đúng";
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {           
            Response.Redirect("TrangCaNhan.aspx");
        }

    }
}