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
    public partial class ucTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Id 
            int iDaDangNhap = (Int32)Session["IsLogin"];
            if (iDaDangNhap == 0)
            {
                pnlTaiKhoan.Visible = false;
            }
            else
            {

                int IDUser = (Int32)Session["IdUser"];
                ThanhVien thanhVien = ThanhVien.LayThongTinThanhVienTheoMa(IDUser);

                lblTenTaiKhoan.Text = thanhVien.TenTaiKhoan;
                lblDiem.Text = thanhVien.Diem.ToString();
                lblCapBac.Text = thanhVien.CapBac.ToString();
            }
        }

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            //đăng xuất
            Session["IsLogin"] = 0;
            Session["IdUser"] = 0;
            Session["Username"] = "username";
            Response.Redirect("Index.aspx");
        }
    }
}