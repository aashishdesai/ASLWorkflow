using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DataAccessLayer
{
    public class SqlHelper
    {
        public int executeSave(SqlCommand cmd)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            cmd.Connection = con;
            try
            {
                con.Open();
                return cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
        public int executeUpdate(SqlCommand cmd)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            cmd.Connection = con;
            try
            {
                con.Open();
                return cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        public SqlDataReader executeRead(SqlCommand cmd)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader data = cmd.ExecuteReader();
                return data;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
            
        }

    }
}
