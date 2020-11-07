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
   public class EmpPerStepDAO
    {
       public empPerStepDTO empPerStep(string workflow_Name, string step_Name)
       {

           SqlCommand cmd = new SqlCommand();

           //Specify that the SqlCommand is a stored procedure
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.CommandText = "RetrieveEmpPerStep";
           //Add the input parameters to the command object

           cmd.Parameters.Add("@workflowName", SqlDbType.VarChar).Value = workflow_Name;
           cmd.Parameters.Add("@stepName", SqlDbType.VarChar).Value = step_Name;

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
                       return new empPerStepDTO(reader.GetSqlString(0).ToString());


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
