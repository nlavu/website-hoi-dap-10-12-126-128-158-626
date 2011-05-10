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
    public partial class ucDatCauHoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ChuDe chuDe = new ChuDe();
            this.lstChuDe.DataSource = chuDe.LayDSChuDe();
            this.lstChuDe.DataValueField = "MaChuDe";
            this.lstChuDe.DataTextField = "TenChuDe";
            this.lstChuDe.DataBind();
            frmKetQuaDatCauHoi.Visible = false;
          
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            WebsiteHoiDap.BUS.CauHoi cauHoi = new WebsiteHoiDap.BUS.CauHoi();

            cauHoi.NgayHoi = DateTime.Now.Date;
            cauHoi.NgayHetHan = CalenderNgayHetHan.SelectedDate;
            cauHoi.DanhGia = 0;
            cauHoi.BaoCaoViPham = 0;
            cauHoi.NoiDungCauHoi = txtCauHoi.Text;
            cauHoi.GhiChu = txtGhiChu.Text;
            cauHoi.MaThanhVien = 1;
            cauHoi.MaChuDe = int.Parse(lstChuDe.SelectedValue.ToString());
            cauHoi.DaXoa = 0;
            cauHoi.LyDo = "";
            //cauHoi.NgayXoa = "";
            cauHoi.NguoiXoa = 2;
            cauHoi.SoNguoiBinhChon = 0;
            //cauHoi.NgayCapNhat = "";
            cauHoi.NguoiCapNhat = 2;

            if (cauHoi.NoiDungCauHoi == "")
            {
                frmKetQuaDatCauHoi.Visible = true;
                lblKetQuaDatCauHoi.Text = "Chưa nhập nội dung câu hỏi!";
            }
               
            //else
           
            //    if (cauHoi.NgayHoi > cauHoi.NgayHetHan)
            //    {
            //        frmKetQuaDatCauHoi.Visible = true;
            //        lblKetQuaDatCauHoi.Text = "Ngày hết hạn không đúng quy định!";
            //    }
                else
                {
                    int kq;
                    kq = cauHoi.ThemCauHoi();
                    if (kq == 1)
                    {
                        frmKetQuaDatCauHoi.Visible = true;
                        lblKetQuaDatCauHoi.Text = "Đặt câu hỏi thành công!";
                        frmDatCauHoi.Visible = false;
                    }
                    else
                    {
                        frmKetQuaDatCauHoi.Visible = true;
                        lblKetQuaDatCauHoi.Text = "Đặt câu hỏi bị lỗi!";
                    }

                }
          

        }
    }
}