﻿using System;
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

            pnlKetQuaDatCauHoi.Visible = false;
            chkNgayHetHan.Checked = false;
            CalenderNgayHetHan.Visible = false;
          
        }

      
        protected void btnGuiCauHoi_Click(object sender, EventArgs e)
        {
            WebsiteHoiDap.BUS.CauHoi cauHoi = new WebsiteHoiDap.BUS.CauHoi();

            cauHoi.NgayHoi = DateTime.Now.Date;
            cauHoi.NgayHetHan = CalenderNgayHetHan.SelectedDate;
            cauHoi.DanhGia = 0;
            cauHoi.BaoCaoViPham = 0;
            cauHoi.NoiDungCauHoi = txtCauHoi.Text;
            cauHoi.GhiChu = txtGhiChu.Text;
            cauHoi.MaThanhVien = 1; //khi có Session sẽ sửa lại
            cauHoi.MaChuDe = int.Parse(lstChuDe.SelectedValue.ToString());
            cauHoi.DaXoa = 0;            
            cauHoi.SoNguoiBinhChon = 0;
            
            // kiểm tra nội dung câu hỏi
            if (cauHoi.NoiDungCauHoi == "")
            {
                pnlKetQuaDatCauHoi.Visible = true;
                lblKetQuaDatCauHoi.Text = "<span class='message'>Chưa nhập nội dung câu hỏi!</span>";
                txtCauHoi.Focus();
                return;
            }

            // kiểm tra ngày hết hạn nếu có --> check box
            // thu hà          
            if (DateTime.Compare(cauHoi.NgayHoi, cauHoi.NgayHetHan) > 0 )
            {
                pnlKetQuaDatCauHoi.Visible = true;
                lblKetQuaDatCauHoi.Text = "<span class='message'>Ngày hết hạn không đúng quy định!</span>";
                return;
            }
            // thêm câu hỏi vào CSDL
            int kq;
            kq = cauHoi.ThemCauHoi();
            if (kq == 1)
            {
                pnlKetQuaDatCauHoi.Visible = true;
                lblKetQuaDatCauHoi.Text = "Đặt câu hỏi thành công!";
                lblKetQuaDatCauHoi.Height = 200;
                pnlDatCauHoi.Visible = false;
            }
            else
            {
                pnlKetQuaDatCauHoi.Visible = true;
                lblKetQuaDatCauHoi.Text = "Đặt câu hỏi bị lỗi!";
            }

            
        }

        protected void chkNgayHetHan_CheckedChanged(object sender, EventArgs e)
        {
            if (chkNgayHetHan.Checked)
                CalenderNgayHetHan.Visible = true;
            else
                CalenderNgayHetHan.Visible = false;
        }
    }
}