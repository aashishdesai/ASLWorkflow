using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using DataLayer;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace DataAccessLayer
{
    public class WorkflowReportDAO
    {
        public WorkflowReportDTO Workflow_Report(string workflow_Name, string subject_employee, string radioSelect)
        {

            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "WorkFlowTaskStandardReport";
            //Add the input parameters to the command object

            cmd.Parameters.Add("@WName", SqlDbType.VarChar).Value = workflow_Name;
            //    cmd.Parameters.Add("@WStatus", SqlDbType.VarChar).Value = workflow_status;
            cmd.Parameters.Add("@SEmployee", SqlDbType.VarChar).Value = subject_employee;
            cmd.Parameters.Add("@RBSelect", SqlDbType.VarChar).Value = radioSelect;
            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                //return data;

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        return new WorkflowReportDTO(
                            reader.GetSqlString(0).ToString(),
                            reader.GetSqlString(1).ToString(),
                            reader.GetSqlString(2).ToString(),
                            reader.GetSqlString(3).ToString(),
                            reader.GetSqlString(4).ToString(),
                            reader.GetSqlString(5).ToString(),
                            reader.GetSqlString(6).ToString(),
                            reader.GetSqlString(7).ToString(),
                            reader.GetSqlString(8).ToString(),
                            reader.GetSqlString(9).ToString(),
                            reader.GetSqlString(10).ToString(),
                            reader.GetSqlString(11).ToString(),
                            reader.GetSqlString(12).ToString(),
                            reader.GetSqlString(13).ToString(),
                            reader.GetSqlString(14).ToString(),
                            reader.GetSqlString(15).ToString(),
                            reader.GetSqlString(16).ToString()
                           );


                    }
                }


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
            return null;
        }
    }
}