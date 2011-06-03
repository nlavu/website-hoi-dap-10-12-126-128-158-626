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
    public partial class ucCapNhatThongTinCaNhan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblKetQuaCapNhat.Visible = false;

            //Id 
            int iDaDangNhap = (Int32)Session["IsLogin"];
            if (iDaDangNhap == 0)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                ThanhVien thanhVien = ThanhVien.LayThongTinThanhVienTheoMa((Int32)Session["IdUser"]);

                txtHoTen.Text = thanhVien.HoTen;
                txtNgaySinh.Text = thanhVien.NgaySinh.ToShortDateString();
                txtEmail.Text = thanhVien.Email;
                imgAvatar.ImageUrl = "image/"+thanhVien.TenTaiKhoan+".jpg";

                if (thanhVien.GioiTinh == 0)
                {
                    radNu.Checked = true;
                }
                else
                {
                    radNam.Checked = true;
                }
            }

        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void btnDongY_Click(object sender, EventArgs e)
        {
            ThanhVien thanhVien = ThanhVien.LayThongTinThanhVienTheoMa((Int32)Session["IdUser"]);

            thanhVien.HoTen = txtHoTen.Text;
            thanhVien.Email = txtEmail.Text;
            thanhVien.NgaySinh = DateTime.Parse(txtNgaySinh.Text);
            if (radNam.Checked)
                thanhVien.GioiTinh = 1;
            else
                thanhVien.GioiTinh = 0;

            if (thanhVien.CapNhatThongTinCaNhan() == 1)
            {
                pnlKetQuaCapNhat.Visible = true;
                lblKetQuaCapNhat.Text = "Cập nhật thành công. Nhấn vào đây để <a href='TrangCaNhan.aspx'> về trang cá nhân </a>";
                pnlCapNhatThongTinCaNhan.Visible = false;
            }
            else
            {
                lblKetQuaCapNhat.Text = "Cập nhật bị lỗi.";
                pnlKetQuaCapNhat.Visible = true;                
            }
        }
    }
}