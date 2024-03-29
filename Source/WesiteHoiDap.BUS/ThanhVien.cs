﻿using System;
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
        int intGioiTinh = int.MinValue;
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

        public int GioiTinh
        {
            get { return intGioiTinh; }
            set { intGioiTinh = value; }
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

        #region Method

        /// <summary>
        /// Thêm thành viên
        /// Created by  : Thu Hà
        /// Date        : 3/5/2011
        /// Edite       : Thu Hà (thuộc tính giới tính)
        /// 9/5/2011
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns>1: 0</returns>
        public static int ThemThanhVien(ThanhVien thanhVien)
        {
            int res = 0;            
            try
            {
                // add tham số
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@tentaikhoan", thanhVien.TenTaiKhoan));
                lstParam.Add(new SqlParameter("@matkhau", thanhVien.MatKhau));
                lstParam.Add(new SqlParameter("@hoten", thanhVien.HoTen));
                lstParam.Add(new SqlParameter("@ngaysinh", thanhVien.NgaySinh));
                lstParam.Add(new SqlParameter("@gioitinh", thanhVien.GioiTinh));
                lstParam.Add(new SqlParameter("@email", thanhVien.Email));
                lstParam.Add(new SqlParameter("@tinhtrang", thanhVien.TinhTrang));
                lstParam.Add(new SqlParameter("@diem", thanhVien.Diem));
                lstParam.Add(new SqlParameter("@capbac", thanhVien.CapBac));
                lstParam.Add(new SqlParameter("@maloaitv", thanhVien.MaLoaiTV));
                lstParam.Add(new SqlParameter("@daxoa", thanhVien.DaXoa));
                lstParam.Add(new SqlParameter("@lydo", thanhVien.LyDo));
                lstParam.Add(new SqlParameter("@ngayxoa", thanhVien.NgayXoa));
                lstParam.Add(new SqlParameter("@nguoixoa", thanhVien.NguoiXoa));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spThemThanhVien", lstParam);

            }
            catch (Exception e)
            {
                res = 0;
                throw e;
            }
            return res;
        }

        /// <summary>
        /// Cập nhật thông tin cá nhân
        /// Created by  : Minh Anh
        /// Date        : 9/5/2011
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns>1: 0</returns>
        public int CapNhatThongTinCaNhan()
        {
            int res = 0;
            try
            {
                // add tham số
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@mathanhvien", intMaThanhVien));                
                lstParam.Add(new SqlParameter("@hoten", strHoTen));
                lstParam.Add(new SqlParameter("@ngaysinh", dtmNgaySinh));
                lstParam.Add(new SqlParameter("@gioitinh", intGioiTinh));
                lstParam.Add(new SqlParameter("@email", strEmail));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spCapNhatThongTinCaNhan", lstParam);

            }
            catch (Exception e)
            {
                res = 0;
                throw e;
            }
            return res;
        }

        /// <summary>
        /// Đổi mật khẩu
        /// Created by  : Minh Anh
        /// Date        : 9/5/2011
        /// Edited by   : Thu hà tham số @matkhau
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns>1: 0</returns>
        public int DoiMatKhau()
        {
            int res = 0;
            try
            {
                // add tham số
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@mathanhvien", intMaThanhVien));
                lstParam.Add(new SqlParameter("@matkhau", strMatKhau));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spDoiMatKhau", lstParam);

            }
            catch (Exception e)
            {
                res = 0;
                throw e;
            }
            return res;
        }

        /// <summary>
        /// Láy thông tin thành viên theo mã
        /// Created by  : Minh Anh
        /// Date        : 9/5/2011
        /// Edited by   : Thu Hà (Ngayxoa)
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns><ThanhVien></returns>
        public static ThanhVien LayThongTinThanhVienTheoMa(int intMaThanhVien)
        {
            ThanhVien res = new ThanhVien();            
            try
            {
                // add tham số
                DataTable dtThanhVien = new DataTable();
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@mathanhvien", intMaThanhVien));
                dtThanhVien = SqlDataAccessHelper.ExecuteQuery("spLayThongTinThanhVienTheoMa", lstParam);
                foreach (DataRow dtRow in dtThanhVien.Rows)
                {
                    res.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString().Trim());
                    res.TenTaiKhoan = dtRow["TenTaiKhoan"].ToString();
                    res.MatKhau = dtRow["MatKhau"].ToString();
                    res.HoTen = dtRow["HoTen"].ToString();
                    res.NgaySinh = DateTime.Parse(dtRow["NgaySinh"].ToString());
                    res.GioiTinh = int.Parse(dtRow["GioiTinh"].ToString().Trim());
                    res.Email = dtRow["Email"].ToString();
                    res.TinhTrang = int.Parse(dtRow["TinhTrang"].ToString().Trim());
                    res.Diem = int.Parse(dtRow["Diem"].ToString().Trim());
                    res.CapBac = int.Parse(dtRow["CapBac"].ToString().Trim());
                    res.MaLoaiTV = int.Parse(dtRow["MaLoaiTV"].ToString().Trim());
                    res.DaXoa = int.Parse(dtRow["DaXoa"].ToString().Trim());
                    try
                    {
                        res.LyDo = dtRow["LyDo"].ToString();
                    }
                    catch
                    {
                        res.LyDo = "";
                    }
                    try
                    {
                        res.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch
                    {
                        res.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    try
                    {
                        res.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString().Trim());
                    }
                    catch
                    {
                        res.NguoiXoa = int.MinValue;
                    }
                }
            }
            catch (Exception ex)
            {
                res = null;
            }

            return res;
        }

        /// <summary>
        /// Created by  : Thu Hà
        /// Date        : 26/5/2011     
        /// </summary>
        /// <param name="tenThanhVien"></param>
        /// <returns></returns>
        public static ThanhVien LayThongTinThanhVienTheoTenTaiKhoan(string tenTaiKhoan)
        {
            ThanhVien res = new ThanhVien();
            try
            {
                // add tham số
                DataTable dtThanhVien = new DataTable();
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@tentaikhoan", tenTaiKhoan));
                dtThanhVien = SqlDataAccessHelper.ExecuteQuery("spLayThongTinThanhVienTheoTenTaiKhoan", lstParam);
                foreach (DataRow dtRow in dtThanhVien.Rows)
                {
                    res.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString().Trim());
                    res.TenTaiKhoan = dtRow["TenTaiKhoan"].ToString();
                    res.MatKhau = dtRow["MatKhau"].ToString();
                    res.HoTen = dtRow["HoTen"].ToString();
                    res.NgaySinh = DateTime.Parse(dtRow["NgaySinh"].ToString());
                    res.GioiTinh = int.Parse(dtRow["GioiTinh"].ToString().Trim());
                    res.Email = dtRow["Email"].ToString();
                    res.TinhTrang = int.Parse(dtRow["TinhTrang"].ToString().Trim());
                    res.Diem = int.Parse(dtRow["Diem"].ToString().Trim());
                    res.CapBac = int.Parse(dtRow["CapBac"].ToString().Trim());
                    res.MaLoaiTV = int.Parse(dtRow["MaLoaiTV"].ToString().Trim());
                    res.DaXoa = int.Parse(dtRow["DaXoa"].ToString().Trim());
                    try
                    {
                        res.LyDo = dtRow["LyDo"].ToString();
                    }
                    catch
                    {
                        res.LyDo = "";
                    }
                    try
                    {
                        res.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch
                    {
                        res.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    try
                    {
                        res.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString().Trim());
                    }
                    catch
                    {
                        res.NguoiXoa = int.MinValue;
                    }
                }
            }
            catch (Exception e)
            {
                throw e;
                res = null;
            }

            return res;
        }

        /// <summary>
        /// Xóa thành viên
        /// Created by  : Minh Anh
        /// Date        : 9/5/2011
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns>1: 0</returns>
        public int XoaThanhVien()
        {
            int res = 0;
            try
            {
                // add tham số
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@mathanhvien", intMaThanhVien));
                lstParam.Add(new SqlParameter("@lydo", strLyDo));
                lstParam.Add(new SqlParameter("@ngayxoa", dtmNgayXoa));
                lstParam.Add(new SqlParameter("@nguoixoa", intNguoiXoa));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spXoaThanhVien", lstParam);

            }
            catch (Exception e)
            {
                res = 0;
                throw e;
            }
            return res;
        }

        /// <summary>
        /// Láy DS thành viên
        /// Created by  : Minh Anh
        /// Date        : 9/5/2011
        /// Edited by   : Thu Hà (Ngayxoa)
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns>list<thanhvien></returns>
        public static List<ThanhVien> LayDSThanhVien()
        {
            List<ThanhVien> res = new List<ThanhVien>();
            try
            {
                DataTable dtThanhVien = new DataTable();
                dtThanhVien = SqlDataAccessHelper.ExecuteQuery("spLayDSThanhVien");
                foreach (DataRow dtRow in dtThanhVien.Rows)
                {
                    ThanhVien kq = new ThanhVien();
                    kq.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString().Trim());
                    kq.TenTaiKhoan = dtRow["TenTaiKhoan"].ToString();
                    kq.MatKhau = dtRow["MatKhau"].ToString();
                    kq.HoTen = dtRow["HoTen"].ToString();
                    kq.NgaySinh = DateTime.Parse(dtRow["NgaySinh"].ToString());
                    kq.GioiTinh = int.Parse(dtRow["GioiTinh"].ToString().Trim());
                    kq.Email = dtRow["Email"].ToString();
                    kq.TinhTrang = int.Parse(dtRow["TinhTrang"].ToString().Trim());
                    kq.Diem = int.Parse(dtRow["Diem"].ToString().Trim());
                    kq.CapBac = int.Parse(dtRow["CapBac"].ToString().Trim());
                    kq.MaLoaiTV = int.Parse(dtRow["MaLoaiTV"].ToString().Trim());

                    kq.DaXoa = int.Parse(dtRow["DaXoa"].ToString());
                    
                    //Anh Vũ -- Thêm điều kiện kiểm tra vì LyDo có thể null
                    try
                    {
                        kq.LyDo = dtRow["LyDo"].ToString();
                    }
                    catch
                    {
                        kq.LyDo = "";
                    }
                    try
                    {
                        kq.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch
                    {
                        kq.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    
                    //Anh Vũ -- Thêm điều kiện kiểm tra vì NguoiXoa có thể null
                    try
                    {
                        kq.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString().Trim());
                    }
                    catch
                    {
                        kq.NguoiXoa = 0;
                    }

                    res.Add(kq);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return res;
        }

        /// <summary>
        /// Láy DS thành viên theo tình trạng
        /// Created by  : Minh Anh
        /// Date        : 9/5/2011
        /// Edited by   : Thu Hà (ngayxoa)
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns>list<thanhvien></returns>
        public List<ThanhVien> LayDSThanhVienTheoTinhTrang(int inputTinhTrang)
        {
            List<ThanhVien> res = new List<ThanhVien>();
            try
            {
                DataTable dtThanhVien = new DataTable();
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@tinhtrang", inputTinhTrang));
                dtThanhVien = SqlDataAccessHelper.ExecuteQuery("spLayDSThanhVienTheoTinhTrang",lstParam);
                foreach (DataRow dtRow in dtThanhVien.Rows)
                {
                    ThanhVien kq = new ThanhVien();
                    kq.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString().Trim());
                    kq.TenTaiKhoan = dtRow["TenTaiKhoan"].ToString();
                    kq.MatKhau = dtRow["MatKhau"].ToString();
                    kq.HoTen = dtRow["HoTen"].ToString();
                    kq.NgaySinh = DateTime.Parse(dtRow["NgaySinh"].ToString());
                    kq.GioiTinh = int.Parse(dtRow["GioiTinh"].ToString().Trim());
                    kq.Email = dtRow["Email"].ToString();
                    kq.TinhTrang = int.Parse(dtRow["TinhTrang"].ToString().Trim());
                    kq.Diem = int.Parse(dtRow["Diem"].ToString().Trim());
                    kq.CapBac = int.Parse(dtRow["CapBac"].ToString().Trim());
                    kq.MaLoaiTV = int.Parse(dtRow["MaLoaiTV"].ToString().Trim());
                    kq.DaXoa = int.Parse(dtRow["DaXoa"].ToString().Trim());
                    kq.LyDo = dtRow["LyDo"].ToString();
                    try
                    {
                        kq.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch (Exception e)
                    {
                        kq.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    kq.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString().Trim());

                    res.Add(kq);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return res;
        }

        /// <summary>
        /// Cập nhật tình trạng thành viên
        /// Created by  : Minh Anh
        /// Date        : 9/5/2011
        /// </summary>
        /// <param name="thanhvienDto"> </param>
        /// <returns>1: 0</returns>
        public int CapNhatTinhTrangThanhVien()
        {
            int res = 0;
            try
            {
                // add tham số
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@tinhtrang", intTinhTrang));
                lstParam.Add(new SqlParameter("@mathanhvien", intMaThanhVien));
                
                res = SqlDataAccessHelper.ExecuteNoneQuery("spCapNhatTinhTrangThanhVien", lstParam);

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
