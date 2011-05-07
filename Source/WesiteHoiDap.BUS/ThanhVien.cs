using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteHoiDap.BUS
{
    public class ThanhVien : SqlDataAccessHelper
    {
        #region Member Variables

        int intMaThanhVien = int.MinValue;
        string strTenTaiKhoan = String.Empty;
        string strMatKhau = String.Empty;
        string strHoTen = String.Empty;
        DateTime dtmNgaySinh = DateTime.Parse("1/1/1900");
        string strGioiTinh = String.Empty;
        string strEmail = String.Empty;
        int intTinhTrang = int.MinValue;
        int intDiem = int.MinValue;
        int intCapBac = int.MinValue;
        int intMaLoaiTV = int.MinValue;
        int intDaXoa = int.MinValue;        
        string strLyDo = String.Empty;
        DateTime dtmNgayXoa = DateTime.Parse("1/1/1900"); 
        int intNguoiXoa = int.MinValue;

        #endregion

        #region Properties
        public int MaThanhVien
        {
            get { return intMaThanhVien; }
            set { intMaThanhVien = value; }
        }

        public string TenTaiKhoan
        {
            get { return strTenTaiKhoan; }
            set { strTenTaiKhoan = value; }
        }

        public string MatKhau
        {
            get { return strMatKhau; }
            set { strMatKhau = value; }
        }

        public string HoTen
        {
            get { return strHoTen; }
            set { strHoTen = value; }
        }

        public DateTime NgaySinh
        {
            get { return dtmNgaySinh; }
            set { dtmNgaySinh = value; }
        }

        public string GioiTinh
        {
            get { return strGioiTinh; }
            set { strGioiTinh = value; }
        }

        public string Email
        {
            get { return strEmail; }
            set { strEmail = value; }
        }

        public int TinhTrang
        {
            get { return intTinhTrang; }
            set { intTinhTrang = value; }
        }

        public int Diem
        {
            get { return intDiem; }
            set { intDiem = value; }
        }

        public int CapBac
        {
            get { return intCapBac; }
            set { intCapBac = value; }
        }

        public int MaLoaiTV
        {
            get { return intMaLoaiTV; }
            set { intMaLoaiTV = value; }
        }

        public int DaXoa
        {
            get { return intDaXoa; }
            set { intDaXoa = value; }
        }

        public string LyDo
        {
            get { return strLyDo; }
            set { strLyDo = value; }
        }

        public DateTime NgayXoa
        {
            get { return dtmNgayXoa; }
            set { dtmNgayXoa = value; }
        }

        public int NguoiXoa
        {
            get { return intNguoiXoa; }
            set { intNguoiXoa = value; }
        }
        #endregion

        #region Menthod

        /// <summary>
        /// Thêm thành viên
        /// Created by  : Thu Hà
        /// Date        : 3/5/2011
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns>1: 0</returns>
        public int ThemThanhVien()
        {
            int res = 0;            
            try
            {
                // add tham số
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@tentaikhoan", strTenTaiKhoan));
                lstParam.Add(new SqlParameter("@matkhau", strMatKhau));
                lstParam.Add(new SqlParameter("@hoten", strHoTen));
                lstParam.Add(new SqlParameter("@ngaysinh", dtmNgaySinh));
                lstParam.Add(new SqlParameter("@gioitinh", strGioiTinh));
                lstParam.Add(new SqlParameter("@email", strEmail));
                lstParam.Add(new SqlParameter("@tinhtrang", intTinhTrang));
                lstParam.Add(new SqlParameter("@diem", intDiem));
                lstParam.Add(new SqlParameter("@capbac",intCapBac));
                lstParam.Add(new SqlParameter("@maloaitv", intMaLoaiTV));
                lstParam.Add(new SqlParameter("@daxoa", intDaXoa));
                lstParam.Add(new SqlParameter("@lydo", strLyDo));
                lstParam.Add(new SqlParameter("@ngayxoa", dtmNgayXoa));
                lstParam.Add(new SqlParameter("@nguoixoa", intNguoiXoa));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spThemThanhVien", lstParam);

            }
            catch (Exception e)
            {
                res = 0;
                throw e;
            }
            return res;
        }

        #endregion
    }
}
