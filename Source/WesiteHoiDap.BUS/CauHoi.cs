using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteHoiDap.BUS
{
    public class CauHoi: SqlDataAccessHelper
    {
        #region Member Variables

        int intMaCauHoi = int.MinValue;
        DateTime dtmNgayHoi = DateTime.Parse("1/1/1990");
        DateTime dtmNgayHetHan = DateTime.Parse("1/1/1990");
        int intDanhGia = int.MinValue;
        int intBaoCaoViPham = int.MinValue;
        string strNoiDungCauHoi = String.Empty;
        string strGhiChu = String.Empty;
        int intMaThanhVien = int.MinValue;
        int intMaChuDe = int.MinValue;
        int intDaXoa = int.MinValue;
        string strLyDo = String.Empty;
        DateTime dtmNgayXoa = DateTime.Parse("1/1/1990");
        int intNguoiXoa = int.MinValue;
        int intSoNguoiBinhChon = int.MinValue;
        DateTime dtmNgayCapNhat = DateTime.Parse("1/1/1990");
        int intNguoiCapNhat = int.MinValue;

        #endregion

        #region Properties

        public int MaCauHoi
        {
            get { return intMaCauHoi; }
            set { intMaCauHoi = value; }
        }
        public DateTime NgayHoi
        {
            get { return dtmNgayHoi; }
            set { dtmNgayHoi = value; }
        }

        public DateTime NgayHetHan
        {
            get { return dtmNgayHetHan; }
            set { dtmNgayHetHan = value; }
        }

        public int DanhGia
        {
            get { return intDanhGia; }
            set { intDanhGia = value; }
        }

        public int BaoCaoViPham
        {
            get { return intBaoCaoViPham; }
            set { intBaoCaoViPham = value; }
        }

        public string NoiDungCauHoi
        {
            get { return strNoiDungCauHoi; }
            set { strNoiDungCauHoi = value; }
        }

        public string GhiChu
        {
            get { return strGhiChu; }
            set { strGhiChu = value; }
        }
        public int MaThanhVien
        {
            get { return intMaThanhVien; }
            set { intMaThanhVien = value; }
        }

        public int MaChuDe
        {
            get { return intMaChuDe; }
            set { intMaChuDe = value; }
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

        public int SoNguoiBinhChon
        {
            get { return intSoNguoiBinhChon; }
            set { intSoNguoiBinhChon = value; }
        }

        public DateTime NgayCapNhat
        {
            get { return dtmNgayCapNhat; }
            set { dtmNgayCapNhat = value; }
        }

        public int NguoiCapNhat
        {
            get { return intNguoiCapNhat; }
            set { intNguoiCapNhat = value; }
        }

        #endregion

        #region method

        // BY HIEP
        // 08/05

        // 1. LAY DANH SACH TAT CA CAC CAU HOI
        /// <summary>
        /// Created byd by: Hiệp
        /// Edited by: Thu Hà
        /// 8/5/2011
        /// </summary>
        /// <returns>ds câu hỏi</returns>
        public List<CauHoi> LayDSCauHoi()
        {
            List<CauHoi> lstDanhSachCauHoi = new List<CauHoi>();
            try
            {
                DataTable dtCauHoi = new DataTable();
                dtCauHoi = SqlDataAccessHelper.ExecuteQuery("spLayDSCauHoi");

                foreach (DataRow dtRow in dtCauHoi.Rows)
                {
                    CauHoi cauHoi = new CauHoi();
                    cauHoi.MaCauHoi = int.Parse(dtRow["MaCauHoi"].ToString().Trim());
                    cauHoi.NgayHoi = DateTime.Parse(dtRow["Ngayhoi"].ToString());
                    //Thu Hà
                    //Ngày hết hạn có thể null --> thêm điều kiện kiểm tra -- 
                    try
                    {
                        cauHoi.NgayHetHan = DateTime.Parse(dtRow["NgayHetHan"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayHetHan = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.DanhGia = int.Parse(dtRow["DanhGia"].ToString().Trim());
                    cauHoi.BaoCaoViPham = int.Parse(dtRow["BaoCaoViPham"].ToString().Trim());
                    cauHoi.NoiDungCauHoi = dtRow["NoiDungCauHoi"].ToString();
                    cauHoi.GhiChu = dtRow["GhiChu"].ToString();
                    cauHoi.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString().Trim());
                    cauHoi.MaChuDe = int.Parse(dtRow["MaChuDe"].ToString().Trim());
                    cauHoi.DaXoa = int.Parse(dtRow["DaXoa"].ToString().Trim());
                    cauHoi.LyDo = dtRow["LyDo"].ToString();
                    //Thu Hà
                    //Ngày xóa có thể null --> thêm điều kiện kiểm tra
                    try
                    {
                        cauHoi.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString().Trim());
                    cauHoi.SoNguoiBinhChon = int.Parse(dtRow["SoNguoiBinhChon"].ToString().Trim());
                    //Thu Hà
                    //Ngày cập nhật có thể null --> thêm điều kiện kiểm tra
                    try
                    {
                        cauHoi.NgayCapNhat = DateTime.Parse(dtRow["NgayCapNhat"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayCapNhat = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.NguoiCapNhat = int.Parse(dtRow["NguoiCapNhat"].ToString().Trim());

                    lstDanhSachCauHoi.Add(cauHoi);
                }
            }
            catch (Exception e)
            {
                throw e;
            }

            return lstDanhSachCauHoi;
        }
        

        // 2. LAY CAU HOI THEO MA
        /// <summary>
        /// Created by: Hiệp
        /// Edited by: Thu Hà
        /// 8/5/2011
        /// </summary>
        /// <param name="intMaCauHoi"></param>
        /// <returns>1 câu hỏi</returns>
        public CauHoi LayCauHoiTheoMa (int intMaCauHoi)
        {
            CauHoi cauHoi = new CauHoi();

            List<SqlParameter> lstParameters = new List<SqlParameter>();
            lstParameters.Add(new SqlParameter("@macauhoi", intMaCauHoi));
            
            try
            {
                DataTable dtCauHoi = new DataTable ();
                dtCauHoi = SqlDataAccessHelper.ExecuteQuery("spLayCauHoiTheoMa", lstParameters);

                foreach (DataRow dtRow in dtCauHoi.Rows)
                {

                    cauHoi.MaCauHoi = int.Parse(dtRow["MaCauHoi"].ToString().Trim());
                    cauHoi.NgayHoi = DateTime.Parse(dtRow["Ngayhoi"].ToString());
                    //Thu Hà
                    //Ngày hết hạn có thể null --> thêm điều kiện kiểm tra -- 
                    try
                    {
                        cauHoi.NgayHetHan = DateTime.Parse(dtRow["NgayHetHan"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayHetHan = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.DanhGia = int.Parse(dtRow["DanhGia"].ToString().Trim());
                    cauHoi.BaoCaoViPham = int.Parse(dtRow["BaoCaoViPham"].ToString().Trim());
                    cauHoi.NoiDungCauHoi = dtRow["NoiDungCauHoi"].ToString();
                    cauHoi.GhiChu = dtRow["GhiChu"].ToString();
                    cauHoi.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString().Trim());
                    cauHoi.MaChuDe = int.Parse(dtRow["MaChuDe"].ToString().Trim());
                    cauHoi.DaXoa = int.Parse(dtRow["DaXoa"].ToString().Trim());
                    cauHoi.LyDo = dtRow["LyDo"].ToString();
                    //Thu Hà
                    //Ngày xóa có thể null --> thêm điều kiện kiểm tra
                    try
                    {
                        cauHoi.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString().Trim());
                    cauHoi.SoNguoiBinhChon = int.Parse(dtRow["SoNguoiBinhChon"].ToString().Trim());
                    //Thu Hà
                    //Ngày cập nhật có thể null --> thêm điều kiện kiểm tra
                    try
                    {
                        cauHoi.NgayCapNhat = DateTime.Parse(dtRow["NgayCapNhat"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayCapNhat = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.NguoiCapNhat = int.Parse(dtRow["NguoiCapNhat"].ToString().Trim());

                }
            }
            catch (Exception e)
            {
                throw e;
            }

            return cauHoi;
        }


        // 3. LAY DANH SACH CAU HOI THEO CHU DE
        /// <summary>
        /// Created by: Hiệp
        /// Edited by: Thu hà
        /// 8/5/2011
        /// </summary>
        /// <param name="intMaChuDe"></param>
        /// <returns></returns>
        public List<CauHoi> LayCauHoiTheoChuDe(int intMaChuDe)
        {
            List<CauHoi> lstDanhSachCauHoi = new List<CauHoi>();
            List<SqlParameter> lstParameters = new List<SqlParameter>();
            lstParameters.Add(new SqlParameter("@machude", intMaChuDe));

            try
            {
                DataTable dtCauHoi = new DataTable();
                dtCauHoi = SqlDataAccessHelper.ExecuteQuery("spLayDSCauHoiTheoMaChuDe", lstParameters);

                foreach (DataRow dtRow in dtCauHoi.Rows)
                {
                    CauHoi cauHoi = new CauHoi();
                    cauHoi.MaCauHoi = int.Parse(dtRow["MaCauHoi"].ToString().Trim());
                    cauHoi.NgayHoi = DateTime.Parse(dtRow["Ngayhoi"].ToString());
                    //Thu Hà
                    //Ngày hết hạn có thể null --> thêm điều kiện kiểm tra -- 
                    try
                    {
                        cauHoi.NgayHetHan = DateTime.Parse(dtRow["NgayHetHan"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayHetHan = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.DanhGia = int.Parse(dtRow["DanhGia"].ToString().Trim());
                    cauHoi.BaoCaoViPham = int.Parse(dtRow["BaoCaoViPham"].ToString().Trim());
                    cauHoi.NoiDungCauHoi = dtRow["NoiDungCauHoi"].ToString();
                    cauHoi.GhiChu = dtRow["GhiChu"].ToString();
                    cauHoi.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString().Trim());
                    cauHoi.MaChuDe = int.Parse(dtRow["MaChuDe"].ToString().Trim());
                    cauHoi.DaXoa = int.Parse(dtRow["DaXoa"].ToString().Trim());
                    cauHoi.LyDo = dtRow["LyDo"].ToString();
                    //Thu Hà
                    //Ngày xóa có thể null --> thêm điều kiện kiểm tra
                    try
                    {
                        cauHoi.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString().Trim());
                    cauHoi.SoNguoiBinhChon = int.Parse(dtRow["SoNguoiBinhChon"].ToString().Trim());
                    //Thu Hà
                    //Ngày hết hạn có thể null --> thêm điều kiện kiểm tra
                    try
                    {
                        cauHoi.NgayCapNhat = DateTime.Parse(dtRow["NgayCapNhat"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayCapNhat = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.NguoiCapNhat = int.Parse(dtRow["NguoiCapNhat"].ToString().Trim());

                    lstDanhSachCauHoi.Add(cauHoi);
                }
            }
            catch (Exception e)
            {
                throw e;
            }

            return lstDanhSachCauHoi;
        }

        // 4. LAY DANH SACH CAU HOI THEO NGUOI DAT
        /// <summary>
        /// Created by: Hiệp
        /// Edited by: Thu hà
        /// 8/5/2011
        /// </summary>
        /// <param name="intMaThanhVien"></param>
        /// <returns></returns>
        public List<CauHoi> LayCauHoiTheoNguoiHoi(int intMaThanhVien)
        {
            List<CauHoi> lstDanhSachCauHoi = new List<CauHoi>();
            List<SqlParameter> lstParameters = new List<SqlParameter>();
            lstParameters.Add(new SqlParameter("@mathanhvien", intMaThanhVien));

            try
            {
                DataTable dtCauHoi = new DataTable();
                dtCauHoi = SqlDataAccessHelper.ExecuteQuery("spLayDSCauHoiTheoNguoiHoi", lstParameters);

                foreach (DataRow dtRow in dtCauHoi.Rows)
                {
                    CauHoi cauHoi = new CauHoi();
                    cauHoi.MaCauHoi = int.Parse(dtRow["MaCauHoi"].ToString().Trim());
                    cauHoi.NgayHoi = DateTime.Parse(dtRow["Ngayhoi"].ToString());
                    //Thu Hà
                    //Ngày hết hạn có thể null --> thêm điều kiện kiểm tra -- 
                    try
                    {
                        cauHoi.NgayHetHan = DateTime.Parse(dtRow["NgayHetHan"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayHetHan = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.DanhGia = int.Parse(dtRow["DanhGia"].ToString().Trim());
                    cauHoi.BaoCaoViPham = int.Parse(dtRow["BaoCaoViPham"].ToString().Trim());
                    cauHoi.NoiDungCauHoi = dtRow["NoiDungCauHoi"].ToString();
                    cauHoi.GhiChu = dtRow["GhiChu"].ToString();
                    cauHoi.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString().Trim());
                    cauHoi.MaChuDe = int.Parse(dtRow["MaChuDe"].ToString().Trim());
                    cauHoi.DaXoa = int.Parse(dtRow["DaXoa"].ToString().Trim());
                    cauHoi.LyDo = dtRow["LyDo"].ToString();
                    //Thu Hà
                    //Ngày xóa có thể null --> thêm điều kiện kiểm tra
                    try
                    {
                        cauHoi.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString().Trim());
                    cauHoi.SoNguoiBinhChon = int.Parse(dtRow["SoNguoiBinhChon"].ToString().Trim());
                    //Thu Hà
                    //Ngày hết hạn có thể null --> thêm điều kiện kiểm tra
                    try
                    {
                        cauHoi.NgayCapNhat = DateTime.Parse(dtRow["NgayCapNhat"].ToString());
                    }
                    catch (Exception ex)
                    {
                        cauHoi.NgayCapNhat = DateTime.Parse("1/1/1900");
                    }
                    cauHoi.NguoiCapNhat = int.Parse(dtRow["NguoiCapNhat"].ToString().Trim());

                    lstDanhSachCauHoi.Add(cauHoi);
                }
            }
            catch (Exception e)
            {
                throw e;
            }

            return lstDanhSachCauHoi;
        }

        // 5. THEM CAU HOI
        public int ThemCauHoi()
        {
            int res = 0;
            try
            {
                List<SqlParameter> lstParam = new List<SqlParameter>();
                // Thu Hà: Thêm câu hỏi không có mã câu hỏi
                //lstParam.Add(new SqlParameter("@macauhoi", intMaCauHoi));
                lstParam.Add(new SqlParameter("@ngayhoi", dtmNgayHoi));
                lstParam.Add(new SqlParameter("@ngayhethan", dtmNgayHetHan));
                lstParam.Add(new SqlParameter("@danhgia", intDanhGia));
                lstParam.Add(new SqlParameter("@baocaovipham", intBaoCaoViPham));
                lstParam.Add(new SqlParameter("@noidungcauhoi", strNoiDungCauHoi));
                lstParam.Add(new SqlParameter("@ghichu", strGhiChu));
                lstParam.Add(new SqlParameter("@mathanhvien", intMaThanhVien));
                lstParam.Add(new SqlParameter("@machude", intMaChuDe));
                lstParam.Add(new SqlParameter("@daxoa", intDaXoa));
                lstParam.Add(new SqlParameter("@lydo", strLyDo));
                lstParam.Add(new SqlParameter("@ngayxoa", dtmNgayXoa));
                lstParam.Add(new SqlParameter("@nguoixoa", intNguoiXoa));
                lstParam.Add(new SqlParameter("@songuoibinhchon", intSoNguoiBinhChon));
                lstParam.Add(new SqlParameter("@ngaycapnhat", dtmNgayCapNhat));
                lstParam.Add(new SqlParameter("@nguoicapnhat", intNguoiCapNhat));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spThemCauHoi");
            }

            catch (Exception e)
            {
                res = 0;
                throw e;
            }
            return res;
        }


        // 6. XOA CAU HOI
        public int XoaCauHoi(int intMaCauHoi, string strLydo, DateTime dtmNgayXoa, int intNguoiXoa)
        {
            int iResult = 0;
            List<SqlParameter> lstParameters = new List<SqlParameter>();
            try
            {
                lstParameters.Add(new SqlParameter("@macauhoi", intMaCauHoi));
                lstParameters.Add(new SqlParameter("@lydo", strLydo));
                lstParameters.Add(new SqlParameter("@ngayxoa", dtmNgayXoa));
                lstParameters.Add(new SqlParameter("@nguoixoa", intNguoiXoa));

                iResult = SqlDataAccessHelper.ExecuteNoneQuery("spXoaCauHoi", lstParameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return iResult;
        }
        /// <summary>
        /// 7.Cập nhật câu hỏi
        /// Thu Hà
        /// 8/5/2011
        /// </summary>
        /// <returns>1 : 0</returns>
        public int CapNhatCauHoi()
        {
            int res = 0;
            try
            {
                List<SqlParameter> lstParam = new List<SqlParameter>();               
                lstParam.Add(new SqlParameter("@macauhoi", intMaCauHoi));
                lstParam.Add(new SqlParameter("@ngayhoi", dtmNgayHoi));
                lstParam.Add(new SqlParameter("@ngayhethan", dtmNgayHetHan));
                lstParam.Add(new SqlParameter("@danhgia", intDanhGia));
                lstParam.Add(new SqlParameter("@baocaovipham", intBaoCaoViPham));
                lstParam.Add(new SqlParameter("@noidungcauhoi", strNoiDungCauHoi));
                lstParam.Add(new SqlParameter("@ghichu", strGhiChu));
                lstParam.Add(new SqlParameter("@mathanhvien", intMaThanhVien));
                lstParam.Add(new SqlParameter("@machude", intMaChuDe));
                lstParam.Add(new SqlParameter("@daxoa", intDaXoa));
                lstParam.Add(new SqlParameter("@lydo", strLyDo));
                lstParam.Add(new SqlParameter("@ngayxoa", dtmNgayXoa));
                lstParam.Add(new SqlParameter("@nguoixoa", intNguoiXoa));
                lstParam.Add(new SqlParameter("@songuoibinhchon", intSoNguoiBinhChon));
                lstParam.Add(new SqlParameter("@ngaycapnhat", dtmNgayCapNhat));
                lstParam.Add(new SqlParameter("@nguoicapnhat", intNguoiCapNhat));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spCapNhatCauHoi");
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
