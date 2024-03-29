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
    public partial class ucThongTinTaiKhoan : System.Web.UI.UserControl
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
                int IDUser = (Int32)Session["IdUser"];
                ThanhVien thanhVien = ThanhVien.LayThongTinThanhVienTheoMa(IDUser);

                lblTenTaiKhoan.Text = thanhVien.TenTaiKhoan;

                lblHoTen.Text = thanhVien.HoTen;
                lblNgaySinh.Text = thanhVien.NgaySinh.ToShortDateString().ToString();
                if (thanhVien.GioiTinh == 0)
                    lblGioiTinh.Text = "Nữ";
                else
                    lblGioiTinh.Text = "Nam";
                lblEmail.Text = thanhVien.Email;
                lblDiem.Text = thanhVien.Diem.ToString();
                lblCapBac.Text = thanhVien.CapBac.ToString();
            }
        }
    }
}