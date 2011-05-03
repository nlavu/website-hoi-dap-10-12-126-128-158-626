using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Xml;

namespace WebsiteHoiDap.BUS
{
    public class SqlDataAccessHelper
    {
        #region ConnectionString

        protected static String connectionString;

        public static String ConnectionString
        {
            get
            {
                string sqlCon = "Data Source=KHTN-F1e4617769;Initial Catalog=WebsiteHoiDap;Integrated Security=True;Connect Timeout=30;";
                return sqlCon;
            }
        }

        public static String ReadConnectionString(String file)
        {
            try
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(file);
                XmlElement root = doc.DocumentElement;
                String connectionString = root.InnerText;
                return connectionString;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        #endregion

        #region ExecuteQuery
        public static DataTable ExecuteQuery(String spName, List<SqlParameter> sqlParams)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection connect = new SqlConnection(ConnectionString);
                //SqlTransaction sqlTransaction;
                connect.Open();
                //sqlTransaction = connect.BeginTransaction();
                try
                {
                    SqlCommand command = connect.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = spName;
                    if (sqlParams != null)
                    {
                        foreach (SqlParameter param in sqlParams)
                        {
                            command.Parameters.Add(param);
                        }
                    }
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    adapter.SelectCommand = command;
                    adapter.Fill(dt);
                    //sqlTransaction.Commit();
                }

                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    //sqlTransaction.Rollback();
                    connect.Close();
                }
            }

            catch (Exception ex)
            {
                throw ex;
            }
            return dt;
        }
        public static DataTable ExecuteQuery(String spName)
        {
            return ExecuteQuery(spName, null);
        }
        #endregion

        #region ExecuteNoneQuery

        public static int ExecuteNoneQuery(String spName, List<SqlParameter> sqlParams)
        {
            int n;
            try
            {
                SqlConnection connect = new SqlConnection(ConnectionString);
                connect.Open();
                //SqlTransaction sqlTransaction = connect.BeginTransaction();
                try
                {
                    SqlCommand command = connect.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = spName;
                    if (sqlParams != null)
                    {
                        foreach (SqlParameter param in sqlParams)
                        {
                            command.Parameters.Add(param);
                        }
                    }
                    n = command.ExecuteNonQuery();
                    //sqlTransaction.Commit();
                }

                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    //sqlTransaction.Rollback();
                    connect.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return n;
        }

        public static int ExecuteNoneQuery(String spName)
        {
            return ExecuteNoneQuery(spName, null);
        }

        #endregion
    }
}
