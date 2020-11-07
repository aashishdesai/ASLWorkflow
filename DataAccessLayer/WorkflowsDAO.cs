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
    public class WorkflowsDAO
    {
        public void SaveWorkflow(WorkflowsDTO workflowsDTO)
        {


            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "AddWorkflow_Insert";
            //Add the input parameters to the command object
            cmd.Parameters.Add("@Code", SqlDbType.VarChar).Value = workflowsDTO.Code;
            cmd.Parameters.Add("@Workflow_Name", SqlDbType.VarChar).Value = workflowsDTO.Workflow_Name;
            cmd.Parameters.Add("@Language", SqlDbType.VarChar).Value = workflowsDTO.Language;
            cmd.Parameters.Add("@Inactive", SqlDbType.Bit).Value = workflowsDTO.Inactive;
            SqlHelper sqlHelper = new SqlHelper();
            int result = sqlHelper.executeSave(cmd);
            if (result == -1)
            {
                throw new DuplicateNameException();

            }

        }
       
        public void DeleteWorkflowStep(string workflow_Name,string step_ID)
        {


            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "WorkflowSteps_Delete";
            //Add the input parameters to the command object
            cmd.Parameters.Add("@Workflow_Name", SqlDbType.VarChar).Value = workflow_Name;
            cmd.Parameters.Add("@stepID", SqlDbType.UniqueIdentifier).Value = new Guid(step_ID);
           
            SqlHelper sqlHelper = new SqlHelper();
            int result = sqlHelper.executeSave(cmd);
            if (result == -1)
            {
                throw new DuplicateNameException();

            }

        }
        public void UpdateWorkflow(WorkflowsDTO workflowsDTO)
        {


            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "WorkflowName_Update";
            //Add the input parameters to the command object
            cmd.Parameters.Add("@Code", SqlDbType.VarChar).Value = workflowsDTO.Code;
            cmd.Parameters.Add("@Workflow_Name", SqlDbType.VarChar).Value = workflowsDTO.Workflow_Name;
            cmd.Parameters.Add("@Language", SqlDbType.VarChar).Value = workflowsDTO.Language;
            cmd.Parameters.Add("@Inactive", SqlDbType.Bit).Value = workflowsDTO.Inactive;
            SqlHelper sqlHelper = new SqlHelper();
            int result = sqlHelper.executeUpdate(cmd);
            if (result == -1)
            {
                throw new DuplicateNameException();

            }

        }

        public EditWorkflowsDTO EditWorkflow(string workflow_Name)
        {

            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "EditSelectWorkflow_code";
            //Add the input parameters to the command object

            cmd.Parameters.Add("@Workflow_Name", SqlDbType.VarChar).Value = workflow_Name;

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
                        return new EditWorkflowsDTO(reader.GetSqlString(0).ToString(), reader.GetSqlString(1).ToString(), (bool)reader.GetSqlBoolean(2));


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



        public List<ViewWorkflowsDTO> SearchWorkflowName(string searchWorkflow)
        {
            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SearchWorkflowName";
            cmd.Parameters.Add("@SearchVal", SqlDbType.VarChar).Value = searchWorkflow;
            SqlHelper sqlHelper = new SqlHelper();
            //SqlDataReader reader=  sqlHelper.executeRead(cmd);

            List<ViewWorkflowsDTO> workflowsDtos = new List<ViewWorkflowsDTO>();
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
                        workflowsDtos.Add(new ViewWorkflowsDTO(reader.GetSqlString(0).ToString(), (bool)reader.GetSqlBoolean(1)));


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





            return workflowsDtos;

        }

        public List<ViewWorkflowsDTO> GridEditSelectWorkflow()
        {
            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "EditSelectWorkflow_Select";
            SqlHelper sqlHelper = new SqlHelper();
            //SqlDataReader reader=  sqlHelper.executeRead(cmd);

            List<ViewWorkflowsDTO> workflowsDtos = new List<ViewWorkflowsDTO>();
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
                        workflowsDtos.Add(new ViewWorkflowsDTO(reader.GetSqlString(0).ToString(), (bool)reader.GetSqlBoolean(1)));


                    }
                }
                else
                {
                    //("No rows found.");
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





            return workflowsDtos;

        }

        public List<EmployeeSearchDTO> SearchEmployee(string searchBy, string filterBy)
        {
            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "testSearchEmployee";
            cmd.Parameters.Add("@SearchBy", SqlDbType.VarChar).Value = searchBy;
            cmd.Parameters.Add("@FilterBy", SqlDbType.VarChar).Value = filterBy;


            SqlHelper sqlHelper = new SqlHelper();
            //SqlDataReader reader=  sqlHelper.executeRead(cmd);

            List<EmployeeSearchDTO> searchDtos = new List<EmployeeSearchDTO>();
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
                        searchDtos.Add(new EmployeeSearchDTO(reader.GetSqlString(0).ToString(), reader.GetSqlGuid(1).ToString()));


                    }
                }
                else
                {
                    //("No rows found.");
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





            return searchDtos;

        }



        public void AssignEmployee(string empId, string wfName, string stepId)
        {
            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "AssignEmployeeToWorkflowStep";
            //Add the input parameters to the command object
           
            cmd.Parameters.Add("@EmployeeId", SqlDbType.UniqueIdentifier).Value = new Guid(empId);
            cmd.Parameters.Add("@WorkflowName", SqlDbType.VarChar).Value = wfName;
            cmd.Parameters.Add("@StepDescId", SqlDbType.UniqueIdentifier).Value = new Guid(stepId);
           
            SqlHelper sqlHelper = new SqlHelper();
            int result = sqlHelper.executeSave(cmd);

        }
        public void SaveWorkflowSteps(string workflow_Name,string stepID,int stepNumber)
        {


            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "WorkflowSteps_Save";
            //Add the input parameters to the command object
            cmd.Parameters.Add("@Workflow_Name", SqlDbType.VarChar).Value =workflow_Name;
            cmd.Parameters.Add("@Step_Screen_Id", SqlDbType.UniqueIdentifier).Value = new Guid(stepID); 
            cmd.Parameters.Add("@StepNumber", SqlDbType.Int).Value = stepNumber;
           
            SqlHelper sqlHelper = new SqlHelper();
            int result = sqlHelper.executeSave(cmd);
        }

        public List<LoadWorkflowStepsDTO> WFStepsOnLoad(string WorkflowName)
        {
            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "WorkflowStepsOnLoad";
            cmd.Parameters.Add("@workflowName", SqlDbType.VarChar).Value = WorkflowName;
            SqlHelper sqlHelper = new SqlHelper();
            //SqlDataReader reader=  sqlHelper.executeRead(cmd);

            List<LoadWorkflowStepsDTO> loadworkflowsDtos = new List<LoadWorkflowStepsDTO>();
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
                        loadworkflowsDtos.Add(new LoadWorkflowStepsDTO(reader.GetSqlString(0).ToString(), reader.GetGuid(1).ToString()));


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





            return loadworkflowsDtos;

        }
        public LoadTaskformDTO loadTaskform(string workflow_Name, string step_Id)
        {

            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "EditWorkflowTaskform_Load";
            //Add the input parameters to the command object

            cmd.Parameters.Add("@Workflow_Name", SqlDbType.VarChar).Value = workflow_Name;
            cmd.Parameters.Add("@Step_Id", SqlDbType.UniqueIdentifier).Value = new Guid(step_Id);

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
                        return new LoadTaskformDTO(reader.GetSqlString(0).ToString(), reader.GetSqlString(1).ToString(), reader.GetSqlString(2).ToString(),
                            reader.GetSqlInt32(3).Value);


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



        public LoadTaskformDTO loadTaskformToEdit(string workflowTaskFormId)
        {

            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "EditWorkflowTaskform_OnEditLoad";
            //Add the input parameters to the command object


            cmd.Parameters.Add("@Workflow_Task_Form_Id", SqlDbType.UniqueIdentifier).Value = new Guid(workflowTaskFormId);

            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        //string taskNumber = reader.GetSqlInt32(0).IsNull? "":reader.GetSqlInt32(0).Value.ToString();
                        //string escalateAfter = reader.GetSqlInt32(1).IsNull ? "" : reader.GetSqlInt32(1).Value.ToString();
                        //string EscalateTimestamp = reader.GetSqlDateTime(2).IsNull ? "" : reader.GetSqlDateTime(2).Value.ToString();
                        //string createdDate = reader.GetSqlDateTime(10).IsNull ? "" : reader.GetSqlDateTime(10).Value.ToString();
                        //string updatedDate = reader.GetSqlDateTime(11).IsNull ? "" : reader.GetSqlDateTime(11).Value.ToString();
                        //string test = reader.GetSqlGuid(3).IsNull ? "" : reader.GetSqlGuid(3).Value.ToString();

                        return new LoadTaskformDTO(
                            reader.GetSqlInt32(0).IsNull ? "" : reader.GetSqlInt32(0).Value.ToString(),
                            reader.GetSqlInt32(1).IsNull ? "" : reader.GetSqlInt32(1).Value.ToString(),
                            reader.GetSqlDateTime(2).IsNull ? "" : reader.GetSqlDateTime(2).Value.ToString(),
                            reader.GetSqlString(3).IsNull ? "" : reader.GetSqlString(3).Value.ToString(),
                            reader.GetSqlString(4).IsNull ? "" : reader.GetSqlString(4).Value.ToString(),
                            reader.GetSqlString(5).IsNull ? "" : reader.GetSqlString(5).Value.ToString(),
                            reader.GetSqlString(6).IsNull ? "" : reader.GetSqlString(6).Value.ToString(),
                            reader.GetSqlString(7).IsNull ? "" : reader.GetSqlString(7).Value.ToString(),
                            reader.GetSqlString(8).IsNull ? "" : reader.GetSqlString(8).Value.ToString(),
                            reader.GetSqlDateTime(9).IsNull ? "" : reader.GetSqlDateTime(9).Value.ToString(),
                            reader.GetSqlDateTime(10).IsNull ? "" : reader.GetSqlDateTime(10).Value.ToString(),
                            reader.GetSqlString(11).IsNull ? "" : reader.GetSqlString(11).Value.ToString(),
                            reader.GetSqlString(12).IsNull ? "" : reader.GetSqlString(12).Value.ToString(),
                            reader.GetSqlString(13).IsNull ? "" : reader.GetSqlString(13).Value.ToString(),
                            reader.GetSqlString(14).IsNull ? "" : reader.GetSqlString(14).Value.ToString(),
                            reader.GetSqlString(15).IsNull ? "" : reader.GetSqlString(15).Value.ToString(),
                            reader.GetSqlGuid(16).IsNull ? "" : reader.GetSqlGuid(16).Value.ToString(),
                            reader.GetSqlGuid(17).IsNull ? "" : reader.GetSqlGuid(17).Value.ToString(),
                            reader.GetSqlGuid(18).IsNull ? "" : reader.GetSqlGuid(18).Value.ToString(),
                            reader.GetSqlGuid(19).IsNull ? "" : reader.GetSqlGuid(19).Value.ToString()
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

        




        public LoadWFTaskChkListDTO loadWFTaskCheckListform(string workflow_Name, string step_Id)
        {

            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "EditWorkflowTaskChecklist_Load";
            //Add the input parameters to the command object

            cmd.Parameters.Add("@Workflow_Name", SqlDbType.VarChar).Value = workflow_Name;
            cmd.Parameters.Add("@Step_Id", SqlDbType.UniqueIdentifier).Value = new Guid(step_Id);

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
                        return new LoadWFTaskChkListDTO(reader.GetSqlString(0).ToString(), reader.GetSqlString(1).ToString(), reader.GetSqlString(2).ToString(),
                            reader.GetSqlInt32(3).Value);


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



        public List<LoadWorkflowTaskDTO> loadWFTask(string step_Screen_Id,string workflow_Name)
        {

            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Workflow_Task_Load";
            //Add the input parameters to the command object

            cmd.Parameters.Add("@Step_Screen_Id", SqlDbType.UniqueIdentifier).Value = new Guid(step_Screen_Id);
            cmd.Parameters.Add("@WorkflowName", SqlDbType.VarChar).Value = workflow_Name;


            List<LoadWorkflowTaskDTO> loadworkflowTaskDtos = new List<LoadWorkflowTaskDTO>();
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
                        loadworkflowTaskDtos.Add(new LoadWorkflowTaskDTO(reader.GetSqlString(0).ToString(), reader.GetGuid(1).ToString()));


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





            return loadworkflowTaskDtos;

        }

        public void SaveWFTaskForm (WorkflowTaskFormsDTO wfTaskFormDto)
        {


            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "EditWFTaskForm_Insert";
            //Add the input parameters to the command object
            
            cmd.Parameters.Add("@Subject_Employee_Id", SqlDbType.VarChar).Value = wfTaskFormDto.Subject_Employee_Id;
            cmd.Parameters.Add("@Subject_Employee_Name", SqlDbType.VarChar).Value = wfTaskFormDto.Subject_Employee_Name;
            cmd.Parameters.Add("@From_Employee_Name", SqlDbType.VarChar).Value = wfTaskFormDto.From_Employee_Name;
            cmd.Parameters.Add("@Employee_TO", SqlDbType.UniqueIdentifier).Value =new Guid( wfTaskFormDto.Employee_TO);
            
            Guid empCC = new Guid();
            if (!string.IsNullOrEmpty(wfTaskFormDto.Employee_CC))
            {
               empCC = new Guid(wfTaskFormDto.Employee_CC);
            }

            cmd.Parameters.Add("@Employee_CC", SqlDbType.UniqueIdentifier).Value = empCC;

            Guid empBCC = new Guid();
            if (!string.IsNullOrEmpty(wfTaskFormDto.Employee_BCC))
            {
                empBCC = new Guid(wfTaskFormDto.Employee_BCC);
            }

            cmd.Parameters.Add("@Employee_BCC", SqlDbType.UniqueIdentifier).Value =empBCC;
            cmd.Parameters.Add("@Subject", SqlDbType.VarChar).Value = wfTaskFormDto.Subject;
            cmd.Parameters.Add("@Message_Box", SqlDbType.VarChar).Value = wfTaskFormDto.Message_Box;

            Guid escTo = new Guid();
            if (!string.IsNullOrEmpty(wfTaskFormDto.Escalate_To))
            {
                escTo = new Guid(wfTaskFormDto.Escalate_To);
            }

            cmd.Parameters.Add("@Escalate_To", SqlDbType.UniqueIdentifier).Value = escTo;
            cmd.Parameters.Add("@Escalate_After", SqlDbType.Int).Value = wfTaskFormDto.Escalate_After == "" ? DBNull.Value : (Object)wfTaskFormDto.Escalate_After;
           // cmd.Parameters.Add("@Escalate_Timestamp", SqlDbType.DateTime).Value = null;
            cmd.Parameters.Add("@Sign_Off", SqlDbType.VarChar).Value = wfTaskFormDto.Sign_Off;
           // cmd.Parameters.Add("@Sign_Timestamp", SqlDbType.DateTime).Value =null;
            cmd.Parameters.Add("@Cancel_By", SqlDbType.VarChar).Value = wfTaskFormDto.Cancel_By;
           // cmd.Parameters.Add("@Cancel_Timestamp", SqlDbType.DateTime).Value = null;
            cmd.Parameters.Add("@Step_Screen_Id", SqlDbType.UniqueIdentifier).Value =new Guid( wfTaskFormDto.Step_Screen_Id);
            cmd.Parameters.Add("@Workflow_Name", SqlDbType.VarChar).Value = wfTaskFormDto.Workflow_Name;



            SqlHelper sqlHelper = new SqlHelper();
            int result = sqlHelper.executeSave(cmd);
            if (result == -1)
            {
                throw new DuplicateNameException();

            }

        }


        public void UpdateWFTaskForm(WorkflowTaskFormsDTO wfTaskFormDto)
        {


            SqlCommand cmd = new SqlCommand();

            //Specify that the SqlCommand is a stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "EditWFTaskForm_Update";
            //Add the input parameters to the command object

            cmd.Parameters.Add("@Employee_TO", SqlDbType.UniqueIdentifier).Value = new Guid(wfTaskFormDto.Employee_TO);

            cmd.Parameters.Add("@workflowFormId", SqlDbType.UniqueIdentifier).Value = new Guid(wfTaskFormDto.wfFormId);

            Guid empCC = new Guid();
            if (!string.IsNullOrEmpty(wfTaskFormDto.Employee_CC))
            {
                empCC = new Guid(wfTaskFormDto.Employee_CC);
            }

            cmd.Parameters.Add("@Employee_CC", SqlDbType.UniqueIdentifier).Value = empCC;

            Guid empBCC = new Guid();
            if (!string.IsNullOrEmpty(wfTaskFormDto.Employee_BCC))
            {
                empBCC = new Guid(wfTaskFormDto.Employee_BCC);
            }

            cmd.Parameters.Add("@Employee_BCC", SqlDbType.UniqueIdentifier).Value = empBCC;
            cmd.Parameters.Add("@Subject", SqlDbType.VarChar).Value = wfTaskFormDto.Subject;
            cmd.Parameters.Add("@Message_Box", SqlDbType.VarChar).Value = wfTaskFormDto.Message_Box;

            Guid escTo = new Guid();
            if (!string.IsNullOrEmpty(wfTaskFormDto.Escalate_To))
            {
                escTo = new Guid(wfTaskFormDto.Escalate_To);
            }

            cmd.Parameters.Add("@Escalate_To", SqlDbType.UniqueIdentifier).Value = escTo;
            cmd.Parameters.Add("@Escalate_After", SqlDbType.Int).Value = wfTaskFormDto.Escalate_After == "" ? DBNull.Value : (Object)wfTaskFormDto.Escalate_After;


            SqlHelper sqlHelper = new SqlHelper();
            int result = sqlHelper.executeSave(cmd);
            if (result == -1)
            {
                throw new DuplicateNameException();

            }

        }




    }
}


