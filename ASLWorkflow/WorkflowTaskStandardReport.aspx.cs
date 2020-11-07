using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using BusinessLayer;
using DataLayer;


namespace ASLWorkflow
{
    public partial class WorkflowTaskStandardReport : LanguageChange
    {
        LanguageChange check = new LanguageChange();

        protected void Page_Load(object sender, EventArgs e)
        {
            string language = Session["mylang"].ToString();
            check.LanguageCheck(language);

            base.InitializeCulture();

            if (!Page.IsPostBack)
            {
                fill_workflow_name();
                //DataTable dt_workflow_name = fill_workflow_name();
                //ddlWorkflowName.DataSource = dt_workflow_name;
                //ddlWorkflowName.DataTextField = "Workflow_Name";

                //ddlWorkflowName.DataBind();


            }
        }

        public void fill_workflow_name()
        {

            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = (strConnString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "select_workflow_name";
            //cmd.Parameters.Add("@Language", SqlDbType.Char).Value = lang;
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataTable dt_workflow_name = new DataTable("Workflow_Name");
            adapter.Fill(dt_workflow_name);

            //  DataTable dt_workflow_name = fill_workflow_name();
            ddlWorkflowName.DataSource = dt_workflow_name;
            ddlWorkflowName.DataTextField = "Workflow_Name";

            ddlWorkflowName.DataBind();
            //  return dt_workflow_name;
        }




        public DataTable Taskform_Filter_Load_Data(String workflow_name)
        {

            String strConnString = ConfigurationManager.ConnectionStrings["ASL"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = (strConnString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "TaskformFilter_Emp";
            cmd.Parameters.Add("@WFName", SqlDbType.VarChar).Value = workflow_name;

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataTable dt_select_subject_Emp_name = new DataTable("select_subject_Emp_name");
            adapter.Fill(dt_select_subject_Emp_name);
            return dt_select_subject_Emp_name;
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }

        protected void ddlWorkflowName_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Selected workflow name
            String workflow_name_default = ddlWorkflowName.SelectedValue;
            // Response.Write(workflow_name_default);


            //Calling a method and storing into DataTable
            DataTable dt_select_subject_Emp_name = Taskform_Filter_Load_Data(workflow_name_default);


            //Binding into dropdown list
            //ddlSubjectEmployee.DataSource = dt_select_subject_Emp_name;
            //ddlSubjectEmployee.DataTextField = "Name";
            //    ddlSubjectEmployee.DataBind();

            ddlSubjectEmployee.DataSource = dt_select_subject_Emp_name;
            ddlSubjectEmployee.DataTextField = "Name";
            ddlSubjectEmployee.DataBind();








        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            String workflow_name_default = ddlWorkflowName.SelectedValue;
            // String workflow_status = ddlWorkflowStatus.SelectedValue;
            String subject_emp_name = ddlSubjectEmployee.SelectedValue;
            String RBSelect = cbReport1.ToString();

            WorkflowReportDTO workflow_reportDTO = new WorkflowReportDTO();

            WorkflowsService workflowsService = new WorkflowsService();

            workflowsService.Workflow_Report(workflow_name_default, subject_emp_name, RBSelect);


            DateTime d = new DateTime();
            // workflow_reportDTO.
            String created = workflow_reportDTO.Created;
            String createdby = workflow_reportDTO.Created_By;
            String subject_Employee_Id = workflow_reportDTO.Subject_Employee_Id;
            String from_Employee_Name = workflow_reportDTO.From_Employee_Name;
            String employee_To = workflow_reportDTO.Escalate_To;
            String employeecc = workflow_reportDTO.Employee_CC;
            String employeebcc = workflow_reportDTO.Employee_BCC;
            String subject = workflow_reportDTO.Subject;
            String messagebox = workflow_reportDTO.Message_Box;
            String escalateTo = workflow_reportDTO.Escalate_To;
            String escalateAfter = workflow_reportDTO.Escalate_After;
            String signoff = workflow_reportDTO.Sign_Off;
            String cancelBy = workflow_reportDTO.Cancel_By;
            String step_Screen_id = workflow_reportDTO.Step_Screen_Id;
            String escalateTimestamp = workflow_reportDTO.Escalate_Timestamp;
            String signOffTimestamp = workflow_reportDTO.Signoff_Timestamp;
            String cancelTimestamp = workflow_reportDTO.Cancel_Timestamp;



            // String s = cmd.CommandText;

            //Printing PDF file
            try
            {
                Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);
                PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();

                pdfWriter.CloseStream = false;




                var titleFont = FontFactory.GetFont("Arial", 18, Font.BOLD);
                var subTitleFont = FontFactory.GetFont("Arial", 14, Font.BOLD);
                var boldTableFont = FontFactory.GetFont("Arial", 12, Font.BOLD);
                var endingMessageFont = FontFactory.GetFont("Arial", 10, Font.ITALIC);
                var bodyFont = FontFactory.GetFont("Arial", 12, Font.NORMAL);


                ////Logo Header
                var logo = iTextSharp.text.Image.GetInstance(Server.MapPath("Images/logo.gif"));
                logo.SetAbsolutePosition(0, 800);
                pdfDoc.Add(logo);





                // Read in the contents of the Receipt.htm file...
                string contents = File.ReadAllText(Server.MapPath("~/HTMLTemplate/Report.htm"));

                // Replace the placeholders with the user-specified text

                //contents = contents.Replace("[TOTALPRICE]", Convert.ToDecimal(txtTotalPrice.Text).ToString("c"));
                //contents = contents.Replace("[ORDERDATE]", DateTime.Now.ToShortDateString());



                contents = contents.Replace("[workflowname]", workflow_name_default);
                contents = contents.Replace("[created]", created);
                //contents = contents.Replace("[workflowstatus]", );
                contents = contents.Replace("[createdby]", createdby);
                contents = contents.Replace("[subjectid]", subject_Employee_Id);
                contents = contents.Replace("[stepname]", step_Screen_id);
                //contents = contents.Replace("[lastupdated]", );
                //contents = contents.Replace("[stepstatus]", );
                //contents = contents.Replace("[updatedby]", );
                //contents = contents.Replace("[tasknumber]", );
                contents = contents.Replace("[messagefrom]", from_Employee_Name);
                contents = contents.Replace("[messageto]", employee_To);
                contents = contents.Replace("[messagecc]", employeecc);
                contents = contents.Replace("[messagebcc]", employeebcc);
                contents = contents.Replace("[messagesubject]", subject);
                //contents = contents.Replace("[taskform]", );
                //contents = contents.Replace("[taskformstatus]", );
                contents = contents.Replace("[escalateto]", escalateTo);
                contents = contents.Replace("[signoff]", signoff);
                contents = contents.Replace("[cancel]", cancelBy);
                contents = contents.Replace("[MessageBox]", messagebox);
                contents = contents.Replace("[EscalateAfter]", escalateAfter);
                contents = contents.Replace("[EscalateTimestamp]", escalateTimestamp);
                contents = contents.Replace("[SignoffTimestamp]", signOffTimestamp);
                contents = contents.Replace("[CancelTimestamp]", cancelTimestamp);



                // Step 4: Parse the HTML string into a collection of elements...
                var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(contents), null);

                // Enumerate the elements, adding each one to the Document...
                foreach (var htmlElement in parsedHtmlElements)
                    pdfDoc.Add(htmlElement as IElement);


                pdfDoc.Close();
                Response.Buffer = true;
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Report.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); }
        }



    }



}