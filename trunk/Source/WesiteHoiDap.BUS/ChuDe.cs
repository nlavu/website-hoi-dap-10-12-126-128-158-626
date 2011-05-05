//Anh Vũ

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteHoiDap.BUS
{
    public class ChuDe : SqlDataAccessHelper
    {
        #region Member Variables
        int intMaChuDe = int.MinValue;
        string strTenChuDe = String.Empty;
        int intDaXoa = int.MinValue;
        #endregion

        #region Properties
        public int IntMaChuDe
        {
            get { return intMaChuDe; }
            set { intMaChuDe = value; }
        }
        public string StrTenChuDe
        {
            get { return strTenChuDe; }
            set { strTenChuDe = value; }
        }
        public int IntDaXoa
        {
            get { return intDaXoa; }
            set { intDaXoa = value; }
        }
        #endregion

        #region method
        /// <summary>
        /// Lấy DS Chủ Đề
        /// Created by  : Anh Vũ
        /// Date        : 5/5/2011
        /// </summary>
        /// <param name="chuDe"> </param>
        /// <returns>DataTable dtDSHopDong</returns>
        
        public List<ChuDe> LayDSChuDe()
        {
            List<ChuDe> lstDSChuDe = new List<ChuDe>();
            try
            {
                DataTable dtDSChuDe = new DataTable();
                dtDSChuDe = SqlDataAccessHelper.ExecuteQuery("spLayDSChuDe");
                foreach (DataRow dtRow in dtDSChuDe.Rows)
                {
                    ChuDe chuDe = new ChuDe();
                    chuDe.intMaChuDe = int.Parse(dtRow["MaChuDe"].ToString());
                    chuDe.strTenChuDe = dtRow["TenChuDe"].ToString();
                    chuDe.intDaXoa = int.Parse(dtRow["DaXoa"].ToString());
                    lstDSChuDe.Add(chuDe);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lstDSChuDe;
        }

        /// <summary>
        /// Cập Nhật Chủ Đề
        /// Created by  : Anh Vũ
        /// Date        : 5/5/2011
        /// </summary>
        /// <param name="chuDe"> </param>
        /// <returns>1 : 0</returns>
        
        public int CapNhatChuDe(ChuDe chuDe)
        {
            int res = 0;
            try
            {
                List<SqlParameter> lstParameters = new List<SqlParameter>();

                lstParameters.Add(new SqlParameter("@machude", chuDe.intMaChuDe));
                lstParameters.Add(new SqlParameter("@tenchude", chuDe.strTenChuDe));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spCapNhatChuDe",lstParameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return res;
        }

        /// <summary>
        /// Thêm Chủ Đề
        /// Created by  : Anh Vũ
        /// Date        : 5/5/2011
        /// </summary>
        /// <param name="chuDe"> </param>
        /// <returns>1 : 0</returns>

        public int ThemChuDe(string strTenChuDe)
        {
            int res = 0;
            try
            {
                List<SqlParameter> lstParameters = new List<SqlParameter>();

                lstParameters.Add(new SqlParameter("@tenchude", strTenChuDe));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spThemChuDe", lstParameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return res;
        }

        /// <summary>
        /// Xoá Chủ Đề
        /// Created by  : Anh Vũ
        /// Date        : 5/5/2011
        /// </summary>
        /// <param name="chuDe"> </param>
        /// <returns>1 : 0</returns>

        public int XoaChuDe(int iMaChuDe)
        {
            int res = 0;
            try
            {
                List<SqlParameter> lstParameters = new List<SqlParameter>();

                lstParameters.Add(new SqlParameter("@tenchude", iMaChuDe));

                res = SqlDataAccessHelper.ExecuteNoneQuery("spXoaChuDe", lstParameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return res;
        }

        #endregion
    }
}
