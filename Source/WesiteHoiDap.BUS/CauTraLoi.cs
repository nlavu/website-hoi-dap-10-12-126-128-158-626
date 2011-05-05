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

        public int IntMaCauTraLoi
        {
            get { return intMaCauTraLoi; }
            set { intMaCauTraLoi = value; }
        }

        public DateTime DtmNgayTraLoi
        {
            get { return dtmNgayTraLoi; }
            set { dtmNgayTraLoi = value; }
        }

        public int IntSoSao
        {
            get { return intSoSao; }
            set { intSoSao = value; }
        }

        public int IntSoNguoiBinhChon
        {
            get { return intSoNguoiBinhChon; }
            set { intSoNguoiBinhChon = value; }
        }

        public int IntBaoCaoViPham
        {
            get { return intBaoCaoViPham; }
            set { intBaoCaoViPham = value; }
        }

        public string StrGhiChu
        {
            get { return strGhiChu; }
            set { strGhiChu = value; }
        }

        public string StrNoiDung
        {
            get { return strNoiDung; }
            set { strNoiDung = value; }
        }

        public int IntMaCauHoi
        {
            get { return intMaCauHoi; }
            set { intMaCauHoi = value; }
        }

        public int IntMaThanhVien
        {
            get { return intMaThanhVien; }
            set { intMaThanhVien = value; }
        }

        public int IntDaXoa
        {
            get { return intDaXoa; }
            set { intDaXoa = value; }
        }

        public string StrLyDo
        {
            get { return strLyDo; }
            set { strLyDo = value; }
        }

        public DateTime DtmNgayXoa
        {
            get { return dtmNgayXoa; }
            set { dtmNgayXoa = value; }
        }

        public int IntNguoiXoa
        {
            get { return intNguoiXoa; }
            set { intNguoiXoa = value; }
        }

        public DateTime DtmNgayCapNhat
        {
            get { return dtmNgayCapNhat; }
            set { dtmNgayCapNhat = value; }
        }

        public int IntNguoiCapNhat
        {
            get { return intNguoiCapNhat; }
            set { intNguoiCapNhat = value; }
        }

        #endregion

        #region method

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

                    cauTraLoiDto.DtmNgayTraLoi = DateTime.Parse(dtRow["NgayTraLoi"].ToString());
                    cauTraLoiDto.IntSoSao = int.Parse(dtRow["SoSao"].ToString());
                    cauTraLoiDto.IntSoNguoiBinhChon = int.Parse(dtRow["SoNguoiBinhChon"].ToString());
                    cauTraLoiDto.IntBaoCaoViPham = int.Parse(dtRow["BaoCaoVipham"].ToString());
                    cauTraLoiDto.StrGhiChu = dtRow["GhiChu"].ToString();
                    cauTraLoiDto.StrNoiDung = dtRow["NoiDung"].ToString();
                    cauTraLoiDto.IntMaCauHoi = int.Parse(dtRow["MaCauHoi"].ToString());
                    cauTraLoiDto.IntMaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString());
                    cauTraLoiDto.IntDaXoa = int.Parse(dtRow["DaXoa"].ToString());
                    cauTraLoiDto.StrLyDo = dtRow["LyDo"].ToString();
                    cauTraLoiDto.DtmNgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    cauTraLoiDto.IntNguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString());

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
                    CauTraLoi cauTraLoi = new CauTraLoi();

                    cauTraLoi.DtmNgayTraLoi = DateTime.Parse(dtRow["NgayTraLoi"].ToString());
                    cauTraLoi.IntSoSao = int.Parse(dtRow["SoSao"].ToString());
                    cauTraLoi.IntSoNguoiBinhChon = int.Parse(dtRow["SoNguoiBinhChon"].ToString());
                    cauTraLoi.IntBaoCaoViPham = int.Parse(dtRow["BaoCaoVipham"].ToString());
                    cauTraLoi.StrGhiChu = dtRow["GhiChu"].ToString();
                    cauTraLoi.StrNoiDung = dtRow["NoiDung"].ToString();
                    cauTraLoi.IntMaCauHoi = int.Parse(dtRow["MaCauHoi"].ToString());
                    cauTraLoi.IntMaThanhVien = int.Parse(dtRow["MaThanhVien"].ToString());
                    cauTraLoi.IntDaXoa = int.Parse(dtRow["DaXoa"].ToString());
                    cauTraLoi.StrLyDo = dtRow["LyDo"].ToString();
                    cauTraLoi.DtmNgayXoa = DateTime.Parse(dtRow["NgayXoa"].ToString());
                    cauTraLoi.IntNguoiXoa = int.Parse(dtRow["NguoiXoa"].ToString());

                    lstCauTraLoi.Add(cauTraLoi);
                }
            }
            catch (Exception e)
            {
                //res = 0;
                throw e;
            }

            return lstCauTraLoi;
        }

        public int ThemCauTraLoi(DateTime dtmNgayTraLoi, int intSoSao, int intSoNguoiBinhChon, int intBaoCaoViPham, string strNoiDung, int intMaCauHoi,
                                    int intMaThanhVien, int intDaXoa, string strLyDo, DateTime dtmNgayXoa, int intNguoiXoa)
        {

            int res = 0;
            List<SqlParameter> lstParams = new List<SqlParameter>();
            try
            {
                lstParams.Add(new SqlParameter("@ngaytraloi", dtmNgayTraLoi));
                lstParams.Add(new SqlParameter("@sosao", intSoSao));
                lstParams.Add(new SqlParameter("@songuoibinhchon", intSoNguoiBinhChon));
                lstParams.Add(new SqlParameter("@baocaovipham", intBaoCaoViPham));
                lstParams.Add(new SqlParameter("@ghichu", strGhiChu));
                lstParams.Add(new SqlParameter("@noidung", strNoiDung));
                lstParams.Add(new SqlParameter("@macauhoi", intMaCauHoi));
                lstParams.Add(new SqlParameter("@mathanhvien", intMaThanhVien));
                lstParams.Add(new SqlParameter("@daxoa", intDaXoa));
                lstParams.Add(new SqlParameter("@lydo", strLyDo));
                lstParams.Add(new SqlParameter("@ngayxoa", dtmNgayXoa));
                lstParams.Add(new SqlParameter("@nguoixoa", intNguoiXoa));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spThemCauTraLoi", lstParams);
            }
            catch (Exception e)
            {
                res = 0;
                throw e;
            }

            return res;
        }

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
