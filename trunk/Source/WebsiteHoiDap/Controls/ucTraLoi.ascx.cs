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
    public partial class ucTraLoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int iDaDangNhap = (Int32)Session["IsLogin"];
            if (iDaDangNhap == 0)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                pnlKetQuaTraLoi.Visible = false;
                pnlTraLoi.Visible = true;
                // giả sử mã câu hỏi đang trả lời là 1
                int intMaCauHoi = 1;
                WebsiteHoiDap.BUS.CauHoi cauHoi = WebsiteHoiDap.BUS.CauHoi.LayCauHoiTheoMa(intMaCauHoi);

                lblCauHoi.Text = cauHoi.NoiDungCauHoi;
                lblGhiChuCauHoi.Text = cauHoi.GhiChu;
            }
        }

       
        protected void btnGuiCauTraLoi_Click(object sender, EventArgs e)
        {            
            WebsiteHoiDap.BUS.CauTraLoi cauTraLoi = new WebsiteHoiDap.BUS.CauTraLoi();

            
            cauTraLoi.NoiDung = txtCauTraLoi.Text;
            cauTraLoi.GhiChu = txtGhiChu.Text;

            if (cauTraLoi.NoiDung == "")
            {
                pnlKetQuaTraLoi.Visible = true;
                lblKetQuaTraLoi.Text = "<span class='message'>Chưa nhập nội dung câu hỏi!</span>";
                txtCauTraLoi.Focus();
                return;
            }
            cauTraLoi.MaCauHoi = 1; //tạm thời
            cauTraLoi.MaThanhVien = 1;  //tạm thời
            cauTraLoi.NgayTraLoi = DateTime.Now;
            cauTraLoi.SoNguoiBinhChon = 0;
            cauTraLoi.SoSao = 0;
            cauTraLoi.BaoCaoViPham = 0;
            cauTraLoi.DaXoa = 0;
            
            int kq;
            kq = CauTraLoi.ThemCauTraLoi(cauTraLoi);
            if (kq == 1)
            {
                pnlKetQuaTraLoi.Visible = true;
                lblKetQuaTraLoi.Text = "Đăng câu trả lời thành công!";
                pnlKetQuaTraLoi.Height = 200;

                pnlTraLoi.Visible = false;
            }
            else
            {
                pnlKetQuaTraLoi.Visible = true;
                lblKetQuaTraLoi.Text = "<span class='message'>Đăng câu trả lời bị lỗi</span>";
            }            
        }   
    }
}