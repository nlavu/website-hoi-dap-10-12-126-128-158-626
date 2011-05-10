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
using WebsiteHoiDap.BUS.CauHoi;

namespace WebsiteHoiDap.Controls
{
    public partial class ucTraLoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            frmKetQuaTraLoi.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            WebsiteHoiDap.BUS.CauHoi cauHoi = new WebsiteHoiDap.BUS.CauHoi();
            WebsiteHoiDap.BUS.CauTraLoi cauTraLoi = new WebsiteHoiDap.BUS.CauTraLoi();

            cauHoi.NoiDungCauHoi = txtCauHoi.Text;
            cauHoi.GhiChu = txtGhiChu.Text;
            cauTraLoi.NoiDung = txtCauTraLoi.Text;
 
            if (cauHoi.NoiDungCauHoi == "")
            {
                frmKetQuaTraLoi.Visible = true;
                lblKetQuaTraLoi.Text = "Chưa nhập nội dung câu hỏi!";
            }

            else
            {
                int kq;
                kq = cauTraLoi.ThemCauTraLoi();
                if (kq == 1)
                {
                    frmKetQuaTraLoi.Visible = true;
                    lblKetQuaTraLoi.Text = "Đăng câu trả lời thành công!";
                    frmTraLoiCauHoi.Visible = false;
                }
                else
                {
                    frmKetQuaDatTraLoi.Visible = true;
                    lblKetQuaTraLoi.Text = "Đăng câu trả lời bị lỗi";
                }

            }


        }
   
    }
}