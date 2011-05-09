using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteHoiDap.BUS
{
    public class CauTraLoi : SqlDataAccessHelper
    {
        /// Created by  : Ngọc Hà
        /// Date        : 5/5/2011
        /// 
        #region Member Variables

        int intMaCauTraLoi = int.MinValue;
        DateTime dtmNgayTraLoi = DateTime.Parse("1/1/1900");
        int intSoSao = int.MinValue;
        int intSoNguoiBinhChon = int.MinValue;
        int intBaoCaoViPham = int.MinValue;
        string strGhiChu = string.Empty;
        string strNoiDung = string.Empty;
        int intMaCauHoi = int.MinValue;
        int intMaThanhVien = int.MinValue;
        int intDaXoa = int.MinValue;
        string strLyDo = string.Empty;
        DateTime dtmNgayXoa = DateTime.Parse("1/1/1900");
        int intNguoiXoa = int.MinValue;
        DateTime dtmNgayCapNhat = DateTime.Parse("1/1/1900");
        int intNguoiCapNhat = int.MinValue;

        #endregion

        #region Properties

        public int MaCauTraLoi
        {
            get { return intMaCauTraLoi; }
            set { intMaCauTraLoi = value; }
        }

        public DateTime NgayTraLoi
        {
            get { return dtmNgayTraLoi; }
            set { dtmNgayTraLoi = value; }
        }

        public int SoSao
        {
            get { return intSoSao; }
            set { intSoSao = value; }
        }

        public int SoNguoiBinhChon
        {
            get { return intSoNguoiBinhChon; }
            set { intSoNguoiBinhChon = value; }
        }

        public int BaoCaoViPham
        {
            get { return intBaoCaoViPham; }
            set { intBaoCaoViPham = value; }
        }

        public string GhiChu
        {
            get { return strGhiChu; }
            set { strGhiChu = value; }
        }

        public string NoiDung
        {
            get { return strNoiDung; }
            set { strNoiDung = value; }
        }

        public int MaCauHoi
        {
            get { return intMaCauHoi; }
            set { intMaCauHoi = value; }
        }

        public int MaThanhVien
        {
            get { return intMaThanhVien; }
            set { intMaThanhVien = value; }
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
        /// <summary>
        /// Created by  : Ngọc Hà
        /// Date        : 5/5/2011
        /// Edited by: Thu Hà
        /// 8/5/2011
        /// Lấy ds cần thuộc tính cập nhật
        /// </summary>
        /// <param name="intMaCauHoi"></param>
        /// <returns></returns>
        public List<CauTraLoi> LayDSCauTraLoiTheoMaCauHoi(int intMaCauHoi)
        {
            List<CauTraLoi> lstCauTraLoi = new List<CauTraLoi>();
            List<SqlParameter> lstParams = new List<SqlParameter>();
            lstParams.Add(new SqlParameter("@macauhoi", intMaCauHoi));
            try
            {
                DataTable dtCauTraLoi = new DataTable();
                dtCauTraLoi = SqlDataAccessHelper.ExecuteQuery("spLayDSCauTraLoiTheoMaCauHoi", lstParams);

                foreach (DataRow dtRow in dtCauTraLoi.Rows)
                {
                    CauTraLoi cauTraLoiDto = new CauTraLoi();
                    //Thu Hà
                    cauTraLoiDto.MaCauTraLoi = int.Parse(dtRow["MaCauTraLoi"].ToString());
                    cauTraLoiDto.NgayTraLoi = DateTime.Parse(dtRow["NgayTraLoi"].ToString());
                    cauTraLoiDto.SoSao = int.Parse(dtRow["SoSao"].ToString());
                    cauTraLoiDto.SoNguoiBinhChon = int.Parse(dtRow["SoNguoiBinhChon"].ToString());
                    cauTraLoiDto.BaoCaoViPham = int.Parse(dtRow["BaoCaoVipham"].ToString());
                    cauTraLoiDto.GhiChu = dtRow["GhiChu"].ToString();
                    cauTraLoiDto.NoiDung = dtRow["NoiDung"].ToString();
                    cauTraLoiDto.MaCauHoi = int.Parse(dtRow["MaCauHoi"].ToString());
                    cauTraLoiDto.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString());
                    cauTraLoiDto.DaXoa = int.Parse(dtRow["DaXoa"].ToString());
                    cauTraLoiDto.LyDo = dtRow["LyDo"].ToString();
                    try
                    {
                        cauTraLoiDto.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch (Exception e)
                    {
                        cauTraLoiDto.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    cauTraLoiDto.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString());
                    try
                    {
                    cauTraLoiDto.NgayCapNhat = DateTime.Parse(dtRow["NgayCapNhat"].ToString());
                    }
                    catch (Exception e)
                    {
                        cauTraLoiDto.NgayCapNhat = DateTime.Parse("1/1/1900");
                    }
                    cauTraLoiDto.NguoiCapNhat = int.Parse(dtRow["NguoiCapNhat"].ToString());
                    
                    lstCauTraLoi.Add(cauTraLoiDto);
                }
            }
            catch (Exception e)
            {
                //res = 0;
                throw e;
            }

            return lstCauTraLoi;
        }
        
        /// <summary>
        /// Created by  : Ngọc Hà
        /// Date        : 5/5/2011
        /// Edited by: Thu Hà
        /// 8/5/2011
        /// Lấy ds cần thuộc tính cập nhật
        /// </summary>
        /// <param name="intMaThanhVien"></param>
        /// <returns></returns>
        public List<CauTraLoi> LayDSCauTraLoiTheoMaNguoiTraLoi(int intMaThanhVien)
        {
            List<CauTraLoi> lstCauTraLoi = new List<CauTraLoi>();
            List<SqlParameter> lstParams = new List<SqlParameter>();
            try
            {
                lstParams.Add(new SqlParameter("@mathanhvien", intMaThanhVien));

                DataTable dtCauTraLoi = new DataTable();
                dtCauTraLoi = SqlDataAccessHelper.ExecuteQuery("spLayDSCauTraLoiTheoMaNguoiTraLoi", lstParams);

                foreach (DataRow dtRow in dtCauTraLoi.Rows)
                {
                    CauTraLoi cauTraLoiDto = new CauTraLoi();

                    //Thu Hà
                    cauTraLoiDto.MaCauTraLoi = int.Parse(dtRow["MaCauTraLoi"].ToString());
                    cauTraLoiDto.NgayTraLoi = DateTime.Parse(dtRow["NgayTraLoi"].ToString());
                    cauTraLoiDto.SoSao = int.Parse(dtRow["SoSao"].ToString());
                    cauTraLoiDto.SoNguoiBinhChon = int.Parse(dtRow["SoNguoiBinhChon"].ToString());
                    cauTraLoiDto.BaoCaoViPham = int.Parse(dtRow["BaoCaoVipham"].ToString());
                    cauTraLoiDto.GhiChu = dtRow["GhiChu"].ToString();
                    cauTraLoiDto.NoiDung = dtRow["NoiDung"].ToString();
                    cauTraLoiDto.MaCauHoi = int.Parse(dtRow["MaCauHoi"].ToString());
                    cauTraLoiDto.MaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString());
                    cauTraLoiDto.DaXoa = int.Parse(dtRow["DaXoa"].ToString());
                    cauTraLoiDto.LyDo = dtRow["LyDo"].ToString();
                    try
                    {
                        cauTraLoiDto.NgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    }
                    catch (Exception e)
                    {
                        cauTraLoiDto.NgayXoa = DateTime.Parse("1/1/1900");
                    }
                    cauTraLoiDto.NguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString());
                    try
                    {
                        cauTraLoiDto.NgayCapNhat = DateTime.Parse(dtRow["NgayCapNhat"].ToString());
                    }
                    catch (Exception e)
                    {
                        cauTraLoiDto.NgayCapNhat = DateTime.Parse("1/1/1900");
                    }
                    cauTraLoiDto.NguoiCapNhat = int.Parse(dtRow["NguoiCapNhat"].ToString());

                    lstCauTraLoi.Add(cauTraLoiDto);
                    
                }
            }
            catch (Exception e)
            {
                //res = 0;
                throw e;
            }

            return lstCauTraLoi;
        }
        
        /// <summary>
        /// Created by  : Ngọc Hà
        /// Date        : 5/5/2011
        /// Edited by: Thu Hà
        /// 8/5/2011
        /// Thêm thì ko cần thuộc tính Cập nhật
        /// </summary>
        /// <returns></returns>        
        public int ThemCauTraLoi()
        {

            int res = 0;
            List<SqlParameter> lstParams = new List<SqlParameter>();
            try
            {
                lstParams.Add(new SqlParameter("@ngaytraloi", NgayTraLoi));
                lstParams.Add(new SqlParameter("@sosao", SoSao));
                lstParams.Add(new SqlParameter("@songuoibinhchon", SoNguoiBinhChon));
                lstParams.Add(new SqlParameter("@baocaovipham", BaoCaoViPham));
                lstParams.Add(new SqlParameter("@ghichu", GhiChu));
                lstParams.Add(new SqlParameter("@noidung", NoiDung));
                lstParams.Add(new SqlParameter("@macauhoi", MaCauHoi));
                lstParams.Add(new SqlParameter("@mathanhvien", MaThanhVien));
                lstParams.Add(new SqlParameter("@daxoa", DaXoa));
                lstParams.Add(new SqlParameter("@lydo", LyDo));
                lstParams.Add(new SqlParameter("@ngayxoa", DaXoa));
                lstParams.Add(new SqlParameter("@nguoixoa", NguoiXoa));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spThemCauTraLoi", lstParams);
            }
            catch (Exception e)
            {
                res = 0;
                throw e;
            }

            return res;
        }
        
        /// <summary>
        /// Created by  : Ngọc Hà
        /// Date        : 5/5/2011
        /// </summary>
        /// <param name="intMaCauTraLoi"></param>
        /// <param name="strLyDo"></param>
        /// <param name="dtmNgayXoa"></param>
        /// <param name="intNguoiXoa"></param>
        /// <returns></returns>
        public int XoaCauTraLoi(int intMaCauTraLoi, string strLyDo, DateTime dtmNgayXoa, int intNguoiXoa)
        {

            int res = 0;
            List<SqlParameter> lstParams = new List<SqlParameter>();
            try
            {
                lstParams.Add(new SqlParameter("@macautraloi", intMaCauTraLoi));
                lstParams.Add(new SqlParameter("@lydo", strLyDo));
                lstParams.Add(new SqlParameter("@ngayxoa", dtmNgayXoa));
                lstParams.Add(new SqlParameter("@nguoixoa", intNguoiXoa));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spXoaCauTraLoi", lstParams);

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
