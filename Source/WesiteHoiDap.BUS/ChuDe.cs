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
        public int MaChuDe
        {
            get { return intMaChuDe; }
            set { intMaChuDe = value; }
        }
        public string TenChuDe
        {
            get { return strTenChuDe; }
            set { strTenChuDe = value; }
        }
        public int DaXoa
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
        /// Edited by   : Thu Hà
        /// Date        : 8/5/2011
        /// </summary>
        /// <param name="chuDe"> </param>
        /// <returns>DataTable dtDSHopDong</returns>

        public static List<ChuDe> LayDSChuDe()
        {
            List<ChuDe> lstDSChuDe = new List<ChuDe>();
            DataTable dtDSChuDe = new DataTable();
            try
            {
                
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
            //return dtDSChuDe;
        }

        /// <summary>
        /// Cập Nhật Chủ Đề
        /// Created by  : Anh Vũ
        /// Date        : 5/5/2011
        /// </summary>
        /// <param name="chuDe"> </param>
        /// <returns>1 : 0</returns>
        
        public int CapNhatChuDe()
        {
            int res = 0;
            try
            {
                List<SqlParameter> lstParameters = new List<SqlParameter>();

                lstParameters.Add(new SqlParameter("@machude", intMaChuDe));
                lstParameters.Add(new SqlParameter("@tenchude", strTenChuDe));

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

        public static int ThemChuDe(ChuDe chuDe)
        {
            int res = 0;
            try
            {
                List<SqlParameter> lstParameters = new List<SqlParameter>();

                lstParameters.Add(new SqlParameter("@tenchude", chuDe.TenChuDe));

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
        /// Edited      : Thu Hà
        /// </summary>
        /// <param name="chuDe"> </param>
        /// <returns>1 : 0</returns>
        
        public static int XoaChuDe(int maChuDe)
        {
            int res = 0;
            try
            {
                List<SqlParameter> lstParameters = new List<SqlParameter>();

                lstParameters.Add(new SqlParameter("@machude", maChuDe));

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
