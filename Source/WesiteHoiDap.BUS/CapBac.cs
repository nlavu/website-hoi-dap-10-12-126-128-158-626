using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteHoiDap.BUS
{
    public class CapBac : SqlDataAccessHelper
    {
        #region Member Variables

            int intMaCapBac = int.MinValue;
            string strTenCapBac = String.Empty;
            int intDiem = int.MinValue;
            int intTongCauHoi = int.MinValue;
            int intTongCauTraLoi = int.MinValue;

        #endregion

        
        #region Properties

            public int MaCapBac
            {
                get { return intMaCapBac; }
                set { intMaCapBac = value; }
            }
            public string TenCapBac 
            {
                get { return strTenCapBac; }
                set { strTenCapBac = value; }
            }
            public int Diem
            {
                get { return intDiem; }
                set { intDiem = value; }
            }
            public int TongCauHoi
            {
                get { return intTongCauHoi; }
                set { intTongCauHoi = value; }
            }
            public int TongCauTraLoi
            {
                get { return intTongCauTraLoi; }
                set { intTongCauTraLoi = value; }
            }
        #endregion

        #region method
        

        /// <summary>
        /// Thêm cấo bậc
        /// Khắc Anh
        /// Date 6/5/2011
        /// </summary>
        /// <param name="capbatDto"> </param>
        /// <returns>1: 0</returns>
        
            public int ThemCapBac()
            {
                int res = 0;
                try
                {
                    // add tham số
                    List<SqlParameter> lstParam = new List<SqlParameter>();
                    lstParam.Add(new SqlParameter("@macapbac", intMaCapBac));
                    lstParam.Add(new SqlParameter("@tencapbac", strTenCapBac));
                    lstParam.Add(new SqlParameter("@diem", intDiem));
                    lstParam.Add(new SqlParameter("@tongcauhoi", intTongCauHoi));
                    lstParam.Add(new SqlParameter("@tongcautraloi", intTongCauTraLoi));
                    
                    res = SqlDataAccessHelper.ExecuteNoneQuery("spThemCapBac", lstParam);

                }
                catch (Exception e)
                {
                    res = 0;
                    throw e;
                }
                return res;
            }

        /// <summary>
        /// Lấy DS cấp bậc
        /// Khắc Anh
        /// Date 6/5/2011
        /// </summary>
        /// <param name="capbatDto"> </param>
        /// <returns>DataTable dtDSCapBac</returns>

            public List<CapBac> LayDSCapBac()
            {
                List<CapBac> lstDSCapBac = new List<CapBac>();
                try
                {
                    DataTable dtDSCapBac = new DataTable();
                    dtDSCapBac = SqlDataAccessHelper.ExecuteQuery("spLayDSCapBac");
                    foreach (DataRow dtRow in dtDSCapBac.Rows)
                    {
                        CapBac CapBac = new CapBac();
                        CapBac.intMaCapBac = int.Parse(dtRow["MaCapBac"].ToString());
                        CapBac.strTenCapBac = dtRow["TenCapBac"].ToString();
                        CapBac.intDiem = int.Parse(dtRow["Diem"].ToString());
                        CapBac.intTongCauHoi = int.Parse(dtRow["TongCauHoi"].ToString());
                        CapBac.intTongCauTraLoi = int.Parse(dtRow["TongCauTraLoi"].ToString());
                        lstDSCapBac.Add(CapBac);
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                return lstDSCapBac;
            }

        /// <summary>
        /// Lấy cấp bậc theo mã
        /// Khắc Anh
        /// Date 6/5/2011
        /// </summary>
        /// <param name="capbatDto"> </param>
        /// <returns>1: 0</returns>
          
        public int LayCapBacTheoMa()
            {
                int res = 0;
                try
                {
                    // add tham số
                    List<SqlParameter> lstParam = new List<SqlParameter>();
                    lstParam.Add(new SqlParameter("@macapbac", intMaCapBac));
                    
                    res = SqlDataAccessHelper.ExecuteNoneQuery("spLayCapBacTheoMa", lstParam);

                }
                catch (Exception e)
                {
                    res = 0;
                    throw e;
                }
                return res;
            }

        /// <summary>
        /// Cập nhật cấp bậc
        /// Khắc Anh
        /// Date 6/5/2011
        /// </summary>
        /// <param name="capbatDto"> </param>
        /// <returns>1: 0</returns>

        public int CapNhatCapBac()
        {
            int res = 0;
            try
            {
                // add tham số
                List<SqlParameter> lstParam = new List<SqlParameter>();
                lstParam.Add(new SqlParameter("@macapbac", intMaCapBac));
                lstParam.Add(new SqlParameter("@tencapbac", strTenCapBac));
                lstParam.Add(new SqlParameter("@diem", intDiem));
                lstParam.Add(new SqlParameter("@tongcauhoi", intTongCauHoi));
                lstParam.Add(new SqlParameter("@tongcautraloi", intTongCauTraLoi));
                    

                res = SqlDataAccessHelper.ExecuteNoneQuery("spCapNhatCapBat", lstParam);

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
